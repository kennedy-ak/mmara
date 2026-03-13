import 'dart:convert';
import 'package:dio/dio.dart';
import '../models/user.dart';
import '../models/token.dart';
import '../models/password_reset.dart';
import '../services/auth_service.dart';
import '../services/secure_storage_service.dart';
import '../services/api/api_exceptions.dart';

/// Repository that orchestrates authentication operations.
class AuthRepository {
  AuthRepository({
    required AuthService authService,
    required SecureStorageService storage,
  })  : _authService = authService,
        _storage = storage;

  final AuthService _authService;
  final SecureStorageService _storage;

  /// Register a new user.
  Future<User> register(UserCreate request) async {
    final user = await _authService.register(request);
    return user;
  }

  /// Login with email and password.
  /// Returns the user and saves tokens.
  Future<User> login({
    required String email,
    required String password,
  }) async {
    final loginRequest = UserLogin(email: email, password: password);
    final token = await _authService.loginWithEmail(loginRequest);

    // Save tokens
    await _storage.saveAccessToken(token.accessToken);
    await _storage.saveRefreshToken(token.refreshToken);

    // Get user info
    final user = await _authService.getCurrentUser();
    await _saveUserData(user);

    return user;
  }

  /// Logout user - clears tokens and user data.
  Future<void> logout() async {
    try {
      await _authService.logout();
    } finally {
      // Always clear local data
      await _storage.clearAll();
    }
  }

  /// Refresh access token using stored refresh token.
  Future<Token?> refreshToken() async {
    final refreshToken = await _storage.getRefreshToken();
    if (refreshToken == null || refreshToken.isEmpty) {
      return null;
    }

    try {
      final token = await _authService.refreshToken(refreshToken);

      // Save new tokens
      await _storage.saveAccessToken(token.accessToken);
      await _storage.saveRefreshToken(token.refreshToken);

      return token;
    } on ApiException {
      // Refresh failed - clear tokens
      await _storage.clearTokens();
      return null;
    }
  }

  /// Check if user is logged in (has valid access token).
  Future<bool> isLoggedIn() async {
    return await _storage.hasAccessToken();
  }

  /// Get current user from storage.
  Future<User?> getCurrentUser() async {
    final userDataJson = await _storage.getUserData();
    if (userDataJson == null) return null;

    try {
      final userData = jsonDecode(userDataJson) as Map<String, dynamic>;
      return User.fromJson(userData);
    } catch (_) {
      return null;
    }
  }

  /// Request password reset email.
  Future<PasswordResetResponse> requestPasswordReset(String email) async {
    final request = PasswordResetRequest(email: email);
    return await _authService.requestPasswordReset(request);
  }

  /// Confirm password reset with token.
  Future<PasswordResetResponse> confirmPasswordReset({
    required String token,
    required String newPassword,
  }) async {
    final request = PasswordResetConfirm(
      token: token,
      newPassword: newPassword,
    );
    final response = await _authService.confirmPasswordReset(request);

    // If reset successful, clear any existing tokens
    if (response.success) {
      await _storage.clearTokens();
    }

    return response;
  }

  /// Change password for authenticated user.
  Future<PasswordResetResponse> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    final request = ChangePasswordRequest(
      oldPassword: oldPassword,
      newPassword: newPassword,
    );
    return await _authService.changePassword(request);
  }

  /// Save user data to storage.
  Future<void> _saveUserData(User user) async {
    final userDataJson = jsonEncode(user.toJson());
    await _storage.saveUserData(userDataJson);
  }
}
