import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// permission_handler is not yet added - handle permissions via Firebase directly

/// Service for handling push notifications via Firebase Cloud Messaging.
class PushNotificationService {
  PushNotificationService._();

  static final PushNotificationService instance = PushNotificationService._();

  FirebaseMessaging? _messaging;
  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();
  bool _isInitialized = false;

  /// Get the Firebase Messaging instance.
  FirebaseMessaging? get messaging => _messaging;

  /// Initialize Firebase Cloud Messaging.
  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      // Initialize local notifications (for foreground messages on Android)
      const initializationSettingsAndroid = AndroidInitializationSettings(
        '@mipmap/ic_launcher',
      );
      const initializationSettingsIOS = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
      );
      const initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsIOS,
      );

      await _localNotifications.initialize(initializationSettings);

      // Get Firebase Messaging instance
      _messaging = FirebaseMessaging.instance;

      // Request notification permission on iOS
      NotificationSettings settings = await _messaging!.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

      if (kDebugMode) {
        print('Notification settings: ${settings.authorizationStatus}');
      }

      // Configure foreground message handler
      FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

      // Configure background message handler
      FirebaseMessaging.onMessageOpenedApp.listen(_handleMessageOpen);

      // Get initial message if app was opened from notification
      final RemoteMessage? initialMessage =
          await _messaging!.getInitialMessage();
      if (initialMessage != null) {
        _handleMessageOpen(initialMessage);
      }

      // Get FCM token
      final token = await _getFCMToken();
      if (token != null && kDebugMode) {
        // Only log a truncated version for debugging (first 8 chars)
        final truncatedToken = token.length > 8 ? '${token.substring(0, 8)}...' : token;
        print('FCM Token: $truncatedToken (truncated)');
      }

      _isInitialized = true;
    } catch (e) {
      if (kDebugMode) {
        print('Error initializing push notifications: $e');
      }
    }
  }

  /// Get the FCM token for this device.
  Future<String?> getFCMToken() async {
    return await _getFCMToken();
  }

  Future<String?> _getFCMToken() async {
    try {
      final token = await _messaging?.getToken();
      return token;
    } catch (e) {
      if (kDebugMode) {
        print('Error getting FCM token: $e');
      }
      return null;
    }
  }

  /// Handle foreground messages (show local notification).
  void _handleForegroundMessage(RemoteMessage message) {
    if (kDebugMode) {
      print('Received foreground message: ${message.notification?.title}');
    }

    final notification = message.notification;
    if (notification != null) {
      _showLocalNotification(
        title: notification.title ?? 'MMara',
        body: notification.body ?? '',
        payload: message.data.toString(),
      );
    }
  }

  /// Handle message tap when app is in background or terminated.
  void _handleMessageOpen(RemoteMessage message) {
    if (kDebugMode) {
      print('Message opened: ${message.data}');
    }
    // TODO: Navigate to appropriate screen based on message data
  }

  /// Show local notification (for Android foreground messages).
  Future<void> _showLocalNotification({
    required String title,
    required String body,
    String? payload,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      'mmara_channel',
      'MMara Notifications',
      channelDescription: 'Notifications from MMara Legal Assistant',
      importance: Importance.high,
      priority: Priority.high,
    );
    const iosDetails = DarwinNotificationDetails();
    const details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _localNotifications.show(
      DateTime.now().millisecondsSinceEpoch % 100000,
      title,
      body,
      details,
      payload: payload,
    );
  }

  /// Request notification permissions for Android 13+.
  Future<bool> requestAndroidPermissions() async {
    // Permissions are requested via FirebaseMessaging.requestPermission()
    // which is called in initialize()
    return true;
  }

  /// Subscribe to a topic.
  Future<void> subscribeToTopic(String topic) async {
    try {
      await _messaging?.subscribeToTopic(topic);
      if (kDebugMode) {
        print('Subscribed to topic: $topic');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error subscribing to topic: $e');
      }
    }
  }

  /// Unsubscribe from a topic.
  Future<void> unsubscribeFromTopic(String topic) async {
    try {
      await _messaging?.unsubscribeFromTopic(topic);
      if (kDebugMode) {
        print('Unsubscribed from topic: $topic');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error unsubscribing from topic: $e');
      }
    }
  }

  /// Delete the FCM token (useful for logout).
  Future<void> deleteToken() async {
    try {
      await _messaging?.deleteToken();
      if (kDebugMode) {
        print('FCM token deleted');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error deleting FCM token: $e');
      }
    }
  }
}

/// Background message handler (must be top-level function).
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Initialize Firebase for background messages
  await Firebase.initializeApp();
  if (kDebugMode) {
    print('Background message: ${message.notification?.title}');
  }
}
