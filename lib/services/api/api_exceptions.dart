/// Exception thrown when API request fails.
sealed class ApiException implements Exception {
  const ApiException(this.message, [this.statusCode]);

  final String message;
  final int? statusCode;

  @override
  String toString() => message;
}

/// Exception for 401 Unauthorized responses.
class UnauthorizedException extends ApiException {
  const UnauthorizedException([String message = 'Unauthorized. Please log in.'])
      : super(message, 401);
}

/// Exception for 404 Not Found responses.
class NotFoundException extends ApiException {
  const NotFoundException([String message = 'Resource not found.'])
      : super(message, 404);
}

/// Exception for 400 Bad Request responses.
class BadRequestException extends ApiException {
  const BadRequestException([String message = 'Invalid request.'])
      : super(message, 400);
}

/// Exception for 403 Forbidden responses.
class ForbiddenException extends ApiException {
  const ForbiddenException([String message = 'Access forbidden.'])
      : super(message, 403);
}

/// Exception for 409 Conflict responses.
class ConflictException extends ApiException {
  const ConflictException([String message = 'Resource conflict.'])
      : super(message, 409);
}

/// Exception for 422 Validation Error responses.
class ValidationException extends ApiException {
  const ValidationException([String message = 'Validation failed.'])
      : super(message, 422);
}

/// Exception for 5xx Server Error responses.
class ServerException extends ApiException {
  const ServerException([String message = 'Server error. Please try again later.'])
      : super(message, 500);
}

/// Exception for network connectivity issues.
class NetworkException extends ApiException {
  const NetworkException([String message = 'Network error. Please check your connection.'])
      : super(message, null);
}

/// Exception for request timeouts.
class TimeoutException extends ApiException {
  const TimeoutException([String message = 'Request timed out. Please try again.'])
      : super(message, null);
}

/// Exception for unknown errors.
class UnknownException extends ApiException {
  const UnknownException([String message = 'An unknown error occurred.'])
      : super(message, null);
}
