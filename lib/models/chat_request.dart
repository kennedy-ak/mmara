import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_request.freezed.dart';
part 'chat_request.g.dart';

/// Chat request model.
@freezed
class ChatRequest with _$ChatRequest {
  const factory ChatRequest({
    required String message,
    @JsonKey(name: 'session_id') String? sessionId,
    String? category,
  }) = _ChatRequest;

  factory ChatRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatRequestFromJson(json);
}
