import '../models/user.dart';
import '../models/user_stats.dart';
import '../models/password_reset.dart';
import '../services/user_service.dart';

/// Repository that orchestrates user operations.
class UserRepository {
  UserRepository({
    required UserService userService,
  }) : _userService = userService;

  final UserService _userService;

  /// Get current user profile.
  Future<User> getProfile() async {
    return await _userService.getProfile();
  }

  /// Update current user profile.
  Future<User> updateProfile(UserUpdate request) async {
    return await _userService.updateProfile(request);
  }

  /// Get user statistics.
  Future<UserStats> getStats() async {
    return await _userService.getStats();
  }

  /// Change password for authenticated user.
  Future<PasswordResetResponse> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    return await _userService.changePassword(
      ChangePasswordRequest(
        oldPassword: oldPassword,
        newPassword: newPassword,
      ),
    );
  }
}
