import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
import '../../theme/app_text_styles.dart';

/// Widget for displaying a tappable citation footnote.
class CitationFootnote extends StatelessWidget {
  const CitationFootnote({
    super.key,
    required this.citationCount,
    this.onTap,
  });

  final int citationCount;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: AppSpacing.horizontalSm + AppSpacing.verticalXs,
        decoration: BoxDecoration(
          color: AppColors.primary.withOpacity(0.1),
          borderRadius: AppSpacing.borderRadiusSm,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.menu_book,
              size: 14,
              color: AppColors.primary,
            ),
            const SizedBox(width: 4),
            Text(
              '$citationCount ${citationCount == 1 ? 'citation' : 'citations'}',
              style: AppTextStyles.citation,
            ),
          ],
        ),
      ),
    );
  }
}
