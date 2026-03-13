import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../models/chat_history.dart';
import '../../models/citation.dart';
import '../../providers/chat_provider.dart';
import '../../providers/api_client_provider.dart';
import '../../widgets/chat/message_bubble.dart';
import '../../widgets/chat/disclaimer_text.dart';
import '../../router/routes.dart';

/// Temporary message ID for streaming
const _kStreamingMessageId = '_streaming_';

/// Chat screen - main interface for conversing with the AI legal assistant.
class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({super.key, this.sessionId});

  final String? sessionId;

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

/// Convert Citation to Map<String, dynamic>
List<Map<String, dynamic>> _convertCitations(List<Citation> citations) {
  return citations
      .map((c) => {
            'act': c.act,
            'section': c.section,
            'subsection': c.subsection,
            'text': c.text,
            'source_file': c.sourceFile,
          })
      .toList();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  final _textController = TextEditingController();
  final _scrollController = ScrollController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Load session history if sessionId is provided
    Future.microtask(() async {
      if (widget.sessionId != null) {
        _loadSessionHistory(widget.sessionId!);
      } else {
        // Wait for persisted session ID to load
        final persistedSessionId =
            await ref.read(currentSessionIdProvider.notifier).ensureLoaded();
        if (persistedSessionId != null) {
          // Load the persisted session
          _loadSessionHistory(persistedSessionId);
        } else {
          // Clear messages for new chat
          ref.read(chatMessagesProvider.notifier).clearMessages();
        }
      }
    });
  }

  Future<void> _loadSessionHistory(String sessionId) async {
    try {
      final chatService = ref.read(chatServiceProvider);
      final historyResponse = await chatService.getSession(sessionId);

      // Set session ID
      ref.read(currentSessionIdProvider.notifier).setSessionId(sessionId);

      // Load messages into state
      final messages = historyResponse.messages.map((msg) {
        return ChatMessage(
          messageId: msg.messageId.isNotEmpty
              ? msg.messageId
              : DateTime.now().millisecondsSinceEpoch.toString(),
          content: msg.content,
          role: msg.role,
          timestamp: msg.timestamp,
          isEmergency: msg.isEmergency,
          citations: msg.citations,
        );
      }).toList();

      if (messages.isNotEmpty) {
        ref.read(chatMessagesProvider.notifier).setMessages(messages);
      }

      // Scroll to bottom after messages are loaded
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollToBottom();
      });
    } catch (e) {
      // If loading fails, just set the session ID and start fresh
      ref.read(currentSessionIdProvider.notifier).setSessionId(sessionId);
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    final message = _textController.text.trim();
    if (message.isEmpty) return;

    // Check if already streaming
    final streamingState = ref.read(streamingChatProvider);
    final isStreaming = streamingState.maybeWhen(
      streaming: (_) => true,
      orElse: () => false,
    );
    if (isStreaming) return;

    // Add user message
    ref.read(chatMessagesProvider.notifier).addMessage(
          ChatMessage(
            messageId: DateTime.now().millisecondsSinceEpoch.toString(),
            content: message,
            role: 'user',
            timestamp: DateTime.now(),
          ),
        );

    // Add placeholder for AI response
    ref.read(chatMessagesProvider.notifier).addMessage(
          ChatMessage(
            messageId: _kStreamingMessageId,
            content: '',
            role: 'assistant',
            timestamp: DateTime.now(),
          ),
        );

    _textController.clear();
    _scrollToBottom();

    // Send message with streaming
    ref.read(streamingChatProvider.notifier).send(
          message,
          sessionId: ref.read(currentSessionIdProvider),
        );
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _showFeedbackBottomSheet(String messageId) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => _FeedbackBottomSheet(messageId: messageId),
    );
  }

  @override
  Widget build(BuildContext context) {
    final messages = ref.watch(chatMessagesProvider);
    final streamingState = ref.watch(streamingChatProvider);

    // Listen to streaming state and update messages
    ref.listen(streamingChatProvider, (previous, next) {
      next.when(
        idle: () {},
        streaming: (content) {
          ref.read(chatMessagesProvider.notifier).updateLastMessage(content);
          _scrollToBottom();
        },
        complete: (response) {
          ref.read(chatMessagesProvider.notifier).finalizeLastMessage(
                messageId: response.messageId,
                citations: _convertCitations(response.citations),
                isEmergency: response.isEmergency,
              );
          _scrollToBottom();
        },
        error: (error, stack) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(error.toString()),
              backgroundColor: Colors.red,
            ),
          );
          // Remove the streaming placeholder
          final currentMessages = ref.read(chatMessagesProvider);
          if (currentMessages.isNotEmpty &&
              currentMessages.last.messageId == _kStreamingMessageId) {
            final messages = ref.read(chatMessagesProvider.notifier);
            messages.setMessages(currentMessages.sublist(0, currentMessages.length - 1));
          }
        },
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('MMara'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_comment_outlined),
            tooltip: 'New Chat',
            onPressed: () {
              ref.read(chatMessagesProvider.notifier).clearMessages();
              ref.read(currentSessionIdProvider.notifier).clearSessionId();
              ref.read(streamingChatProvider.notifier).reset();
            },
          ),
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () {
              context.push(Routes.history);
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              context.push(Routes.profile);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Messages list
          Expanded(
            child: messages.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat_bubble_outline,
                          size: 64,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Ask me anything about Ghanaian law',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF757575),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Examples: "What are my rights if I\'m arrested?"',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF9E9E9E),
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final message = messages[index];
                      // Check if this is the streaming message
                      final isStreamingMessage = message.messageId == _kStreamingMessageId;
                      // Check if currently streaming
                      final isCurrentlyStreaming = streamingState.maybeWhen(
                        streaming: (_) => true,
                        orElse: () => false,
                      );
                      // Don't show feedback button for streaming message
                      final canShowFeedback = message.role == 'assistant' &&
                          !isStreamingMessage &&
                          !isCurrentlyStreaming;
                      return MessageBubble(
                        message: message,
                        isStreaming: isStreamingMessage && isCurrentlyStreaming,
                        onFeedbackTap: canShowFeedback
                            ? () => _showFeedbackBottomSheet(message.messageId)
                            : null,
                      );
                    },
                  ),
          ),

          // Emergency banner if needed
          // (Would be shown based on is_emergency flag in response)

          // Disclaimer
          const DisclaimerText(),

          // Input bar
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 4,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: SafeArea(
              top: false,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      focusNode: _focusNode,
                      decoration: const InputDecoration(
                        hintText: 'Ask a legal question...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                      ),
                      maxLines: null,
                      textInputAction: TextInputAction.send,
                      onSubmitted: (_) => _handleSubmit(),
                      enabled: !streamingState.maybeWhen(
                        streaming: (_) => true,
                        orElse: () => false,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: streamingState.maybeWhen(
                      streaming: (_) => const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      ),
                      orElse: () => const Icon(Icons.send),
                    ),
                    onPressed: streamingState.maybeWhen(
                      streaming: (_) => null,
                      orElse: () => _handleSubmit,
                    ),
                    style: IconButton.styleFrom(
                      backgroundColor: const Color(0xFF1B3A5C),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Feedback bottom sheet widget.
class _FeedbackBottomSheet extends ConsumerStatefulWidget {
  const _FeedbackBottomSheet({required this.messageId});

  final String messageId;

  @override
  ConsumerState<_FeedbackBottomSheet> createState() => _FeedbackBottomSheetState();
}

class _FeedbackBottomSheetState extends ConsumerState<_FeedbackBottomSheet> {
  int _rating = 0;
  bool _helpful = false;
  final _commentController = TextEditingController();

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  void _submitFeedback() {
    if (_rating == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a rating')),
      );
      return;
    }

    // Submit feedback logic here
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Thank you for your feedback!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rate this response',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              return IconButton(
                iconSize: 40,
                onPressed: () {
                  setState(() {
                    _rating = index + 1;
                  });
                },
                icon: Icon(
                  index < _rating ? Icons.star : Icons.star_border,
                  color: const Color(0xFFD4A843),
                ),
              );
            }),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Checkbox(
                value: _helpful,
                onChanged: (value) {
                  setState(() {
                    _helpful = value ?? false;
                  });
                },
              ),
              const Text('This was helpful'),
            ],
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _commentController,
            decoration: const InputDecoration(
              hintText: 'Add a comment (optional)',
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: _submitFeedback,
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
