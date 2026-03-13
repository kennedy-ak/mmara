// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      messageId: json['message_id'] as String? ?? '',
      content: json['content'] as String,
      role: json['role'] as String,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      isEmergency: json['is_emergency'] as bool?,
      citations: (json['citations'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'content': instance.content,
      'role': instance.role,
      'timestamp': instance.timestamp?.toIso8601String(),
      'is_emergency': instance.isEmergency,
      'citations': instance.citations,
    };

_$ChatHistoryResponseImpl _$$ChatHistoryResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ChatHistoryResponseImpl(
  sessionId: json['session_id'] as String,
  title: json['title'] as String?,
  category: json['category'] as String?,
  messages: (json['messages'] as List<dynamic>)
      .map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
      .toList(),
  messageCount: (json['message_count'] as num).toInt(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$$ChatHistoryResponseImplToJson(
  _$ChatHistoryResponseImpl instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'title': instance.title,
  'category': instance.category,
  'messages': instance.messages,
  'message_count': instance.messageCount,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

_$SessionsListResponseImpl _$$SessionsListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SessionsListResponseImpl(
  sessions: (json['sessions'] as List<dynamic>)
      .map((e) => ChatHistoryResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$$SessionsListResponseImplToJson(
  _$SessionsListResponseImpl instance,
) => <String, dynamic>{'sessions': instance.sessions, 'total': instance.total};
