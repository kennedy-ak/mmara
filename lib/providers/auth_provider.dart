import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/user.dart';
import '../models/token.dart';
import '../repositories/auth_repository.dart';
import '../services/api/api_exceptions.dart';
import 'api_client_provider.dart';

part 'auth_provider.g.dart';

/// Authentication state for navigation.
enum AuthStatus {
  /// User is not authenticated.
  unauthenticated,

  /// User is authenticated.
  authenticated,

  /// Auth state is being determined.
  loading,
}

/// Provider for authentication state.
@Riverpod(keepAlive: true)
class AuthState extends _$AuthState {
  @override
  AuthStatus build() {
    // Start with loading state while checking auth
    _initAuthState();
    return AuthStatus.loading;
  }

  /// Initialize auth state from storage.
  Future<void> _initAuthState() async {
    try {
      final repo = ref.read(authRepositoryProvider);
      final isLoggedIn = await repo.isLoggedIn();

      if (isLoggedIn) {
        state = AuthStatus.authenticated;
      } else {
        state = AuthStatus.unauthenticated;
      }
    } catch (e) {
      print('[Auth] Init error: $e');
      state = AuthStatus.unauthenticated;
    }
  }

  /// Set auth state manually.
  void setState(AuthStatus newStatus) {
    state = newStatus;
  }

  /// Login with email and password.
  Future<User> login({
    required String email,
    required String password,
  }) async {
    final repo = ref.read(authRepositoryProvider);
    try {
      final user = await repo.login(email: email, password: password);
      state = AuthStatus.authenticated;
      return user;
    } on ApiException catch (e) {
      state = AuthStatus.unauthenticated;
      rethrow;
    }
  }

  /// Register a new user.
  Future<User> register(UserCreate request) async {
    final repo = ref.read(authRepositoryProvider);
    try {
      final user = await repo.register(request);
      // After registration, auto-login
      await login(email: request.email, password: request.password);
      return user;
    } on ApiException catch (e) {
      state = AuthStatus.unauthenticated;
      rethrow;
    }
  }

  /// Logout user.
  Future<void> logout() async {
    final repo = ref.read(authRepositoryProvider);
    await repo.logout();
    state = AuthStatus.unauthenticated;
  }
}

/// Provider for current user.
@riverpod
Future<User?> currentUser(CurrentUserRef ref) async {
  final authStatus = ref.watch(authStateProvider);
  if (authStatus == AuthStatus.unauthenticated) {
    return null;
  }

  final repo = ref.read(authRepositoryProvider);
  return await repo.getCurrentUser();
}

/// Notifier for login operations.
@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  FutureOr<User?> build() => null;

  /// Login with email and password.
  Future<void> login({
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return await ref.read(authStateProvider.notifier).login(
            email: email,
            password: password,
          );
    });
  }

  /// Reset state.
  void reset() {
    state = const AsyncValue.data(null);
  }
}

/// Notifier for registration operations.
@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  @override
  FutureOr<User?> build() => null;

  /// Register a new user.
  Future<void> register(UserCreate request) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return await ref.read(authStateProvider.notifier).register(request);
    });
  }

  /// Reset state.
  void reset() {
    state = const AsyncValue.data(null);
  }
}

/// Notifier for logout operations.
@riverpod
class LogoutNotifier extends _$LogoutNotifier {
  @override
  FutureOr<bool> build() => false;

  /// Logout current user.
  Future<void> logout() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.read(authStateProvider.notifier).logout();
      return true;
    });
  }
}
