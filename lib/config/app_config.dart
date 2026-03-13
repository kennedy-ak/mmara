import 'package:flutter/foundation.dart';
import 'env.dart';

/// Application configuration.
class AppConfig {
  AppConfig({
    required this.env,
    this.apiBaseUrl = _defaultApiBaseUrl,
    this.apiTimeout = _defaultApiTimeout,
    this.connectTimeout = _defaultConnectTimeout,
  });

  final Env env;

  /// Base URL for API requests.
  /// Use 10.0.2.2 for Android emulator to access host machine's localhost.
  /// Use localhost for iOS simulator.
  final String apiBaseUrl;

  /// Timeout for API requests (receive timeout).
  final Duration apiTimeout;

  /// Timeout for establishing connections.
  final Duration connectTimeout;

  static const Duration _defaultApiTimeout = Duration(seconds: 30);
  static const Duration _defaultConnectTimeout = Duration(seconds: 10);

  // Android emulator → host machine
  // NOTE: HTTP only for local development. Production MUST use HTTPS.
  static const String _defaultApiBaseUrl = 'http://10.0.2.2:8000';

  // iOS simulator
  // static const String _defaultApiBaseUrl = 'http://localhost:8000';

  /// Production/staging URLs can be configured per environment.
  /// IMPORTANT: Update production URL before deployment!
  static String _baseUrlForEnv(Env env) {
    switch (env) {
      case Env.dev:
        // Local development - HTTP acceptable for emulator
        return 'http://10.0.2.2:8000';
      case Env.staging:
        // Staging - should use HTTPS in real deployment
        return 'https://staging-api.yourdomain.com';
      case Env.prod:
        // Production - MUST use HTTPS
        return 'https://api.yourdomain.com';
    }
  }

  /// Create config for specific environment.
  factory AppConfig.forEnvironment(Env env) {
    return AppConfig(
      env: env,
      apiBaseUrl: _baseUrlForEnv(env),
    );
  }

  /// Current environment - defaults to dev in debug mode.
  static Env get currentEnv {
    if (kReleaseMode) return Env.prod;
    return Env.dev;
  }

  /// Current config instance.
  static AppConfig get current => AppConfig.forEnvironment(currentEnv);

  /// API version prefix.
  String get apiVersion => '/api/v1';

  /// Full base URL including API version.
  String get fullApiBaseUrl => '$apiBaseUrl$apiVersion';

  /// Feature flags.
  bool get enableFirebaseMessaging => true;
  bool get enableAnalytics => false;
  bool get enableCrashReporting => kReleaseMode;
}
