// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatMessage {
  @JsonKey(name: 'message_id', defaultValue: '')
  String get messageId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  DateTime? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_emergency')
  bool? get isEmergency => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get citations =>
      throw _privateConstructorUsedError;

  /// Serializes this ChatMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
    ChatMessage value,
    $Res Function(ChatMessage) then,
  ) = _$ChatMessageCopyWithImpl<$Res, ChatMessage>;
  @useResult
  $Res call({
    @JsonKey(name: 'message_id', defaultValue: '') String messageId,
    String content,
    String role,
    DateTime? timestamp,
    @JsonKey(name: 'is_emergency') bool? isEmergency,
    List<Map<String, dynamic>>? citations,
  });
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res, $Val extends ChatMessage>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? content = null,
    Object? role = null,
    Object? timestamp = freezed,
    Object? isEmergency = freezed,
    Object? citations = freezed,
  }) {
    return _then(
      _value.copyWith(
            messageId: null == messageId
                ? _value.messageId
                : messageId // ignore: cast_nullable_to_non_nullable
                      as String,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
            timestamp: freezed == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            isEmergency: freezed == isEmergency
                ? _value.isEmergency
                : isEmergency // ignore: cast_nullable_to_non_nullable
                      as bool?,
            citations: freezed == citations
                ? _value.citations
                : citations // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatMessageImplCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$ChatMessageImplCopyWith(
    _$ChatMessageImpl value,
    $Res Function(_$ChatMessageImpl) then,
  ) = __$$ChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'message_id', defaultValue: '') String messageId,
    String content,
    String role,
    DateTime? timestamp,
    @JsonKey(name: 'is_emergency') bool? isEmergency,
    List<Map<String, dynamic>>? citations,
  });
}

/// @nodoc
class __$$ChatMessageImplCopyWithImpl<$Res>
    extends _$ChatMessageCopyWithImpl<$Res, _$ChatMessageImpl>
    implements _$$ChatMessageImplCopyWith<$Res> {
  __$$ChatMessageImplCopyWithImpl(
    _$ChatMessageImpl _value,
    $Res Function(_$ChatMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? content = null,
    Object? role = null,
    Object? timestamp = freezed,
    Object? isEmergency = freezed,
    Object? citations = freezed,
  }) {
    return _then(
      _$ChatMessageImpl(
        messageId: null == messageId
            ? _value.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as String,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
        timestamp: freezed == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        isEmergency: freezed == isEmergency
            ? _value.isEmergency
            : isEmergency // ignore: cast_nullable_to_non_nullable
                  as bool?,
        citations: freezed == citations
            ? _value._citations
            : citations // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageImpl extends _ChatMessage {
  const _$ChatMessageImpl({
    @JsonKey(name: 'message_id', defaultValue: '') required this.messageId,
    required this.content,
    required this.role,
    this.timestamp,
    @JsonKey(name: 'is_emergency') this.isEmergency,
    final List<Map<String, dynamic>>? citations,
  }) : _citations = citations,
       super._();

  factory _$ChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageImplFromJson(json);

  @override
  @JsonKey(name: 'message_id', defaultValue: '')
  final String messageId;
  @override
  final String content;
  @override
  final String role;
  @override
  final DateTime? timestamp;
  @override
  @JsonKey(name: 'is_emergency')
  final bool? isEmergency;
  final List<Map<String, dynamic>>? _citations;
  @override
  List<Map<String, dynamic>>? get citations {
    final value = _citations;
    if (value == null) return null;
    if (_citations is EqualUnmodifiableListView) return _citations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatMessage(messageId: $messageId, content: $content, role: $role, timestamp: $timestamp, isEmergency: $isEmergency, citations: $citations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.isEmergency, isEmergency) ||
                other.isEmergency == isEmergency) &&
            const DeepCollectionEquality().equals(
              other._citations,
              _citations,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    messageId,
    content,
    role,
    timestamp,
    isEmergency,
    const DeepCollectionEquality().hash(_citations),
  );

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      __$$ChatMessageImplCopyWithImpl<_$ChatMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageImplToJson(this);
  }
}

abstract class _ChatMessage extends ChatMessage {
  const factory _ChatMessage({
    @JsonKey(name: 'message_id', defaultValue: '')
    required final String messageId,
    required final String content,
    required final String role,
    final DateTime? timestamp,
    @JsonKey(name: 'is_emergency') final bool? isEmergency,
    final List<Map<String, dynamic>>? citations,
  }) = _$ChatMessageImpl;
  const _ChatMessage._() : super._();

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$ChatMessageImpl.fromJson;

  @override
  @JsonKey(name: 'message_id', defaultValue: '')
  String get messageId;
  @override
  String get content;
  @override
  String get role;
  @override
  DateTime? get timestamp;
  @override
  @JsonKey(name: 'is_emergency')
  bool? get isEmergency;
  @override
  List<Map<String, dynamic>>? get citations;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatHistoryResponse _$ChatHistoryResponseFromJson(Map<String, dynamic> json) {
  return _ChatHistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatHistoryResponse {
  @JsonKey(name: 'session_id')
  String get sessionId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_count')
  int get messageCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ChatHistoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatHistoryResponseCopyWith<ChatHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatHistoryResponseCopyWith<$Res> {
  factory $ChatHistoryResponseCopyWith(
    ChatHistoryResponse value,
    $Res Function(ChatHistoryResponse) then,
  ) = _$ChatHistoryResponseCopyWithImpl<$Res, ChatHistoryResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'session_id') String sessionId,
    String? title,
    String? category,
    List<ChatMessage> messages,
    @JsonKey(name: 'message_count') int messageCount,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });
}

/// @nodoc
class _$ChatHistoryResponseCopyWithImpl<$Res, $Val extends ChatHistoryResponse>
    implements $ChatHistoryResponseCopyWith<$Res> {
  _$ChatHistoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? title = freezed,
    Object? category = freezed,
    Object? messages = null,
    Object? messageCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            sessionId: null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String?,
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<ChatMessage>,
            messageCount: null == messageCount
                ? _value.messageCount
                : messageCount // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$ChatHistoryResponseImplCopyWith<$Res>
    implements $ChatHistoryResponseCopyWith<$Res> {
  factory _$$ChatHistoryResponseImplCopyWith(
    _$ChatHistoryResponseImpl value,
    $Res Function(_$ChatHistoryResponseImpl) then,
  ) = __$$ChatHistoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'session_id') String sessionId,
    String? title,
    String? category,
    List<ChatMessage> messages,
    @JsonKey(name: 'message_count') int messageCount,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });
}

/// @nodoc
class __$$ChatHistoryResponseImplCopyWithImpl<$Res>
    extends _$ChatHistoryResponseCopyWithImpl<$Res, _$ChatHistoryResponseImpl>
    implements _$$ChatHistoryResponseImplCopyWith<$Res> {
  __$$ChatHistoryResponseImplCopyWithImpl(
    _$ChatHistoryResponseImpl _value,
    $Res Function(_$ChatHistoryResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? title = freezed,
    Object? category = freezed,
    Object? messages = null,
    Object? messageCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$ChatHistoryResponseImpl(
        sessionId: null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String?,
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<ChatMessage>,
        messageCount: null == messageCount
            ? _value.messageCount
            : messageCount // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$ChatHistoryResponseImpl implements _ChatHistoryResponse {
  const _$ChatHistoryResponseImpl({
    @JsonKey(name: 'session_id') required this.sessionId,
    this.title,
    this.category,
    required final List<ChatMessage> messages,
    @JsonKey(name: 'message_count') required this.messageCount,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
  }) : _messages = messages;

  factory _$ChatHistoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatHistoryResponseImplFromJson(json);

  @override
  @JsonKey(name: 'session_id')
  final String sessionId;
  @override
  final String? title;
  @override
  final String? category;
  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey(name: 'message_count')
  final int messageCount;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ChatHistoryResponse(sessionId: $sessionId, title: $title, category: $category, messages: $messages, messageCount: $messageCount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatHistoryResponseImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.messageCount, messageCount) ||
                other.messageCount == messageCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    sessionId,
    title,
    category,
    const DeepCollectionEquality().hash(_messages),
    messageCount,
    createdAt,
    updatedAt,
  );

  /// Create a copy of ChatHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatHistoryResponseImplCopyWith<_$ChatHistoryResponseImpl> get copyWith =>
      __$$ChatHistoryResponseImplCopyWithImpl<_$ChatHistoryResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatHistoryResponseImplToJson(this);
  }
}

abstract class _ChatHistoryResponse implements ChatHistoryResponse {
  const factory _ChatHistoryResponse({
    @JsonKey(name: 'session_id') required final String sessionId,
    final String? title,
    final String? category,
    required final List<ChatMessage> messages,
    @JsonKey(name: 'message_count') required final int messageCount,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
  }) = _$ChatHistoryResponseImpl;

  factory _ChatHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$ChatHistoryResponseImpl.fromJson;

  @override
  @JsonKey(name: 'session_id')
  String get sessionId;
  @override
  String? get title;
  @override
  String? get category;
  @override
  List<ChatMessage> get messages;
  @override
  @JsonKey(name: 'message_count')
  int get messageCount;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of ChatHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatHistoryResponseImplCopyWith<_$ChatHistoryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionsListResponse _$SessionsListResponseFromJson(Map<String, dynamic> json) {
  return _SessionsListResponse.fromJson(json);
}

/// @nodoc
mixin _$SessionsListResponse {
  List<ChatHistoryResponse> get sessions => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this SessionsListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionsListResponseCopyWith<SessionsListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsListResponseCopyWith<$Res> {
  factory $SessionsListResponseCopyWith(
    SessionsListResponse value,
    $Res Function(SessionsListResponse) then,
  ) = _$SessionsListResponseCopyWithImpl<$Res, SessionsListResponse>;
  @useResult
  $Res call({List<ChatHistoryResponse> sessions, int total});
}

/// @nodoc
class _$SessionsListResponseCopyWithImpl<
  $Res,
  $Val extends SessionsListResponse
>
    implements $SessionsListResponseCopyWith<$Res> {
  _$SessionsListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sessions = null, Object? total = null}) {
    return _then(
      _value.copyWith(
            sessions: null == sessions
                ? _value.sessions
                : sessions // ignore: cast_nullable_to_non_nullable
                      as List<ChatHistoryResponse>,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionsListResponseImplCopyWith<$Res>
    implements $SessionsListResponseCopyWith<$Res> {
  factory _$$SessionsListResponseImplCopyWith(
    _$SessionsListResponseImpl value,
    $Res Function(_$SessionsListResponseImpl) then,
  ) = __$$SessionsListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChatHistoryResponse> sessions, int total});
}

/// @nodoc
class __$$SessionsListResponseImplCopyWithImpl<$Res>
    extends _$SessionsListResponseCopyWithImpl<$Res, _$SessionsListResponseImpl>
    implements _$$SessionsListResponseImplCopyWith<$Res> {
  __$$SessionsListResponseImplCopyWithImpl(
    _$SessionsListResponseImpl _value,
    $Res Function(_$SessionsListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sessions = null, Object? total = null}) {
    return _then(
      _$SessionsListResponseImpl(
        sessions: null == sessions
            ? _value._sessions
            : sessions // ignore: cast_nullable_to_non_nullable
                  as List<ChatHistoryResponse>,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionsListResponseImpl implements _SessionsListResponse {
  const _$SessionsListResponseImpl({
    required final List<ChatHistoryResponse> sessions,
    required this.total,
  }) : _sessions = sessions;

  factory _$SessionsListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionsListResponseImplFromJson(json);

  final List<ChatHistoryResponse> _sessions;
  @override
  List<ChatHistoryResponse> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  final int total;

  @override
  String toString() {
    return 'SessionsListResponse(sessions: $sessions, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionsListResponseImpl &&
            const DeepCollectionEquality().equals(other._sessions, _sessions) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_sessions),
    total,
  );

  /// Create a copy of SessionsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionsListResponseImplCopyWith<_$SessionsListResponseImpl>
  get copyWith =>
      __$$SessionsListResponseImplCopyWithImpl<_$SessionsListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionsListResponseImplToJson(this);
  }
}

abstract class _SessionsListResponse implements SessionsListResponse {
  const factory _SessionsListResponse({
    required final List<ChatHistoryResponse> sessions,
    required final int total,
  }) = _$SessionsListResponseImpl;

  factory _SessionsListResponse.fromJson(Map<String, dynamic> json) =
      _$SessionsListResponseImpl.fromJson;

  @override
  List<ChatHistoryResponse> get sessions;
  @override
  int get total;

  /// Create a copy of SessionsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionsListResponseImplCopyWith<_$SessionsListResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
