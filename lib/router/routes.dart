/// Route path constants used throughout the app.
class Routes {
  Routes._();

  // Authentication routes
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';

  // Chat routes
  static const String chat = '/chat';
  static const String chatSession = '/chat/:sessionId';
  static const String history = '/history';

  // Profile routes
  static const String profile = '/profile';
  static const String editProfile = '/profile/edit';
  static const String changePassword = '/profile/change-password';

  // Settings routes
  static const String settings = '/settings';
  static const String bugReport = '/settings/bug-report';

  // Initial route
  static const String initial = splash;

  // Helper to build chat session path
  static String chatSessionPath(String sessionId) => '/chat/$sessionId';

  // Helper to extract session ID from path
  static String? extractSessionId(String path) {
    if (path.startsWith(chat) && path.length > chat.length + 1) {
      return path.substring(chat.length + 1);
    }
    return null;
  }

  // Routes that require authentication
  static const Set<String> protectedRoutes = {
    chat,
    history,
    profile,
    editProfile,
    changePassword,
    settings,
    bugReport,
  };

  // Routes that redirect to chat if already authenticated
  static const Set<String> authRoutes = {
    splash,
    login,
    register,
    forgotPassword,
    resetPassword,
  };

  // Check if a route requires authentication
  static bool isProtectedRoute(String path) {
    // Check for dynamic routes
    if (path.startsWith(chat) && path != chat) return true;
    return protectedRoutes.any(path.startsWith);
  }

  // Check if a route is an auth route
  static bool isAuthRoute(String path) {
    return authRoutes.any(path.startsWith);
  }
}
