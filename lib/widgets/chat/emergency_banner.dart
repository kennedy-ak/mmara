import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
import '../../theme/app_text_styles.dart';

/// Banner widget for displaying emergency/legal warnings.
class EmergencyBanner extends StatelessWidget {
  const EmergencyBanner({
    super.key,
    this.urgency,
  });

  final String? urgency;

  @override
  Widget build(BuildContext context) {
    final isHighUrgency = urgency?.toLowerCase() == 'high';

    return Container(
      padding: AppSpacing.allMd,
      margin: AppSpacing.horizontalMd + AppSpacing.verticalSm,
      decoration: BoxDecoration(
        color: isHighUrgency ? AppColors.emergencyBanner : AppColors.urgencyMedium.withOpacity(0.2),
        borderRadius: AppSpacing.borderRadiusMd,
        border: Border.all(
          color: isHighUrgency ? AppColors.error : AppColors.urgencyMedium,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Icon(
            isHighUrgency ? Icons.warning : Icons.info,
            color: isHighUrgency ? AppColors.error : AppColors.urgencyMedium,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isHighUrgency ? 'Emergency Notice' : 'Important Notice',
                  style: AppTextStyles.labelLarge.copyWith(
                    color: isHighUrgency ? AppColors.error : AppColors.urgencyMedium,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  isHighUrgency
                      ? 'This matter may require immediate legal attention. Please consult a qualified lawyer.'
                      : 'This information is for guidance only and does not constitute legal advice.',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.onSurface,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
