import 'package:dio/dio.dart';
import '../models/user.dart';
import '../models/user_stats.dart';
import '../models/password_reset.dart';
import 'api/api_exceptions.dart';

/// User service for handling user-related API calls.
class UserService {
  UserService(this._dio);

  final Dio _dio;

  /// Get current user profile.
  /// Uses /auth/me endpoint which returns User data.
  Future<User> getProfile() async {
    try {
      final response = await _dio.get('/auth/me');
      return User.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Update current user profile.
  Future<User> updateProfile(UserUpdate request) async {
    try {
      // FastAPI generates args/kwargs in spec - pass empty values
      final response = await _dio.put(
        '/users/me',
        data: request.toJson(),
        queryParameters: {'args': '', 'kwargs': ''},
      );
      return User.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Get user statistics.
  Future<UserStats> getStats() async {
    try {
      // FastAPI generates args/kwargs in spec - pass empty values
      final response = await _dio.get(
        '/users/me/stats',
        queryParameters: {'args': '', 'kwargs': ''},
      );
      return UserStats.fromJson(response.data as Map<String, dynamic>);
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
        return const UnauthorizedException();
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
