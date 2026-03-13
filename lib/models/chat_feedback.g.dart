// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatFeedbackImpl _$$ChatFeedbackImplFromJson(Map<String, dynamic> json) =>
    _$ChatFeedbackImpl(
      messageId: json['message_id'] as String,
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
      helpful: json['helpful'] as bool,
    );

Map<String, dynamic> _$$ChatFeedbackImplToJson(_$ChatFeedbackImpl instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'rating': instance.rating,
      'comment': instance.comment,
      'helpful': instance.helpful,
    };
