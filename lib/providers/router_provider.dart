import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../router/routes.dart';
import '../providers/auth_provider.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/register_screen.dart';
import '../screens/auth/forgot_password_screen.dart';
import '../screens/auth/reset_password_screen.dart';
import '../screens/splash/splash_screen.dart';
import '../screens/chat/chat_screen.dart';
import '../screens/chat/chat_history_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/profile/edit_profile_screen.dart';
import '../screens/profile/change_password_screen.dart';
import '../screens/settings/settings_screen.dart';

/// A ChangeNotifier that listens to a Riverpod provider and notifies GoRouter.
class _AuthNotifier extends ChangeNotifier {
  _AuthNotifier(this._ref) {
    _ref.listen<AuthStatus>(authStateProvider, (previous, next) {
      notifyListeners();
    });
  }

  final Ref _ref;

  AuthStatus get authStatus => _ref.read(authStateProvider);
}

/// Provider for the auth notifier (used as refreshListenable).
final _authNotifierProvider = Provider<_AuthNotifier>((ref) {
  return _AuthNotifier(ref);
});

/// Provider for GoRouter.
final goRouterProvider = Provider<GoRouter>((ref) {
  final authNotifier = ref.watch(_authNotifierProvider);

  return GoRouter(
    initialLocation: Routes.initial,
    debugLogDiagnostics: true,
    refreshListenable: authNotifier,
    redirect: (context, state) {
      final authStatus = authNotifier.authStatus;
      final location = state.matchedLocation;

      // Wait for auth state to be determined
      if (authStatus == AuthStatus.loading) {
        return location == Routes.splash ? null : Routes.splash;
      }

      final isOnSplash = location == Routes.splash;
      final isAuthRoute = Routes.isAuthRoute(location);
      final isProtectedRoute = Routes.isProtectedRoute(location);

      // Once auth is resolved, redirect away from splash
      if (isOnSplash) {
        return authStatus == AuthStatus.authenticated
            ? Routes.chat
            : Routes.login;
      }

      // Redirect unauthenticated users to login
      if (authStatus == AuthStatus.unauthenticated && isProtectedRoute) {
        return Routes.login;
      }

      // Redirect authenticated users away from auth routes
      if (authStatus == AuthStatus.authenticated && isAuthRoute) {
        return Routes.chat;
      }

      return null;
    },
    routes: [
      // Splash route
      GoRoute(
        path: Routes.splash,
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),

      // Auth routes
      GoRoute(
        path: Routes.login,
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: Routes.register,
        name: 'register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: Routes.forgotPassword,
        name: 'forgot_password',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: Routes.resetPassword,
        name: 'reset_password',
        builder: (context, state) => const ResetPasswordScreen(),
      ),

      // Chat routes
      GoRoute(
        path: Routes.chat,
        name: 'chat',
        builder: (context, state) => const ChatScreen(),
      ),
      GoRoute(
        path: '/chat/:sessionId',
        name: 'chat_session',
        builder: (context, state) {
          final sessionId = state.pathParameters['sessionId'] ?? '';
          return ChatScreen(sessionId: sessionId);
        },
      ),

      // History route
      GoRoute(
        path: Routes.history,
        name: 'history',
        builder: (context, state) => const ChatHistoryScreen(),
      ),

      // Profile routes
      GoRoute(
        path: Routes.profile,
        name: 'profile',
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: Routes.editProfile,
        name: 'edit_profile',
        builder: (context, state) => const EditProfileScreen(),
      ),
      GoRoute(
        path: Routes.changePassword,
        name: 'change_password',
        builder: (context, state) => const ChangePasswordScreen(),
      ),

      // Settings route
      GoRoute(
        path: Routes.settings,
        name: 'settings',
        builder: (context, state) => const SettingsScreen(),
      ),
    ],
  );
});
