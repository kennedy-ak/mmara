// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatResponseImpl _$$ChatResponseImplFromJson(Map<String, dynamic> json) =>
    _$ChatResponseImpl(
      response: json['response'] as String,
      sessionId: json['session_id'] as String,
      messageId: json['message_id'] as String,
      citations: (json['citations'] as List<dynamic>)
          .map((e) => Citation.fromJson(e as Map<String, dynamic>))
          .toList(),
      confidence: (json['confidence'] as num).toDouble(),
      category: json['category'] as String,
      urgency: json['urgency'] as String?,
      isEmergency: json['is_emergency'] as bool? ?? false,
      disclaimer: json['disclaimer'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      responseTimeMs: (json['response_time_ms'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ChatResponseImplToJson(_$ChatResponseImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
      'session_id': instance.sessionId,
      'message_id': instance.messageId,
      'citations': instance.citations,
      'confidence': instance.confidence,
      'category': instance.category,
      'urgency': instance.urgency,
      'is_emergency': instance.isEmergency,
      'disclaimer': instance.disclaimer,
      'timestamp': instance.timestamp?.toIso8601String(),
      'response_time_ms': instance.responseTimeMs,
    };
