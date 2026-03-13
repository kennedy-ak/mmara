import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/user.dart';
import '../models/user_stats.dart' as models;
import '../models/password_reset.dart';
import '../repositories/user_repository.dart';
import '../services/user_service.dart';
import 'api_client_provider.dart';

part 'user_provider.g.dart';

/// Provider for user repository.
@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  final userService = ref.watch(userServiceProvider);
  return UserRepository(userService: userService);
}

/// Provider for current user profile.
@riverpod
class UserProfile extends _$UserProfile {
  @override
  FutureOr<User?> build() => null;

  /// Load user profile.
  Future<void> load() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(userRepositoryProvider);
      return await repo.getProfile();
    });
  }

  /// Update user profile.
  Future<void> updateProfile(UserUpdate request) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(userRepositoryProvider);
      return await repo.updateProfile(request);
    });
  }
}

/// Provider for user statistics.
@riverpod
class UserStatsNotifier extends _$UserStatsNotifier {
  @override
  FutureOr<models.UserStats?> build() => null;

  /// Load user statistics.
  Future<void> load() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(userRepositoryProvider);
      return await repo.getStats();
    });
  }
}

/// Provider for password change operations.
@riverpod
class PasswordChange extends _$PasswordChange {
  @override
  FutureOr<bool> build() => false;

  /// Change password.
  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(userRepositoryProvider);
      await repo.changePassword(
        oldPassword: oldPassword,
        newPassword: newPassword,
      );
      return true;
    });
  }
}
