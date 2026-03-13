import 'dart:async';
import 'package:dio/dio.dart';
import '../secure_storage_service.dart';
import 'api_exceptions.dart';

/// Interceptor that attaches auth tokens and handles 401 refresh.
class AuthInterceptor extends Interceptor {
  AuthInterceptor({
    required SecureStorageService storage,
    required Future<String?> Function() onRefresh,
  })  : _storage = storage,
        _onRefresh = onRefresh;

  final SecureStorageService _storage;
  final Future<String?> Function() _onRefresh;

  /// Lock to prevent concurrent refresh attempts.
  final _refreshLock = _RefreshLock();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Add Bearer token if available
    final token = await _storage.getAccessToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    // Handle 401 Unauthorized with token refresh
    if (err.response?.statusCode == 401) {
      // Check if this request already has a retry flag
      final retries = err.requestOptions.extra['retries'] as int? ?? 0;

      if (retries < 1) {
        // Try to refresh the token
        final newToken = await _refreshWithLock();

        if (newToken != null) {
          // Retry the original request with new token
          return handler.resolve(
            await _retry(err.requestOptions, newToken),
          );
        }
      }

      // Refresh failed or max retries reached
      // Clear tokens and emit unauthorized
      await _storage.clearTokens();
      return handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: const UnauthorizedException('Session expired. Please log in again.'),
          response: err.response,
          type: err.type,
        ),
      );
    }

    handler.next(err);
  }

  /// Refresh token with lock to prevent concurrent refresh attempts.
  Future<String?> _refreshWithLock() async {
    if (_refreshLock.isLocked) {
      // Wait for ongoing refresh
      return await _refreshLock.wait();
    }

    // Acquire lock and refresh
    _refreshLock.lock();
    try {
      final newToken = await _onRefresh();
      _refreshLock.complete(newToken);
      return newToken;
    } catch (_) {
      _refreshLock.complete(null);
      return null;
    }
  }

  /// Retry the original request with a new token.
  Future<Response> _retry(
    RequestOptions requestOptions,
    String newToken,
  ) async {
    final options = RequestOptions(
      path: requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      onReceiveProgress: requestOptions.onReceiveProgress,
      onSendProgress: requestOptions.onSendProgress,
      headers: {
        ...requestOptions.headers,
        'Authorization': 'Bearer $newToken',
      },
      extra: {
        ...requestOptions.extra,
        'retries': (requestOptions.extra['retries'] as int? ?? 0) + 1,
      },
      method: requestOptions.method,
      responseType: requestOptions.responseType,
      contentType: requestOptions.contentType,
      validateStatus: requestOptions.validateStatus,
      receiveTimeout: requestOptions.receiveTimeout,
      sendTimeout: requestOptions.sendTimeout,
    );

    final dio = Dio();
    return dio.fetch(options);
  }
}

/// Simple lock mechanism for preventing concurrent refresh attempts.
class _RefreshLock {
  bool _isLocked = false;
  String? _result;
  final _completer = Completer<String?>();

  bool get isLocked => _isLocked;

  void lock() {
    _isLocked = true;
    _result = null;
  }

  void complete(String? result) {
    _result = result;
    _isLocked = false;
    if (!_completer.isCompleted) {
      _completer.complete(result);
    }
  }

  Future<String?> wait() async {
    return _completer.future;
  }
}
