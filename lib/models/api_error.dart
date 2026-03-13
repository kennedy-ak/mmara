import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';
part 'api_error.g.dart';

/// Unified API error response model.
@freezed
class ApiError with _$ApiError {
  const factory ApiError({
    required String detail,
    int? status,
    String? code,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
}

/// HTTP Validation Error from FastAPI.
@freezed
class HTTPValidationError with _$HTTPValidationError {
  const factory HTTPValidationError({
    required List<ValidationError> detail,
  }) = _HTTPValidationError;

  factory HTTPValidationError.fromJson(Map<String, dynamic> json) =>
      _$HTTPValidationErrorFromJson(json);
}

/// Single validation error detail.
@freezed
class ValidationError with _$ValidationError {
  const factory ValidationError({
    required List<dynamic> loc,
    required String msg,
    required String type,
    dynamic input,
    Map<String, dynamic>? ctx,
  }) = _ValidationError;

  factory ValidationError.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorFromJson(json);
}
