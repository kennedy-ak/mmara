// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bug_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BugReport _$BugReportFromJson(Map<String, dynamic> json) {
  return _BugReport.fromJson(json);
}

/// @nodoc
mixin _$BugReport {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'bug_type')
  String get bugType => throw _privateConstructorUsedError;
  String get severity => throw _privateConstructorUsedError;
  @JsonKey(name: 'steps_to_reproduce')
  String? get stepsToReproduce => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_behavior')
  String? get expectedBehavior => throw _privateConstructorUsedError;
  @JsonKey(name: 'actual_behavior')
  String? get actualBehavior => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_info')
  String? get deviceInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_version')
  String? get appVersion => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_email')
  String? get userEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'assigned_to')
  int? get assignedTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'assignee_name')
  String? get assigneeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'resolution_notes')
  String? get resolutionNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_responded_at')
  DateTime? get adminRespondedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_responded_by')
  int? get adminRespondedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_responded_by_name')
  String? get adminRespondedByName => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this BugReport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BugReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BugReportCopyWith<BugReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BugReportCopyWith<$Res> {
  factory $BugReportCopyWith(BugReport value, $Res Function(BugReport) then) =
      _$BugReportCopyWithImpl<$Res, BugReport>;
  @useResult
  $Res call({
    int id,
    String title,
    String description,
    @JsonKey(name: 'bug_type') String bugType,
    String severity,
    @JsonKey(name: 'steps_to_reproduce') String? stepsToReproduce,
    @JsonKey(name: 'expected_behavior') String? expectedBehavior,
    @JsonKey(name: 'actual_behavior') String? actualBehavior,
    @JsonKey(name: 'device_info') String? deviceInfo,
    @JsonKey(name: 'app_version') String? appVersion,
    String status,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'user_email') String? userEmail,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'assigned_to') int? assignedTo,
    @JsonKey(name: 'assignee_name') String? assigneeName,
    @JsonKey(name: 'resolution_notes') String? resolutionNotes,
    @JsonKey(name: 'admin_responded_at') DateTime? adminRespondedAt,
    @JsonKey(name: 'admin_responded_by') int? adminRespondedBy,
    @JsonKey(name: 'admin_responded_by_name') String? adminRespondedByName,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });
}

/// @nodoc
class _$BugReportCopyWithImpl<$Res, $Val extends BugReport>
    implements $BugReportCopyWith<$Res> {
  _$BugReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BugReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? bugType = null,
    Object? severity = null,
    Object? stepsToReproduce = freezed,
    Object? expectedBehavior = freezed,
    Object? actualBehavior = freezed,
    Object? deviceInfo = freezed,
    Object? appVersion = freezed,
    Object? status = null,
    Object? userId = freezed,
    Object? userEmail = freezed,
    Object? userName = freezed,
    Object? assignedTo = freezed,
    Object? assigneeName = freezed,
    Object? resolutionNotes = freezed,
    Object? adminRespondedAt = freezed,
    Object? adminRespondedBy = freezed,
    Object? adminRespondedByName = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            bugType: null == bugType
                ? _value.bugType
                : bugType // ignore: cast_nullable_to_non_nullable
                      as String,
            severity: null == severity
                ? _value.severity
                : severity // ignore: cast_nullable_to_non_nullable
                      as String,
            stepsToReproduce: freezed == stepsToReproduce
                ? _value.stepsToReproduce
                : stepsToReproduce // ignore: cast_nullable_to_non_nullable
                      as String?,
            expectedBehavior: freezed == expectedBehavior
                ? _value.expectedBehavior
                : expectedBehavior // ignore: cast_nullable_to_non_nullable
                      as String?,
            actualBehavior: freezed == actualBehavior
                ? _value.actualBehavior
                : actualBehavior // ignore: cast_nullable_to_non_nullable
                      as String?,
            deviceInfo: freezed == deviceInfo
                ? _value.deviceInfo
                : deviceInfo // ignore: cast_nullable_to_non_nullable
                      as String?,
            appVersion: freezed == appVersion
                ? _value.appVersion
                : appVersion // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int?,
            userEmail: freezed == userEmail
                ? _value.userEmail
                : userEmail // ignore: cast_nullable_to_non_nullable
                      as String?,
            userName: freezed == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                      as String?,
            assignedTo: freezed == assignedTo
                ? _value.assignedTo
                : assignedTo // ignore: cast_nullable_to_non_nullable
                      as int?,
            assigneeName: freezed == assigneeName
                ? _value.assigneeName
                : assigneeName // ignore: cast_nullable_to_non_nullable
                      as String?,
            resolutionNotes: freezed == resolutionNotes
                ? _value.resolutionNotes
                : resolutionNotes // ignore: cast_nullable_to_non_nullable
                      as String?,
            adminRespondedAt: freezed == adminRespondedAt
                ? _value.adminRespondedAt
                : adminRespondedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            adminRespondedBy: freezed == adminRespondedBy
                ? _value.adminRespondedBy
                : adminRespondedBy // ignore: cast_nullable_to_non_nullable
                      as int?,
            adminRespondedByName: freezed == adminRespondedByName
                ? _value.adminRespondedByName
                : adminRespondedByName // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BugReportImplCopyWith<$Res>
    implements $BugReportCopyWith<$Res> {
  factory _$$BugReportImplCopyWith(
    _$BugReportImpl value,
    $Res Function(_$BugReportImpl) then,
  ) = __$$BugReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String description,
    @JsonKey(name: 'bug_type') String bugType,
    String severity,
    @JsonKey(name: 'steps_to_reproduce') String? stepsToReproduce,
    @JsonKey(name: 'expected_behavior') String? expectedBehavior,
    @JsonKey(name: 'actual_behavior') String? actualBehavior,
    @JsonKey(name: 'device_info') String? deviceInfo,
    @JsonKey(name: 'app_version') String? appVersion,
    String status,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'user_email') String? userEmail,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'assigned_to') int? assignedTo,
    @JsonKey(name: 'assignee_name') String? assigneeName,
    @JsonKey(name: 'resolution_notes') String? resolutionNotes,
    @JsonKey(name: 'admin_responded_at') DateTime? adminRespondedAt,
    @JsonKey(name: 'admin_responded_by') int? adminRespondedBy,
    @JsonKey(name: 'admin_responded_by_name') String? adminRespondedByName,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });
}

/// @nodoc
class __$$BugReportImplCopyWithImpl<$Res>
    extends _$BugReportCopyWithImpl<$Res, _$BugReportImpl>
    implements _$$BugReportImplCopyWith<$Res> {
  __$$BugReportImplCopyWithImpl(
    _$BugReportImpl _value,
    $Res Function(_$BugReportImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BugReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? bugType = null,
    Object? severity = null,
    Object? stepsToReproduce = freezed,
    Object? expectedBehavior = freezed,
    Object? actualBehavior = freezed,
    Object? deviceInfo = freezed,
    Object? appVersion = freezed,
    Object? status = null,
    Object? userId = freezed,
    Object? userEmail = freezed,
    Object? userName = freezed,
    Object? assignedTo = freezed,
    Object? assigneeName = freezed,
    Object? resolutionNotes = freezed,
    Object? adminRespondedAt = freezed,
    Object? adminRespondedBy = freezed,
    Object? adminRespondedByName = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$BugReportImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        bugType: null == bugType
            ? _value.bugType
            : bugType // ignore: cast_nullable_to_non_nullable
                  as String,
        severity: null == severity
            ? _value.severity
            : severity // ignore: cast_nullable_to_non_nullable
                  as String,
        stepsToReproduce: freezed == stepsToReproduce
            ? _value.stepsToReproduce
            : stepsToReproduce // ignore: cast_nullable_to_non_nullable
                  as String?,
        expectedBehavior: freezed == expectedBehavior
            ? _value.expectedBehavior
            : expectedBehavior // ignore: cast_nullable_to_non_nullable
                  as String?,
        actualBehavior: freezed == actualBehavior
            ? _value.actualBehavior
            : actualBehavior // ignore: cast_nullable_to_non_nullable
                  as String?,
        deviceInfo: freezed == deviceInfo
            ? _value.deviceInfo
            : deviceInfo // ignore: cast_nullable_to_non_nullable
                  as String?,
        appVersion: freezed == appVersion
            ? _value.appVersion
            : appVersion // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        userEmail: freezed == userEmail
            ? _value.userEmail
            : userEmail // ignore: cast_nullable_to_non_nullable
                  as String?,
        userName: freezed == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                  as String?,
        assignedTo: freezed == assignedTo
            ? _value.assignedTo
            : assignedTo // ignore: cast_nullable_to_non_nullable
                  as int?,
        assigneeName: freezed == assigneeName
            ? _value.assigneeName
            : assigneeName // ignore: cast_nullable_to_non_nullable
                  as String?,
        resolutionNotes: freezed == resolutionNotes
            ? _value.resolutionNotes
            : resolutionNotes // ignore: cast_nullable_to_non_nullable
                  as String?,
        adminRespondedAt: freezed == adminRespondedAt
            ? _value.adminRespondedAt
            : adminRespondedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        adminRespondedBy: freezed == adminRespondedBy
            ? _value.adminRespondedBy
            : adminRespondedBy // ignore: cast_nullable_to_non_nullable
                  as int?,
        adminRespondedByName: freezed == adminRespondedByName
            ? _value.adminRespondedByName
            : adminRespondedByName // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BugReportImpl implements _BugReport {
  const _$BugReportImpl({
    required this.id,
    required this.title,
    required this.description,
    @JsonKey(name: 'bug_type') required this.bugType,
    required this.severity,
    @JsonKey(name: 'steps_to_reproduce') this.stepsToReproduce,
    @JsonKey(name: 'expected_behavior') this.expectedBehavior,
    @JsonKey(name: 'actual_behavior') this.actualBehavior,
    @JsonKey(name: 'device_info') this.deviceInfo,
    @JsonKey(name: 'app_version') this.appVersion,
    required this.status,
    @JsonKey(name: 'user_id') this.userId,
    @JsonKey(name: 'user_email') this.userEmail,
    @JsonKey(name: 'user_name') this.userName,
    @JsonKey(name: 'assigned_to') this.assignedTo,
    @JsonKey(name: 'assignee_name') this.assigneeName,
    @JsonKey(name: 'resolution_notes') this.resolutionNotes,
    @JsonKey(name: 'admin_responded_at') this.adminRespondedAt,
    @JsonKey(name: 'admin_responded_by') this.adminRespondedBy,
    @JsonKey(name: 'admin_responded_by_name') this.adminRespondedByName,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
  });

  factory _$BugReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$BugReportImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'bug_type')
  final String bugType;
  @override
  final String severity;
  @override
  @JsonKey(name: 'steps_to_reproduce')
  final String? stepsToReproduce;
  @override
  @JsonKey(name: 'expected_behavior')
  final String? expectedBehavior;
  @override
  @JsonKey(name: 'actual_behavior')
  final String? actualBehavior;
  @override
  @JsonKey(name: 'device_info')
  final String? deviceInfo;
  @override
  @JsonKey(name: 'app_version')
  final String? appVersion;
  @override
  final String status;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'user_email')
  final String? userEmail;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'assigned_to')
  final int? assignedTo;
  @override
  @JsonKey(name: 'assignee_name')
  final String? assigneeName;
  @override
  @JsonKey(name: 'resolution_notes')
  final String? resolutionNotes;
  @override
  @JsonKey(name: 'admin_responded_at')
  final DateTime? adminRespondedAt;
  @override
  @JsonKey(name: 'admin_responded_by')
  final int? adminRespondedBy;
  @override
  @JsonKey(name: 'admin_responded_by_name')
  final String? adminRespondedByName;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'BugReport(id: $id, title: $title, description: $description, bugType: $bugType, severity: $severity, stepsToReproduce: $stepsToReproduce, expectedBehavior: $expectedBehavior, actualBehavior: $actualBehavior, deviceInfo: $deviceInfo, appVersion: $appVersion, status: $status, userId: $userId, userEmail: $userEmail, userName: $userName, assignedTo: $assignedTo, assigneeName: $assigneeName, resolutionNotes: $resolutionNotes, adminRespondedAt: $adminRespondedAt, adminRespondedBy: $adminRespondedBy, adminRespondedByName: $adminRespondedByName, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BugReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bugType, bugType) || other.bugType == bugType) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.stepsToReproduce, stepsToReproduce) ||
                other.stepsToReproduce == stepsToReproduce) &&
            (identical(other.expectedBehavior, expectedBehavior) ||
                other.expectedBehavior == expectedBehavior) &&
            (identical(other.actualBehavior, actualBehavior) ||
                other.actualBehavior == actualBehavior) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.assignedTo, assignedTo) ||
                other.assignedTo == assignedTo) &&
            (identical(other.assigneeName, assigneeName) ||
                other.assigneeName == assigneeName) &&
            (identical(other.resolutionNotes, resolutionNotes) ||
                other.resolutionNotes == resolutionNotes) &&
            (identical(other.adminRespondedAt, adminRespondedAt) ||
                other.adminRespondedAt == adminRespondedAt) &&
            (identical(other.adminRespondedBy, adminRespondedBy) ||
                other.adminRespondedBy == adminRespondedBy) &&
            (identical(other.adminRespondedByName, adminRespondedByName) ||
                other.adminRespondedByName == adminRespondedByName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    title,
    description,
    bugType,
    severity,
    stepsToReproduce,
    expectedBehavior,
    actualBehavior,
    deviceInfo,
    appVersion,
    status,
    userId,
    userEmail,
    userName,
    assignedTo,
    assigneeName,
    resolutionNotes,
    adminRespondedAt,
    adminRespondedBy,
    adminRespondedByName,
    createdAt,
    updatedAt,
  ]);

  /// Create a copy of BugReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BugReportImplCopyWith<_$BugReportImpl> get copyWith =>
      __$$BugReportImplCopyWithImpl<_$BugReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BugReportImplToJson(this);
  }
}

abstract class _BugReport implements BugReport {
  const factory _BugReport({
    required final int id,
    required final String title,
    required final String description,
    @JsonKey(name: 'bug_type') required final String bugType,
    required final String severity,
    @JsonKey(name: 'steps_to_reproduce') final String? stepsToReproduce,
    @JsonKey(name: 'expected_behavior') final String? expectedBehavior,
    @JsonKey(name: 'actual_behavior') final String? actualBehavior,
    @JsonKey(name: 'device_info') final String? deviceInfo,
    @JsonKey(name: 'app_version') final String? appVersion,
    required final String status,
    @JsonKey(name: 'user_id') final int? userId,
    @JsonKey(name: 'user_email') final String? userEmail,
    @JsonKey(name: 'user_name') final String? userName,
    @JsonKey(name: 'assigned_to') final int? assignedTo,
    @JsonKey(name: 'assignee_name') final String? assigneeName,
    @JsonKey(name: 'resolution_notes') final String? resolutionNotes,
    @JsonKey(name: 'admin_responded_at') final DateTime? adminRespondedAt,
    @JsonKey(name: 'admin_responded_by') final int? adminRespondedBy,
    @JsonKey(name: 'admin_responded_by_name')
    final String? adminRespondedByName,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
  }) = _$BugReportImpl;

  factory _BugReport.fromJson(Map<String, dynamic> json) =
      _$BugReportImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'bug_type')
  String get bugType;
  @override
  String get severity;
  @override
  @JsonKey(name: 'steps_to_reproduce')
  String? get stepsToReproduce;
  @override
  @JsonKey(name: 'expected_behavior')
  String? get expectedBehavior;
  @override
  @JsonKey(name: 'actual_behavior')
  String? get actualBehavior;
  @override
  @JsonKey(name: 'device_info')
  String? get deviceInfo;
  @override
  @JsonKey(name: 'app_version')
  String? get appVersion;
  @override
  String get status;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'user_email')
  String? get userEmail;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'assigned_to')
  int? get assignedTo;
  @override
  @JsonKey(name: 'assignee_name')
  String? get assigneeName;
  @override
  @JsonKey(name: 'resolution_notes')
  String? get resolutionNotes;
  @override
  @JsonKey(name: 'admin_responded_at')
  DateTime? get adminRespondedAt;
  @override
  @JsonKey(name: 'admin_responded_by')
  int? get adminRespondedBy;
  @override
  @JsonKey(name: 'admin_responded_by_name')
  String? get adminRespondedByName;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of BugReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BugReportImplCopyWith<_$BugReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BugReportListResponse _$BugReportListResponseFromJson(
  Map<String, dynamic> json,
) {
  return _BugReportListResponse.fromJson(json);
}

/// @nodoc
mixin _$BugReportListResponse {
  List<BugReport> get items => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;

  /// Serializes this BugReportListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BugReportListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BugReportListResponseCopyWith<BugReportListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BugReportListResponseCopyWith<$Res> {
  factory $BugReportListResponseCopyWith(
    BugReportListResponse value,
    $Res Function(BugReportListResponse) then,
  ) = _$BugReportListResponseCopyWithImpl<$Res, BugReportListResponse>;
  @useResult
  $Res call({
    List<BugReport> items,
    int total,
    int page,
    @JsonKey(name: 'page_size') int pageSize,
    @JsonKey(name: 'total_pages') int totalPages,
  });
}

/// @nodoc
class _$BugReportListResponseCopyWithImpl<
  $Res,
  $Val extends BugReportListResponse
>
    implements $BugReportListResponseCopyWith<$Res> {
  _$BugReportListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BugReportListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? pageSize = null,
    Object? totalPages = null,
  }) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<BugReport>,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            pageSize: null == pageSize
                ? _value.pageSize
                : pageSize // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPages: null == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BugReportListResponseImplCopyWith<$Res>
    implements $BugReportListResponseCopyWith<$Res> {
  factory _$$BugReportListResponseImplCopyWith(
    _$BugReportListResponseImpl value,
    $Res Function(_$BugReportListResponseImpl) then,
  ) = __$$BugReportListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<BugReport> items,
    int total,
    int page,
    @JsonKey(name: 'page_size') int pageSize,
    @JsonKey(name: 'total_pages') int totalPages,
  });
}

/// @nodoc
class __$$BugReportListResponseImplCopyWithImpl<$Res>
    extends
        _$BugReportListResponseCopyWithImpl<$Res, _$BugReportListResponseImpl>
    implements _$$BugReportListResponseImplCopyWith<$Res> {
  __$$BugReportListResponseImplCopyWithImpl(
    _$BugReportListResponseImpl _value,
    $Res Function(_$BugReportListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BugReportListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? pageSize = null,
    Object? totalPages = null,
  }) {
    return _then(
      _$BugReportListResponseImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<BugReport>,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        pageSize: null == pageSize
            ? _value.pageSize
            : pageSize // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPages: null == totalPages
            ? _value.totalPages
            : totalPages // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BugReportListResponseImpl implements _BugReportListResponse {
  const _$BugReportListResponseImpl({
    required final List<BugReport> items,
    required this.total,
    required this.page,
    @JsonKey(name: 'page_size') required this.pageSize,
    @JsonKey(name: 'total_pages') required this.totalPages,
  }) : _items = items;

  factory _$BugReportListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BugReportListResponseImplFromJson(json);

  final List<BugReport> _items;
  @override
  List<BugReport> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  @JsonKey(name: 'page_size')
  final int pageSize;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;

  @override
  String toString() {
    return 'BugReportListResponse(items: $items, total: $total, page: $page, pageSize: $pageSize, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BugReportListResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    total,
    page,
    pageSize,
    totalPages,
  );

  /// Create a copy of BugReportListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BugReportListResponseImplCopyWith<_$BugReportListResponseImpl>
  get copyWith =>
      __$$BugReportListResponseImplCopyWithImpl<_$BugReportListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BugReportListResponseImplToJson(this);
  }
}

abstract class _BugReportListResponse implements BugReportListResponse {
  const factory _BugReportListResponse({
    required final List<BugReport> items,
    required final int total,
    required final int page,
    @JsonKey(name: 'page_size') required final int pageSize,
    @JsonKey(name: 'total_pages') required final int totalPages,
  }) = _$BugReportListResponseImpl;

  factory _BugReportListResponse.fromJson(Map<String, dynamic> json) =
      _$BugReportListResponseImpl.fromJson;

  @override
  List<BugReport> get items;
  @override
  int get total;
  @override
  int get page;
  @override
  @JsonKey(name: 'page_size')
  int get pageSize;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;

  /// Create a copy of BugReportListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BugReportListResponseImplCopyWith<_$BugReportListResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

BugReportRequest _$BugReportRequestFromJson(Map<String, dynamic> json) {
  return _BugReportRequest.fromJson(json);
}

/// @nodoc
mixin _$BugReportRequest {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'bug_type')
  String get bugType => throw _privateConstructorUsedError;
  String get severity => throw _privateConstructorUsedError;
  @JsonKey(name: 'steps_to_reproduce')
  String? get stepsToReproduce => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_behavior')
  String? get expectedBehavior => throw _privateConstructorUsedError;
  @JsonKey(name: 'actual_behavior')
  String? get actualBehavior => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_info')
  String? get deviceInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_version')
  String? get appVersion => throw _privateConstructorUsedError;

  /// Serializes this BugReportRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BugReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BugReportRequestCopyWith<BugReportRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BugReportRequestCopyWith<$Res> {
  factory $BugReportRequestCopyWith(
    BugReportRequest value,
    $Res Function(BugReportRequest) then,
  ) = _$BugReportRequestCopyWithImpl<$Res, BugReportRequest>;
  @useResult
  $Res call({
    String title,
    String description,
    @JsonKey(name: 'bug_type') String bugType,
    String severity,
    @JsonKey(name: 'steps_to_reproduce') String? stepsToReproduce,
    @JsonKey(name: 'expected_behavior') String? expectedBehavior,
    @JsonKey(name: 'actual_behavior') String? actualBehavior,
    @JsonKey(name: 'device_info') String? deviceInfo,
    @JsonKey(name: 'app_version') String? appVersion,
  });
}

/// @nodoc
class _$BugReportRequestCopyWithImpl<$Res, $Val extends BugReportRequest>
    implements $BugReportRequestCopyWith<$Res> {
  _$BugReportRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BugReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? bugType = null,
    Object? severity = null,
    Object? stepsToReproduce = freezed,
    Object? expectedBehavior = freezed,
    Object? actualBehavior = freezed,
    Object? deviceInfo = freezed,
    Object? appVersion = freezed,
  }) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            bugType: null == bugType
                ? _value.bugType
                : bugType // ignore: cast_nullable_to_non_nullable
                      as String,
            severity: null == severity
                ? _value.severity
                : severity // ignore: cast_nullable_to_non_nullable
                      as String,
            stepsToReproduce: freezed == stepsToReproduce
                ? _value.stepsToReproduce
                : stepsToReproduce // ignore: cast_nullable_to_non_nullable
                      as String?,
            expectedBehavior: freezed == expectedBehavior
                ? _value.expectedBehavior
                : expectedBehavior // ignore: cast_nullable_to_non_nullable
                      as String?,
            actualBehavior: freezed == actualBehavior
                ? _value.actualBehavior
                : actualBehavior // ignore: cast_nullable_to_non_nullable
                      as String?,
            deviceInfo: freezed == deviceInfo
                ? _value.deviceInfo
                : deviceInfo // ignore: cast_nullable_to_non_nullable
                      as String?,
            appVersion: freezed == appVersion
                ? _value.appVersion
                : appVersion // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BugReportRequestImplCopyWith<$Res>
    implements $BugReportRequestCopyWith<$Res> {
  factory _$$BugReportRequestImplCopyWith(
    _$BugReportRequestImpl value,
    $Res Function(_$BugReportRequestImpl) then,
  ) = __$$BugReportRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String description,
    @JsonKey(name: 'bug_type') String bugType,
    String severity,
    @JsonKey(name: 'steps_to_reproduce') String? stepsToReproduce,
    @JsonKey(name: 'expected_behavior') String? expectedBehavior,
    @JsonKey(name: 'actual_behavior') String? actualBehavior,
    @JsonKey(name: 'device_info') String? deviceInfo,
    @JsonKey(name: 'app_version') String? appVersion,
  });
}

/// @nodoc
class __$$BugReportRequestImplCopyWithImpl<$Res>
    extends _$BugReportRequestCopyWithImpl<$Res, _$BugReportRequestImpl>
    implements _$$BugReportRequestImplCopyWith<$Res> {
  __$$BugReportRequestImplCopyWithImpl(
    _$BugReportRequestImpl _value,
    $Res Function(_$BugReportRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BugReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? bugType = null,
    Object? severity = null,
    Object? stepsToReproduce = freezed,
    Object? expectedBehavior = freezed,
    Object? actualBehavior = freezed,
    Object? deviceInfo = freezed,
    Object? appVersion = freezed,
  }) {
    return _then(
      _$BugReportRequestImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        bugType: null == bugType
            ? _value.bugType
            : bugType // ignore: cast_nullable_to_non_nullable
                  as String,
        severity: null == severity
            ? _value.severity
            : severity // ignore: cast_nullable_to_non_nullable
                  as String,
        stepsToReproduce: freezed == stepsToReproduce
            ? _value.stepsToReproduce
            : stepsToReproduce // ignore: cast_nullable_to_non_nullable
                  as String?,
        expectedBehavior: freezed == expectedBehavior
            ? _value.expectedBehavior
            : expectedBehavior // ignore: cast_nullable_to_non_nullable
                  as String?,
        actualBehavior: freezed == actualBehavior
            ? _value.actualBehavior
            : actualBehavior // ignore: cast_nullable_to_non_nullable
                  as String?,
        deviceInfo: freezed == deviceInfo
            ? _value.deviceInfo
            : deviceInfo // ignore: cast_nullable_to_non_nullable
                  as String?,
        appVersion: freezed == appVersion
            ? _value.appVersion
            : appVersion // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BugReportRequestImpl implements _BugReportRequest {
  const _$BugReportRequestImpl({
    required this.title,
    required this.description,
    @JsonKey(name: 'bug_type') required this.bugType,
    required this.severity,
    @JsonKey(name: 'steps_to_reproduce') this.stepsToReproduce,
    @JsonKey(name: 'expected_behavior') this.expectedBehavior,
    @JsonKey(name: 'actual_behavior') this.actualBehavior,
    @JsonKey(name: 'device_info') this.deviceInfo,
    @JsonKey(name: 'app_version') this.appVersion,
  });

  factory _$BugReportRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BugReportRequestImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'bug_type')
  final String bugType;
  @override
  final String severity;
  @override
  @JsonKey(name: 'steps_to_reproduce')
  final String? stepsToReproduce;
  @override
  @JsonKey(name: 'expected_behavior')
  final String? expectedBehavior;
  @override
  @JsonKey(name: 'actual_behavior')
  final String? actualBehavior;
  @override
  @JsonKey(name: 'device_info')
  final String? deviceInfo;
  @override
  @JsonKey(name: 'app_version')
  final String? appVersion;

  @override
  String toString() {
    return 'BugReportRequest(title: $title, description: $description, bugType: $bugType, severity: $severity, stepsToReproduce: $stepsToReproduce, expectedBehavior: $expectedBehavior, actualBehavior: $actualBehavior, deviceInfo: $deviceInfo, appVersion: $appVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BugReportRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bugType, bugType) || other.bugType == bugType) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.stepsToReproduce, stepsToReproduce) ||
                other.stepsToReproduce == stepsToReproduce) &&
            (identical(other.expectedBehavior, expectedBehavior) ||
                other.expectedBehavior == expectedBehavior) &&
            (identical(other.actualBehavior, actualBehavior) ||
                other.actualBehavior == actualBehavior) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    description,
    bugType,
    severity,
    stepsToReproduce,
    expectedBehavior,
    actualBehavior,
    deviceInfo,
    appVersion,
  );

  /// Create a copy of BugReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BugReportRequestImplCopyWith<_$BugReportRequestImpl> get copyWith =>
      __$$BugReportRequestImplCopyWithImpl<_$BugReportRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BugReportRequestImplToJson(this);
  }
}

abstract class _BugReportRequest implements BugReportRequest {
  const factory _BugReportRequest({
    required final String title,
    required final String description,
    @JsonKey(name: 'bug_type') required final String bugType,
    required final String severity,
    @JsonKey(name: 'steps_to_reproduce') final String? stepsToReproduce,
    @JsonKey(name: 'expected_behavior') final String? expectedBehavior,
    @JsonKey(name: 'actual_behavior') final String? actualBehavior,
    @JsonKey(name: 'device_info') final String? deviceInfo,
    @JsonKey(name: 'app_version') final String? appVersion,
  }) = _$BugReportRequestImpl;

  factory _BugReportRequest.fromJson(Map<String, dynamic> json) =
      _$BugReportRequestImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'bug_type')
  String get bugType;
  @override
  String get severity;
  @override
  @JsonKey(name: 'steps_to_reproduce')
  String? get stepsToReproduce;
  @override
  @JsonKey(name: 'expected_behavior')
  String? get expectedBehavior;
  @override
  @JsonKey(name: 'actual_behavior')
  String? get actualBehavior;
  @override
  @JsonKey(name: 'device_info')
  String? get deviceInfo;
  @override
  @JsonKey(name: 'app_version')
  String? get appVersion;

  /// Create a copy of BugReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BugReportRequestImplCopyWith<_$BugReportRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
