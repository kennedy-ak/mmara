// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatResponse _$ChatResponseFromJson(Map<String, dynamic> json) {
  return _ChatResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatResponse {
  String get response => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_id')
  String get sessionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_id')
  String get messageId => throw _privateConstructorUsedError;
  List<Citation> get citations => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String? get urgency => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_emergency')
  bool get isEmergency => throw _privateConstructorUsedError;
  String? get disclaimer => throw _privateConstructorUsedError;
  DateTime? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'response_time_ms')
  double? get responseTimeMs => throw _privateConstructorUsedError;

  /// Serializes this ChatResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatResponseCopyWith<ChatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatResponseCopyWith<$Res> {
  factory $ChatResponseCopyWith(
    ChatResponse value,
    $Res Function(ChatResponse) then,
  ) = _$ChatResponseCopyWithImpl<$Res, ChatResponse>;
  @useResult
  $Res call({
    String response,
    @JsonKey(name: 'session_id') String sessionId,
    @JsonKey(name: 'message_id') String messageId,
    List<Citation> citations,
    double confidence,
    String category,
    String? urgency,
    @JsonKey(name: 'is_emergency') bool isEmergency,
    String? disclaimer,
    DateTime? timestamp,
    @JsonKey(name: 'response_time_ms') double? responseTimeMs,
  });
}

/// @nodoc
class _$ChatResponseCopyWithImpl<$Res, $Val extends ChatResponse>
    implements $ChatResponseCopyWith<$Res> {
  _$ChatResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
    Object? sessionId = null,
    Object? messageId = null,
    Object? citations = null,
    Object? confidence = null,
    Object? category = null,
    Object? urgency = freezed,
    Object? isEmergency = null,
    Object? disclaimer = freezed,
    Object? timestamp = freezed,
    Object? responseTimeMs = freezed,
  }) {
    return _then(
      _value.copyWith(
            response: null == response
                ? _value.response
                : response // ignore: cast_nullable_to_non_nullable
                      as String,
            sessionId: null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String,
            messageId: null == messageId
                ? _value.messageId
                : messageId // ignore: cast_nullable_to_non_nullable
                      as String,
            citations: null == citations
                ? _value.citations
                : citations // ignore: cast_nullable_to_non_nullable
                      as List<Citation>,
            confidence: null == confidence
                ? _value.confidence
                : confidence // ignore: cast_nullable_to_non_nullable
                      as double,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            urgency: freezed == urgency
                ? _value.urgency
                : urgency // ignore: cast_nullable_to_non_nullable
                      as String?,
            isEmergency: null == isEmergency
                ? _value.isEmergency
                : isEmergency // ignore: cast_nullable_to_non_nullable
                      as bool,
            disclaimer: freezed == disclaimer
                ? _value.disclaimer
                : disclaimer // ignore: cast_nullable_to_non_nullable
                      as String?,
            timestamp: freezed == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            responseTimeMs: freezed == responseTimeMs
                ? _value.responseTimeMs
                : responseTimeMs // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatResponseImplCopyWith<$Res>
    implements $ChatResponseCopyWith<$Res> {
  factory _$$ChatResponseImplCopyWith(
    _$ChatResponseImpl value,
    $Res Function(_$ChatResponseImpl) then,
  ) = __$$ChatResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String response,
    @JsonKey(name: 'session_id') String sessionId,
    @JsonKey(name: 'message_id') String messageId,
    List<Citation> citations,
    double confidence,
    String category,
    String? urgency,
    @JsonKey(name: 'is_emergency') bool isEmergency,
    String? disclaimer,
    DateTime? timestamp,
    @JsonKey(name: 'response_time_ms') double? responseTimeMs,
  });
}

/// @nodoc
class __$$ChatResponseImplCopyWithImpl<$Res>
    extends _$ChatResponseCopyWithImpl<$Res, _$ChatResponseImpl>
    implements _$$ChatResponseImplCopyWith<$Res> {
  __$$ChatResponseImplCopyWithImpl(
    _$ChatResponseImpl _value,
    $Res Function(_$ChatResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
    Object? sessionId = null,
    Object? messageId = null,
    Object? citations = null,
    Object? confidence = null,
    Object? category = null,
    Object? urgency = freezed,
    Object? isEmergency = null,
    Object? disclaimer = freezed,
    Object? timestamp = freezed,
    Object? responseTimeMs = freezed,
  }) {
    return _then(
      _$ChatResponseImpl(
        response: null == response
            ? _value.response
            : response // ignore: cast_nullable_to_non_nullable
                  as String,
        sessionId: null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String,
        messageId: null == messageId
            ? _value.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as String,
        citations: null == citations
            ? _value._citations
            : citations // ignore: cast_nullable_to_non_nullable
                  as List<Citation>,
        confidence: null == confidence
            ? _value.confidence
            : confidence // ignore: cast_nullable_to_non_nullable
                  as double,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        urgency: freezed == urgency
            ? _value.urgency
            : urgency // ignore: cast_nullable_to_non_nullable
                  as String?,
        isEmergency: null == isEmergency
            ? _value.isEmergency
            : isEmergency // ignore: cast_nullable_to_non_nullable
                  as bool,
        disclaimer: freezed == disclaimer
            ? _value.disclaimer
            : disclaimer // ignore: cast_nullable_to_non_nullable
                  as String?,
        timestamp: freezed == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        responseTimeMs: freezed == responseTimeMs
            ? _value.responseTimeMs
            : responseTimeMs // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatResponseImpl implements _ChatResponse {
  const _$ChatResponseImpl({
    required this.response,
    @JsonKey(name: 'session_id') required this.sessionId,
    @JsonKey(name: 'message_id') required this.messageId,
    required final List<Citation> citations,
    required this.confidence,
    required this.category,
    this.urgency,
    @JsonKey(name: 'is_emergency') this.isEmergency = false,
    this.disclaimer,
    this.timestamp,
    @JsonKey(name: 'response_time_ms') this.responseTimeMs,
  }) : _citations = citations;

  factory _$ChatResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatResponseImplFromJson(json);

  @override
  final String response;
  @override
  @JsonKey(name: 'session_id')
  final String sessionId;
  @override
  @JsonKey(name: 'message_id')
  final String messageId;
  final List<Citation> _citations;
  @override
  List<Citation> get citations {
    if (_citations is EqualUnmodifiableListView) return _citations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_citations);
  }

  @override
  final double confidence;
  @override
  final String category;
  @override
  final String? urgency;
  @override
  @JsonKey(name: 'is_emergency')
  final bool isEmergency;
  @override
  final String? disclaimer;
  @override
  final DateTime? timestamp;
  @override
  @JsonKey(name: 'response_time_ms')
  final double? responseTimeMs;

  @override
  String toString() {
    return 'ChatResponse(response: $response, sessionId: $sessionId, messageId: $messageId, citations: $citations, confidence: $confidence, category: $category, urgency: $urgency, isEmergency: $isEmergency, disclaimer: $disclaimer, timestamp: $timestamp, responseTimeMs: $responseTimeMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatResponseImpl &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            const DeepCollectionEquality().equals(
              other._citations,
              _citations,
            ) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.urgency, urgency) || other.urgency == urgency) &&
            (identical(other.isEmergency, isEmergency) ||
                other.isEmergency == isEmergency) &&
            (identical(other.disclaimer, disclaimer) ||
                other.disclaimer == disclaimer) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.responseTimeMs, responseTimeMs) ||
                other.responseTimeMs == responseTimeMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    response,
    sessionId,
    messageId,
    const DeepCollectionEquality().hash(_citations),
    confidence,
    category,
    urgency,
    isEmergency,
    disclaimer,
    timestamp,
    responseTimeMs,
  );

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatResponseImplCopyWith<_$ChatResponseImpl> get copyWith =>
      __$$ChatResponseImplCopyWithImpl<_$ChatResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatResponseImplToJson(this);
  }
}

abstract class _ChatResponse implements ChatResponse {
  const factory _ChatResponse({
    required final String response,
    @JsonKey(name: 'session_id') required final String sessionId,
    @JsonKey(name: 'message_id') required final String messageId,
    required final List<Citation> citations,
    required final double confidence,
    required final String category,
    final String? urgency,
    @JsonKey(name: 'is_emergency') final bool isEmergency,
    final String? disclaimer,
    final DateTime? timestamp,
    @JsonKey(name: 'response_time_ms') final double? responseTimeMs,
  }) = _$ChatResponseImpl;

  factory _ChatResponse.fromJson(Map<String, dynamic> json) =
      _$ChatResponseImpl.fromJson;

  @override
  String get response;
  @override
  @JsonKey(name: 'session_id')
  String get sessionId;
  @override
  @JsonKey(name: 'message_id')
  String get messageId;
  @override
  List<Citation> get citations;
  @override
  double get confidence;
  @override
  String get category;
  @override
  String? get urgency;
  @override
  @JsonKey(name: 'is_emergency')
  bool get isEmergency;
  @override
  String? get disclaimer;
  @override
  DateTime? get timestamp;
  @override
  @JsonKey(name: 'response_time_ms')
  double? get responseTimeMs;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatResponseImplCopyWith<_$ChatResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
