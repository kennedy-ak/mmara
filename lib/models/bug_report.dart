import 'package:freezed_annotation/freezed_annotation.dart';

part 'bug_report.freezed.dart';
part 'bug_report.g.dart';

/// Bug report model for API responses.
@freezed
class BugReport with _$BugReport {
  const factory BugReport({
    required int id,
    required String title,
    required String description,
    @JsonKey(name: 'bug_type') required String bugType,
    required String severity,
    @JsonKey(name: 'steps_to_reproduce') String? stepsToReproduce,
    @JsonKey(name: 'expected_behavior') String? expectedBehavior,
    @JsonKey(name: 'actual_behavior') String? actualBehavior,
    @JsonKey(name: 'device_info') String? deviceInfo,
    @JsonKey(name: 'app_version') String? appVersion,
    required String status,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'user_email') String? userEmail,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'assigned_to') int? assignedTo,
    @JsonKey(name: 'assignee_name') String? assigneeName,
    @JsonKey(name: 'resolution_notes') String? resolutionNotes,
    @JsonKey(name: 'admin_responded_at') DateTime? adminRespondedAt,
    @JsonKey(name: 'admin_responded_by') int? adminRespondedBy,
    @JsonKey(name: 'admin_responded_by_name') String? adminRespondedByName,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _BugReport;

  factory BugReport.fromJson(Map<String, dynamic> json) =>
      _$BugReportFromJson(json);
}

/// Bug report list response.
@freezed
class BugReportListResponse with _$BugReportListResponse {
  const factory BugReportListResponse({
    required List<BugReport> items,
    required int total,
    required int page,
    @JsonKey(name: 'page_size') required int pageSize,
    @JsonKey(name: 'total_pages') required int totalPages,
  }) = _BugReportListResponse;

  factory BugReportListResponse.fromJson(Map<String, dynamic> json) =>
      _$BugReportListResponseFromJson(json);
}

/// Bug report request model for submitting a bug report.
@freezed
class BugReportRequest with _$BugReportRequest {
  const factory BugReportRequest({
    required String title,
    required String description,
    @JsonKey(name: 'bug_type') required String bugType,
    required String severity,
    @JsonKey(name: 'steps_to_reproduce') String? stepsToReproduce,
    @JsonKey(name: 'expected_behavior') String? expectedBehavior,
    @JsonKey(name: 'actual_behavior') String? actualBehavior,
    @JsonKey(name: 'device_info') String? deviceInfo,
    @JsonKey(name: 'app_version') String? appVersion,
  }) = _BugReportRequest;

  factory BugReportRequest.fromJson(Map<String, dynamic> json) =>
      _$BugReportRequestFromJson(json);
}

/// Bug type enum.
enum BugType {
  ui('ui', 'UI/Design', 'User interface issues'),
  api('api', 'API/Connection', 'Backend or network issues'),
  performance('performance', 'Performance', 'Speed or responsiveness'),
  accuracy('accuracy', 'Response Accuracy', 'AI response quality'),
  other('other', 'Other', 'Other issues');

  const BugType(this.value, this.label, this.description);

  final String value;
  final String label;
  final String description;

  static BugType fromValue(String value) {
    return BugType.values.firstWhere(
      (type) => type.value == value,
      orElse: () => BugType.other,
    );
  }
}

/// Bug severity enum.
enum BugSeverity {
  low('low', 'Low', 'Minor issue'),
  medium('medium', 'Medium', 'Moderate impact'),
  high('high', 'High', 'Significant impact'),
  critical('critical', 'Critical', 'Blocking/critical issue');

  const BugSeverity(this.value, this.label, this.description);

  final String value;
  final String label;
  final String description;

  static BugSeverity fromValue(String value) {
    return BugSeverity.values.firstWhere(
      (severity) => severity.value == value,
      orElse: () => BugSeverity.medium,
    );
  }
}

/// Bug status enum.
enum BugStatus {
  open('open', 'Open'),
  inProgress('in_progress', 'In Progress'),
  resolved('resolved', 'Resolved'),
  closed('closed', 'Closed');

  const BugStatus(this.value, this.label);

  final String value;
  final String label;

  static BugStatus fromValue(String value) {
    return BugStatus.values.firstWhere(
      (status) => status.value == value,
      orElse: () => BugStatus.open,
    );
  }
}
