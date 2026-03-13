import 'dart:async';
import 'package:dio/dio.dart';
import '../models/chat_request.dart';
import '../models/chat_response.dart';
import '../models/chat_history.dart';
import '../models/chat_feedback.dart';
import 'api/api_exceptions.dart';

/// Stream chunk for client-side streaming
class StreamChunk {
  final String content;
  final bool isComplete;
  final ChatResponse? fullResponse;

  const StreamChunk({
    required this.content,
    this.isComplete = false,
    this.fullResponse,
  });
}

/// Chat service for handling chat-related API calls.
class ChatService {
  ChatService(this._dio);

  final Dio _dio;

  /// Send a message and get AI response.
  Future<ChatResponse> sendMessage(ChatRequest request) async {
    try {
      final response = await _dio.post(
        '/chat/message',
        data: request.toJson(),
      );
      return ChatResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Send a message and stream the AI response (client-side streaming).
  Stream<StreamChunk> sendMessageStream(ChatRequest request) async* {
    try {
      final response = await _dio.post(
        '/chat/message',
        data: request.toJson(),
      );

      final chatResponse = ChatResponse.fromJson(response.data as Map<String, dynamic>);
      print('[DEBUG] Parsed ChatResponse. sessionId: ${chatResponse.sessionId}, messageId: ${chatResponse.messageId}');
      final fullText = chatResponse.response;
      final chars = fullText.split('');
      final accumulated = StringBuffer();

      // Stream character by character with variable speed
      for (var i = 0; i < chars.length; i++) {
        accumulated.write(chars[i]);

        // Yield chunks at word boundaries or every few characters
        if (chars[i] == ' ' || chars[i] == '\n' || i % 3 == 0 || i == chars.length - 1) {
          yield StreamChunk(content: accumulated.toString());

          // Variable delay for more natural feel
          await Future.delayed(const Duration(milliseconds: 10));
        }
      }

      // Final chunk with complete response
      yield StreamChunk(
        content: fullText,
        isComplete: true,
        fullResponse: chatResponse,
      );
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Get list of user's chat sessions.
  Future<SessionsListResponse> getHistory({
    int limit = 10,
    int offset = 0,
  }) async {
    try {
      final response = await _dio.get(
        '/chat/history',
        queryParameters: {
          'limit': limit,
          'offset': offset,
        },
      );
      return SessionsListResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Get full conversation history for a specific session.
  Future<ChatHistoryResponse> getSession(String sessionId) async {
    try {
      final response = await _dio.get(
        '/chat/history/$sessionId',
      );
      return ChatHistoryResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Delete a specific chat session.
  Future<void> deleteSession(String sessionId) async {
    try {
      await _dio.delete('/chat/history/$sessionId');
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Delete all chat sessions for the current user.
  Future<void> deleteAllSessions() async {
    try {
      await _dio.delete('/chat/history');
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  /// Submit feedback on a chat response.
  Future<void> submitFeedback(ChatFeedback feedback) async {
    try {
      await _dio.post(
        '/chat/feedback',
        data: feedback.toJson(),
      );
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  ApiException _handleException(DioException e) {
    final statusCode = e.response?.statusCode;

    switch (statusCode) {
      case 400:
        return BadRequestException(
          e.response?.data?['detail']?.toString() ?? 'Invalid request.',
        );
      case 401:
        return const UnauthorizedException();
      case 403:
        return const ForbiddenException();
      case 404:
        return const NotFoundException();
      case 422:
        final detail = e.response?.data?['detail'];
        if (detail is List && detail.isNotEmpty) {
          final errors = detail.map((e) => e.toString()).join(', ');
          return ValidationException(errors);
        }
        return ValidationException(
          e.response?.data?['detail']?.toString() ?? 'Validation failed.',
        );
      case 500:
      case 502:
      case 503:
      case 504:
        return const ServerException();
      default:
        if (e.type == DioExceptionType.connectionTimeout ||
            e.type == DioExceptionType.sendTimeout ||
            e.type == DioExceptionType.receiveTimeout) {
          return const TimeoutException();
        }
        if (e.type == DioExceptionType.connectionError) {
          return const NetworkException();
        }
        return UnknownException(e.message ?? 'An unknown error occurred.');
    }
  }
}
