import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_history.freezed.dart';
part 'chat_history.g.dart';

/// Single message in a chat session.
@freezed
class ChatMessage with _$ChatMessage {
  const ChatMessage._();

  const factory ChatMessage({
    @JsonKey(name: 'message_id', defaultValue: '') required String messageId,
    required String content,
    required String role,
    DateTime? timestamp,
    @JsonKey(name: 'is_emergency') bool? isEmergency,
    List<Map<String, dynamic>>? citations,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}

/// Response for a single chat session history.
@freezed
class ChatHistoryResponse with _$ChatHistoryResponse {
  const factory ChatHistoryResponse({
    @JsonKey(name: 'session_id') required String sessionId,
    String? title,
    String? category,
    required List<ChatMessage> messages,
    @JsonKey(name: 'message_count') required int messageCount,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _ChatHistoryResponse;

  factory ChatHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatHistoryResponseFromJson(json);
}

/// Response for listing user's chat sessions.
@freezed
class SessionsListResponse with _$SessionsListResponse {
  const factory SessionsListResponse({
    required List<ChatHistoryResponse> sessions,
    required int total,
  }) = _SessionsListResponse;

  factory SessionsListResponse.fromJson(Map<String, dynamic> json) =>
      _$SessionsListResponseFromJson(json);
}
