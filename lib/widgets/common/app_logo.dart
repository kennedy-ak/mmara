import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';

/// MMara app logo widget.
class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.size = 48,
    this.showText = true,
  });

  final double size;
  final bool showText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.balance,
          size: size,
          color: AppColors.primary,
        ),
        if (showText) ...[
          SizedBox(width: size * 0.3),
          Text(
            'MMara',
            style: TextStyle(
              fontSize: size * 0.6,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
        ],
      ],
    );
  }
}
