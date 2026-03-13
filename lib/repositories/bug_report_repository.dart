import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/bug_report.dart';
import '../providers/api_client_provider.dart';
import '../services/api/api_exceptions.dart';

part 'bug_report_repository.g.dart';

/// Provider for the bug report repository.
@Riverpod(keepAlive: true)
BugReportRepository bugReportRepository(BugReportRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  return BugReportRepository(dio);
}

/// Repository for bug report operations.
class BugReportRepository {
  BugReportRepository(this._dio);

  final Dio _dio;

  /// Submit a bug report.
  Future<void> submitBugReport(BugReportRequest request) async {
    try {
      await _dio.post(
        '/bug-reports',
        data: request.toJson(),
      );
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Get current user's bug reports.
  Future<List<BugReport>> getMyReports({
    int page = 1,
    int pageSize = 10,
    String? status,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'page': page,
        'page_size': pageSize,
      };
      if (status != null) {
        queryParams['status'] = status;
      }

      final response = await _dio.get(
        '/bug-reports/my-reports',
        queryParameters: queryParams,
      );

      final data = response.data as Map<String, dynamic>;
      final items = data['items'] as List;
      return items
          .map((e) => BugReport.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Get a specific bug report detail.
  Future<BugReport> getBugDetail(int bugId) async {
    try {
      final response = await _dio.get('/bug-reports/$bugId');
      return BugReport.fromJson(response.data as Map<String, dynamic>);
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
        return const UnauthorizedException('Please login to continue.');
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
