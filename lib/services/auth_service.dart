import 'package:dio/dio.dart';
import '../models/user.dart';
import '../models/token.dart';
import '../models/password_reset.dart';
import 'api/api_exceptions.dart';

/// Authentication service for handling auth-related API calls.
class AuthService {
  AuthService(this._dio);

  final Dio _dio;

  /// Register a new user.
  Future<User> register(UserCreate request) async {
    try {
      final response = await _dio.post(
        '/auth/register',
        data: request.toJson(),
      );
      return User.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Login with email and password using JSON endpoint.
  Future<Token> loginWithEmail(UserLogin request) async {
    try {
      final response = await _dio.post(
        '/auth/login/json',
        data: request.toJson(),
      );
      return Token.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Login with OAuth2 form data format.
  Future<Token> login({
    required String username, // Email
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        '/auth/login',
        data: {
          'grant_type': 'password',
          'username': username,
          'password': password,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
      );
      return Token.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Refresh access token using refresh token.
  /// Sends token in request body (not query params) for better security.
  Future<Token> refreshToken(String refreshToken) async {
    try {
      final response = await _dio.post(
        '/auth/refresh',
        data: {
          'refresh_token': refreshToken,
        },
      );
      return Token.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Logout (client-side token clearing).
  Future<void> logout() async {
    try {
      await _dio.post('/auth/logout');
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Get current user info.
  Future<User> getCurrentUser() async {
    try {
      final response = await _dio.get('/auth/me');
      return User.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Request password reset email.
  Future<PasswordResetResponse> requestPasswordReset(
    PasswordResetRequest request,
  ) async {
    try {
      final response = await _dio.post(
        '/auth/password-reset/request',
        data: request.toJson(),
      );
      return PasswordResetResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Confirm password reset with token.
  Future<PasswordResetResponse> confirmPasswordReset(
    PasswordResetConfirm request,
  ) async {
    try {
      final response = await _dio.post(
        '/auth/password-reset/confirm',
        data: request.toJson(),
      );
      return PasswordResetResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Change password for authenticated user.
  Future<PasswordResetResponse> changePassword(
    ChangePasswordRequest request,
  ) async {
    try {
      final response = await _dio.post(
        '/auth/change-password',
        data: request.toJson(),
      );
      return PasswordResetResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  ApiException _handleException(DioException e) {
    final statusCode = e.response?.statusCode;

    switch (statusCode) {
      case 400:
        return BadRequestException(
          e.response?.data?['detail']?.toString() ?? 'Invalid request.',
        );
      case 401:
        return const UnauthorizedException('Invalid email or password.');
      case 403:
        return const ForbiddenException();
      case 404:
        return const NotFoundException();
      case 422:
        final detail = e.response?.data?['detail'];
        if (detail is List && detail.isNotEmpty) {
          final errors = detail.map((e) => e.toString()).join(', ');
          return ValidationException(errors);
        }
        return ValidationException(
          e.response?.data?['detail']?.toString() ?? 'Validation failed.',
        );
      case 500:
      case 502:
      case 503:
      case 504:
        return const ServerException();
      default:
        if (e.type == DioExceptionType.connectionTimeout ||
            e.type == DioExceptionType.sendTimeout ||
            e.type == DioExceptionType.receiveTimeout) {
          return const TimeoutException();
        }
        if (e.type == DioExceptionType.connectionError) {
          return const NetworkException();
        }
        return UnknownException(e.message ?? 'An unknown error occurred.');
    }
  }
}
