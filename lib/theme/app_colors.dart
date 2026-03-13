import 'package:flutter/material.dart';

/// App color scheme based on MMara design system.
class AppColors {
  AppColors._();

  // Primary Colors
  static const Color primary = Color(0xFF1B3A5C); // Deep Navy Blue — authority, trust
  static const Color onPrimary = Color(0xFFFFFFFF); // Text/icons on primary

  // Secondary Colors
  static const Color secondary = Color(0xFFD4A843); // Kente Gold — Ghanaian identity
  static const Color onSecondary = Color(0xFF1B1B1B); // Text on secondary

  // Tertiary Colors
  static const Color tertiary = Color(0xFF2E7D4F); // Forest Green — Ghanaian flag
  static const Color onTertiary = Color(0xFFFFFFFF); // Text on tertiary

  // Error Colors
  static const Color error = Color(0xFFBA1A1A); // Warm red for errors
  static const Color onError = Color(0xFFFFFFFF);

  // Surface Colors
  static const Color surface = Color(0xFFF8F9FA); // Background
  static const Color surfaceContainer = Color(0xFFFFFFFF); // Cards, sheets
  static const Color onSurface = Color(0xFF1B1B1B); // Primary text
  static const Color onSurfaceVariant = Color(0xFF5F6368); // Secondary text
  static const Color outline = Color(0xFFDADCE0); // Borders, dividers

  // Chat Bubble Colors
  static const Color userBubble = Color(0xFF1B3A5C); // Chat bubble (user)
  static const Color userBubbleText = Color(0xFFFFFFFF); // Text in user bubble
  static const Color aiBubble = Color(0xFFF0F2F5); // Chat bubble (AI)
  static const Color aiBubbleText = Color(0xFF1B1B1B); // Text in AI bubble

  // Emergency & Warning Colors
  static const Color emergencyBanner = Color(0xFFFDE8E8); // Light red background
  static const Color urgencyHigh = Color(0xFFE65100); // Orange indicator
  static const Color urgencyMedium = Color(0xFFD4A843); // Gold indicator
  static const Color urgencyLow = Color(0xFF2E7D4F); // Green indicator

  // Overlay Colors
  static const Color overlay = Color(0x80000000); // Semi-transparent black
  static const Color shimmerBase = Color(0xFFE0E0E0);
  static const Color shimmerHighlight = Color(0xFFF5F5F5);

  /// Light theme color scheme.
  static ColorScheme lightColorScheme = const ColorScheme.light(
    primary: primary,
    onPrimary: onPrimary,
    secondary: secondary,
    onSecondary: onSecondary,
    tertiary: tertiary,
    onTertiary: onTertiary,
    error: error,
    onError: onError,
    surface: surface,
    onSurface: onSurface,
    outline: outline,
  );

  /// Dark theme color scheme.
  static ColorScheme darkColorScheme = const ColorScheme.dark(
    primary: Color(0xFF4A6D92),
    onPrimary: onPrimary,
    secondary: Color(0xFFE5C060),
    onSecondary: onSecondary,
    tertiary: Color(0xFF4A9A6A),
    onTertiary: onTertiary,
    error: Color(0xFFFF9090),
    onError: onError,
    surface: Color(0xFF121212),
    onSurface: Color(0xFFF5F5F5),
    outline: Color(0xFF424242),
  );
}
