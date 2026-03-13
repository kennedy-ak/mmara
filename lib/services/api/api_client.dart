import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'api_exceptions.dart';
import '../../config/app_config.dart';

/// HTTP client service using Dio.
class ApiClient {
  ApiClient({
    required AppConfig config,
    List<Interceptor>? interceptors,
  }) : _config = config {
    _dio = Dio(_baseOptions);
    _dio.options.baseUrl = _config.fullApiBaseUrl;

    // Add custom interceptors
    if (interceptors != null) {
      _dio.interceptors.addAll(interceptors);
    }

    // Add logging interceptor in debug mode only
    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
          requestHeader: false,
          responseHeader: false,
          error: true,
          logPrint: (obj) => _redactedLogPrint(obj),
        ),
      );
    }
  }

  /// Redact sensitive data from logs before printing.
  void _redactedLogPrint(Object obj) {
    String logStr = obj.toString();

    // Redact common sensitive fields
    final sensitivePatterns = [
      RegExp(r'"password"\s*:\s*"[^"]*"', caseSensitive: false),
      RegExp(r'"token"\s*:\s*"[^"]*"', caseSensitive: false),
      RegExp(r'"access_token"\s*:\s*"[^"]*"', caseSensitive: false),
      RegExp(r'"refresh_token"\s*:\s*"[^"]*"', caseSensitive: false),
      RegExp(r'Bearer [A-Za-z0-9\-._~+/]+=*', caseSensitive: false),
    ];

    for (final pattern in sensitivePatterns) {
      logStr = logStr.replaceAll(pattern, _redactValue(pattern.pattern));
    }

    print('[API] $logStr');
  }

  String _redactValue(String pattern) {
    if (pattern.contains('password')) return '"password": "***"';
    if (pattern.contains('token') || pattern.contains('Token')) return '"***"';
    return '***';
  }

  final AppConfig _config;
  late final Dio _dio;

  Dio get dio => _dio;

  static BaseOptions get _baseOptions => BaseOptions(
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      );

  /// Execute a GET request.
  Future<T> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  /// Execute a POST request.
  Future<T> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  /// Execute a PUT request.
  Future<T> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  /// Execute a PATCH request.
  Future<T> patch<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  /// Execute a DELETE request.
  Future<T> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  /// Convert DioException to appropriate ApiException.
  ApiException _handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const TimeoutException();

      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        final message = e.response?.data?['message'] as String?;
        switch (statusCode) {
          case 400:
            return BadRequestException(message ?? 'Invalid request.');
          case 401:
            return const UnauthorizedException();
          case 403:
            return const ForbiddenException();
          case 404:
            return const NotFoundException();
          case 409:
            return ConflictException(message ?? 'Resource conflict.');
          case 422:
            return ValidationException(message ?? 'Validation failed.');
          case 500:
          case 502:
          case 503:
          case 504:
            return const ServerException();
          default:
            return ServerException(message ?? 'Server error ($statusCode)');
        }

      case DioExceptionType.cancel:
        return const UnknownException('Request was cancelled.');

      case DioExceptionType.connectionError:
        return const NetworkException();

      case DioExceptionType.unknown:
      default:
        if (e.message?.contains('SocketException') ?? false) {
          return const NetworkException();
        }
        return UnknownException(e.message ?? 'An unknown error occurred.');
    }
  }
}
