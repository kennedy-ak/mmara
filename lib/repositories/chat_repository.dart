import 'dart:async';
import '../models/chat_request.dart';
import '../models/chat_response.dart';
import '../models/chat_history.dart';
import '../models/chat_feedback.dart';
import '../services/chat_service.dart';

/// Repository that orchestrates chat operations.
class ChatRepository {
  ChatRepository({
    required ChatService chatService,
  }) : _chatService = chatService;

  final ChatService _chatService;

  /// Send a message and get AI response.
  Future<ChatResponse> sendMessage(ChatRequest request) async {
    return await _chatService.sendMessage(request);
  }

  /// Send a message and stream the AI response.
  Stream<StreamChunk> sendMessageStream(ChatRequest request) {
    return _chatService.sendMessageStream(request);
  }

  /// Get list of user's chat sessions.
  Future<SessionsListResponse> getHistory({
    int limit = 10,
    int offset = 0,
  }) async {
    return await _chatService.getHistory(limit: limit, offset: offset);
  }

  /// Get full conversation history for a specific session.
  Future<ChatHistoryResponse> getSession(String sessionId) async {
    return await _chatService.getSession(sessionId);
  }

  /// Delete a specific chat session.
  Future<void> deleteSession(String sessionId) async {
    await _chatService.deleteSession(sessionId);
  }

  /// Delete all chat sessions for the current user.
  Future<void> deleteAllSessions() async {
    await _chatService.deleteAllSessions();
  }

  /// Submit feedback on a chat response.
  Future<void> submitFeedback(ChatFeedback feedback) async {
    await _chatService.submitFeedback(feedback);
  }
}
