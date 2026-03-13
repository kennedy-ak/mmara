import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../../models/chat_history.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
import '../../theme/app_text_styles.dart';
import 'citation_footnote.dart';

/// Widget for displaying a chat message bubble.
class MessageBubble extends StatelessWidget {
  const MessageBubble({
    super.key,
    required this.message,
    this.onCitationTap,
    this.onFeedbackTap,
    this.isStreaming = false,
  });

  final ChatMessage message;
  final void Function(String citation)? onCitationTap;
  final VoidCallback? onFeedbackTap;
  final bool isStreaming;

  @override
  Widget build(BuildContext context) {
    final isUser = message.role == 'user';

    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: AppSpacing.allSm,
        padding: AppSpacing.allMd,
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.8,
        ),
        decoration: BoxDecoration(
          color: isUser ? AppColors.userBubble : AppColors.aiBubble,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(16),
            topRight: const Radius.circular(16),
            bottomLeft: Radius.circular(isUser ? 12 : 4),
            bottomRight: Radius.circular(isUser ? 4 : 12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!isUser && isStreaming && message.content.isEmpty)
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: AppColors.primary,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Thinking...',
                          style: AppTextStyles.chatAIMessage.copyWith(
                            fontStyle: FontStyle.italic,
                            color: AppColors.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  )
                else ...[
                  Expanded(
                    child: isUser
                        ? SelectableText(
                            message.content,
                            style: AppTextStyles.chatUserMessage,
                            textAlign: TextAlign.left,
                          )
                        : MarkdownBody(
                            data: message.content,
                            styleSheet: MarkdownStyleSheet(
                              p: AppTextStyles.chatAIMessage,
                              strong: AppTextStyles.chatAIMessage.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                              listBullet: AppTextStyles.chatAIMessage,
                              h1: AppTextStyles.chatAIMessage.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              h2: AppTextStyles.chatAIMessage.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              h3: AppTextStyles.chatAIMessage.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            selectable: true,
                            shrinkWrap: true,
                          ),
                  ),
                  if (isStreaming && !isUser)
                    Padding(
                      padding: const EdgeInsets.only(left: 4, top: 4),
                      child: SizedBox(
                        width: 8,
                        height: 18,
                        child: _TypingCursor(),
                      ),
                    ),
                ],
              ],
            ),
            if (message.citations != null && message.citations!.isNotEmpty) ...[
              const SizedBox(height: 8),
              CitationFootnote(
                citationCount: message.citations!.length,
                onTap: () {
                  // Show citations bottom sheet
                  _showCitations(context, message.citations!);
                },
              ),
            ],
            if (!isUser && onFeedbackTap != null && !isStreaming) ...[
              const SizedBox(height: 8),
              GestureDetector(
                onTap: onFeedbackTap,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star_border,
                      size: 16,
                      color: AppColors.onSurfaceVariant,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Rate this response',
                      style: AppTextStyles.labelSmall.copyWith(
                        color: AppColors.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _showCitations(BuildContext context, List<dynamic> citations) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.6,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Handle bar
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 12),
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              // Header
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text(
                      'Legal Citations',
                      style: AppTextStyles.headlineSmall,
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),
              // Scrollable content
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: citations.length,
                  separatorBuilder: (context, index) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final citation = citations[index];
                    return Container(
                      padding: AppSpacing.allMd,
                      decoration: BoxDecoration(
                        color: AppColors.surfaceContainer,
                        borderRadius: AppSpacing.borderRadiusMd,
                        border: Border.all(color: Colors.grey.shade200),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            citation['act'] ?? 'Unknown Act',
                            style: AppTextStyles.labelLarge?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                          ),
                          if (citation['section'] != null) ...[
                            const SizedBox(height: 4),
                            Text(
                              'Section ${citation['section']}',
                              style: AppTextStyles.labelSmall?.copyWith(
                                color: AppColors.onSurfaceVariant,
                              ),
                            ),
                          ],
                          if (citation['subsection'] != null) ...[
                            const SizedBox(height: 2),
                            Text(
                              'Subsection: ${citation['subsection']}',
                              style: AppTextStyles.labelSmall?.copyWith(
                                color: AppColors.onSurfaceVariant,
                              ),
                            ),
                          ],
                          if (citation['text'] != null) ...[
                            const SizedBox(height: 8),
                            Text(
                              citation['text'],
                              style: AppTextStyles.bodySmall?.copyWith(
                                color: AppColors.onSurface,
                              ),
                            ),
                          ],
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// Typing cursor animation for streaming messages
class _TypingCursor extends StatefulWidget {
  @override
  State<_TypingCursor> createState() => _TypingCursorState();
}

class _TypingCursorState extends State<_TypingCursor>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Opacity(
          opacity: _animation.value,
          child: Container(
            width: 2,
            height: 16,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(1),
            ),
          ),
        );
      },
    );
  }
}
