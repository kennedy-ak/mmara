import 'package:flutter/widgets.dart';
import '../../theme/app_spacing.dart';
import '../../theme/app_text_styles.dart';

/// Widget displaying legal disclaimer text.
class DisclaimerText extends StatelessWidget {
  const DisclaimerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.horizontalMd + AppSpacing.verticalSm,
      child: Text(
        'MMara provides general legal information based on Ghanaian law. '
        'This is not legal advice and should not be relied upon for making legal decisions. '
        'Please consult a qualified lawyer for legal advice specific to your situation.',
        style: AppTextStyles.disclaimer,
        textAlign: TextAlign.center,
      ),
    );
  }
}
