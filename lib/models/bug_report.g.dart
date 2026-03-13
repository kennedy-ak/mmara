// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bug_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BugReportImpl _$$BugReportImplFromJson(Map<String, dynamic> json) =>
    _$BugReportImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      bugType: json['bug_type'] as String,
      severity: json['severity'] as String,
      stepsToReproduce: json['steps_to_reproduce'] as String?,
      expectedBehavior: json['expected_behavior'] as String?,
      actualBehavior: json['actual_behavior'] as String?,
      deviceInfo: json['device_info'] as String?,
      appVersion: json['app_version'] as String?,
      status: json['status'] as String,
      userId: (json['user_id'] as num?)?.toInt(),
      userEmail: json['user_email'] as String?,
      userName: json['user_name'] as String?,
      assignedTo: (json['assigned_to'] as num?)?.toInt(),
      assigneeName: json['assignee_name'] as String?,
      resolutionNotes: json['resolution_notes'] as String?,
      adminRespondedAt: json['admin_responded_at'] == null
          ? null
          : DateTime.parse(json['admin_responded_at'] as String),
      adminRespondedBy: (json['admin_responded_by'] as num?)?.toInt(),
      adminRespondedByName: json['admin_responded_by_name'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$BugReportImplToJson(_$BugReportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'bug_type': instance.bugType,
      'severity': instance.severity,
      'steps_to_reproduce': instance.stepsToReproduce,
      'expected_behavior': instance.expectedBehavior,
      'actual_behavior': instance.actualBehavior,
      'device_info': instance.deviceInfo,
      'app_version': instance.appVersion,
      'status': instance.status,
      'user_id': instance.userId,
      'user_email': instance.userEmail,
      'user_name': instance.userName,
      'assigned_to': instance.assignedTo,
      'assignee_name': instance.assigneeName,
      'resolution_notes': instance.resolutionNotes,
      'admin_responded_at': instance.adminRespondedAt?.toIso8601String(),
      'admin_responded_by': instance.adminRespondedBy,
      'admin_responded_by_name': instance.adminRespondedByName,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$BugReportListResponseImpl _$$BugReportListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$BugReportListResponseImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => BugReport.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  pageSize: (json['page_size'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
);

Map<String, dynamic> _$$BugReportListResponseImplToJson(
  _$BugReportListResponseImpl instance,
) => <String, dynamic>{
  'items': instance.items,
  'total': instance.total,
  'page': instance.page,
  'page_size': instance.pageSize,
  'total_pages': instance.totalPages,
};

_$BugReportRequestImpl _$$BugReportRequestImplFromJson(
  Map<String, dynamic> json,
) => _$BugReportRequestImpl(
  title: json['title'] as String,
  description: json['description'] as String,
  bugType: json['bug_type'] as String,
  severity: json['severity'] as String,
  stepsToReproduce: json['steps_to_reproduce'] as String?,
  expectedBehavior: json['expected_behavior'] as String?,
  actualBehavior: json['actual_behavior'] as String?,
  deviceInfo: json['device_info'] as String?,
  appVersion: json['app_version'] as String?,
);

Map<String, dynamic> _$$BugReportRequestImplToJson(
  _$BugReportRequestImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'bug_type': instance.bugType,
  'severity': instance.severity,
  'steps_to_reproduce': instance.stepsToReproduce,
  'expected_behavior': instance.expectedBehavior,
  'actual_behavior': instance.actualBehavior,
  'device_info': instance.deviceInfo,
  'app_version': instance.appVersion,
};
