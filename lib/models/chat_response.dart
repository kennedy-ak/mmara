import 'package:freezed_annotation/freezed_annotation.dart';
import 'citation.dart';

part 'chat_response.freezed.dart';
part 'chat_response.g.dart';

/// Chat response model from AI.
@freezed
class ChatResponse with _$ChatResponse {
  const factory ChatResponse({
    required String response,
    @JsonKey(name: 'session_id') required String sessionId,
    @JsonKey(name: 'message_id') required String messageId,
    required List<Citation> citations,
    required double confidence,
    required String category,
    String? urgency,
    @JsonKey(name: 'is_emergency') @Default(false) bool isEmergency,
    String? disclaimer,
    DateTime? timestamp,
    @JsonKey(name: 'response_time_ms') double? responseTimeMs,
  }) = _ChatResponse;

  factory ChatResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseFromJson(json);
}
