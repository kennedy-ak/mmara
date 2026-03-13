import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'app.dart';
import 'services/push_notification_service.dart';

// Platform-specific Firebase imports
// Uncomment when Firebase is configured for each platform:
// import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  // TODO: Uncomment when Firebase is configured
  // await Firebase.initializeApp();

  // Initialize push notifications
  // TODO: Uncomment when Firebase is configured
  // await PushNotificationService.instance.initialize();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
