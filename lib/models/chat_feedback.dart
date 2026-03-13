import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_feedback.freezed.dart';
part 'chat_feedback.g.dart';

/// Feedback submission model for chat responses.
@freezed
class ChatFeedback with _$ChatFeedback {
  const factory ChatFeedback({
    @JsonKey(name: 'message_id') required String messageId,
    required int rating,
    String? comment,
    required bool helpful,
  }) = _ChatFeedback;

  factory ChatFeedback.fromJson(Map<String, dynamic> json) =>
      _$ChatFeedbackFromJson(json);
}
