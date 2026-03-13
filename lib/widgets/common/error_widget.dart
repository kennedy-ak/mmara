import 'package:flutter/material.dart';
import 'app_button.dart';
import '../../theme/app_spacing.dart';

/// Error display widget with retry option.
class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    super.key,
    this.message = 'Something went wrong',
    this.onRetry,
  });

  final String message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: AppSpacing.allLg,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 64,
              color: Color(0xFFBA1A1A),
            ),
            const SizedBox(height: 16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF5F6368),
              ),
            ),
            if (onRetry != null) ...[
              const SizedBox(height: 24),
              AppButton(
                text: 'Retry',
                onPressed: onRetry,
                type: AppButtonType.outlined,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
