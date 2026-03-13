import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/chat_request.dart';
import '../models/chat_response.dart';
import '../models/chat_history.dart';
import '../repositories/chat_repository.dart';
import 'api_client_provider.dart';

part 'chat_provider.g.dart';
part 'chat_provider.freezed.dart';

/// Streaming state for chat
@freezed
class StreamingChatState with _$StreamingChatState {
  const factory StreamingChatState.idle() = _Idle;
  const factory StreamingChatState.streaming(String content) = _Streaming;
  const factory StreamingChatState.complete(ChatResponse response) = _Complete;
  const factory StreamingChatState.error(Object error, StackTrace stackTrace) = _Error;
}

/// Provider for chat repository.
@riverpod
ChatRepository chatRepository(ChatRepositoryRef ref) {
  final chatService = ref.watch(chatServiceProvider);
  return ChatRepository(chatService: chatService);
}

/// Provider for streaming chat state
@riverpod
class StreamingChat extends _$StreamingChat {
  @override
  StreamingChatState build() => const StreamingChatState.idle();

  /// Send a message with streaming response
  Future<void> send(String message, {String? sessionId}) async {
    state = const StreamingChatState.streaming('');
    print('[DEBUG] Sending message. sessionId: $sessionId');

    final request = ChatRequest(
      message: message,
      sessionId: sessionId,
    );

    final chatService = ref.read(chatServiceProvider);

    try {
      await for (final chunk in chatService.sendMessageStream(request)) {
        if (chunk.isComplete && chunk.fullResponse != null) {
          // Update session ID
          print('[DEBUG] Stream complete. Session ID: ${chunk.fullResponse!.sessionId}');
          ref.read(currentSessionIdProvider.notifier).setSessionId(chunk.fullResponse!.sessionId);
          state = StreamingChatState.complete(chunk.fullResponse!);
        } else if (chunk.content.isNotEmpty) {
          state = StreamingChatState.streaming(chunk.content);
        }
      }
    } catch (e, stack) {
      state = StreamingChatState.error(e, stack);
    }
  }

  void reset() {
    state = const StreamingChatState.idle();
  }
}

/// Provider for chat messages state.
@riverpod
class ChatMessages extends _$ChatMessages {
  @override
  List<ChatMessage> build() => [];

  /// Add a message to the list.
  void addMessage(ChatMessage message) {
    state = [...state, message];
  }

  /// Update the last message content (for streaming)
  void updateLastMessage(String content) {
    if (state.isNotEmpty) {
      final last = state.last;
      if (last.role == 'assistant') {
        state = [
          ...state.sublist(0, state.length - 1),
          ChatMessage(
            messageId: last.messageId,
            content: content,
            role: last.role,
            timestamp: last.timestamp,
            isEmergency: last.isEmergency,
            citations: last.citations,
          ),
        ];
      }
    }
  }

  /// Finalize the last message with full response data
  void finalizeLastMessage({
    required String messageId,
    required List<Map<String, dynamic>> citations,
    bool? isEmergency,
  }) {
    if (state.isNotEmpty) {
      final last = state.last;
      if (last.role == 'assistant') {
        state = [
          ...state.sublist(0, state.length - 1),
          ChatMessage(
            messageId: messageId,
            content: last.content,
            role: last.role,
            timestamp: last.timestamp,
            isEmergency: isEmergency,
            citations: citations,
          ),
        ];
      }
    }
  }

  /// Set the entire message list.
  void setMessages(List<ChatMessage> messages) {
    state = messages;
  }

  /// Clear all messages.
  void clearMessages() {
    state = [];
  }
}

/// Provider for current session ID with persistence.
@Riverpod(keepAlive: true)
class CurrentSessionId extends _$CurrentSessionId {
  static const String _key = 'current_chat_session_id';

  @override
  String? build() {
    // Return null initially - the actual value is loaded asynchronously
    // and set via state = sessionId when loading completes
    return null;
  }

  /// Load the persisted session ID from storage.
  Future<String?> loadPersisted() async {
    final prefs = await SharedPreferences.getInstance();
    final sessionId = prefs.getString(_key);
    if (sessionId != null) {
      state = sessionId;
    }
    return sessionId;
  }

  /// Ensure the persisted session ID has been loaded.
  Future<String?> ensureLoaded() async {
    final prefs = await SharedPreferences.getInstance();
    final sessionId = prefs.getString(_key);
    if (sessionId != null) {
      state = sessionId;
    }
    return sessionId;
  }

  /// Set the current session ID and persist it.
  void setSessionId(String? sessionId) {
    // Update state immediately (synchronously)
    state = sessionId;
    // Persist asynchronously
    _persistSessionId(sessionId);
  }

  Future<void> _persistSessionId(String? sessionId) async {
    final prefs = await SharedPreferences.getInstance();
    if (sessionId != null) {
      await prefs.setString(_key, sessionId);
    } else {
      await prefs.remove(_key);
    }
  }

  /// Clear the session ID from memory and storage.
  void clearSessionId() {
    // Update state immediately (synchronously)
    state = null;
    // Remove from storage asynchronously
    _removePersistedSessionId();
  }

  Future<void> _removePersistedSessionId() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}

/// Notifier for sending messages.
@riverpod
class SendMessageNotifier extends _$SendMessageNotifier {
  @override
  FutureOr<ChatResponse?> build() => null;

  /// Send a message to the AI.
  Future<void> send(String message, {String? sessionId}) async {
    state = const AsyncValue.loading();

    final request = ChatRequest(
      message: message,
      sessionId: sessionId,
    );

    state = await AsyncValue.guard(() async {
      final repo = ref.read(chatRepositoryProvider);
      final response = await repo.sendMessage(request);

      // Update session ID
      ref.read(currentSessionIdProvider.notifier).setSessionId(response.sessionId);

      return response;
    });
  }

  /// Reset state.
  void reset() {
    state = const AsyncValue.data(null);
  }
}
