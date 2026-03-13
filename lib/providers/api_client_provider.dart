import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../config/app_config.dart';
import '../services/api/api_client.dart';
import '../services/api/auth_interceptor.dart';
import '../services/secure_storage_service.dart';
import '../services/auth_service.dart';
import '../services/chat_service.dart';
import '../services/user_service.dart';
import '../repositories/auth_repository.dart';
import '../models/token.dart';

/// Provider for app configuration.
final configProvider = Provider<AppConfig>((ref) {
  return AppConfig.current;
});

/// Provider for secure storage service.
final secureStorageProvider = Provider<SecureStorageService>((ref) {
  return SecureStorageService();
});

/// Provider for auth interceptor.
/// Uses a separate Dio instance for token refresh to avoid circular dependency.
final authInterceptorProvider = Provider<AuthInterceptor>((ref) {
  final storage = ref.watch(secureStorageProvider);
  final config = ref.watch(configProvider);

  return AuthInterceptor(
    storage: storage,
    onRefresh: () async {
      // Use a plain Dio (no auth interceptor) to avoid circular dependency
      final refreshDio = Dio(BaseOptions(
        baseUrl: config.fullApiBaseUrl,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ));

      final refreshToken = await storage.getRefreshToken();
      if (refreshToken == null || refreshToken.isEmpty) return null;

      try {
        final response = await refreshDio.post(
          '/auth/refresh',
          queryParameters: {'refresh_token': refreshToken},
        );
        final token = Token.fromJson(response.data as Map<String, dynamic>);
        await storage.saveAccessToken(token.accessToken);
        await storage.saveRefreshToken(token.refreshToken);
        return token.accessToken;
      } catch (_) {
        await storage.clearTokens();
        return null;
      }
    },
  );
});

/// Provider for Dio instance with auth interceptor.
final dioProvider = Provider<Dio>((ref) {
  final config = ref.watch(configProvider);
  final authInterceptor = ref.watch(authInterceptorProvider);

  final apiClient = ApiClient(
    config: config,
    interceptors: [authInterceptor],
  );
  return apiClient.dio;
});

/// Provider for API client.
final apiClientProvider = Provider<ApiClient>((ref) {
  final config = ref.watch(configProvider);
  final authInterceptor = ref.watch(authInterceptorProvider);

  return ApiClient(
    config: config,
    interceptors: [authInterceptor],
  );
});

/// Provider for auth service.
final authServiceProvider = Provider<AuthService>((ref) {
  final dio = ref.watch(dioProvider);
  return AuthService(dio);
});

/// Provider for chat service.
final chatServiceProvider = Provider<ChatService>((ref) {
  final dio = ref.watch(dioProvider);
  return ChatService(dio);
});

/// Provider for user service.
final userServiceProvider = Provider<UserService>((ref) {
  final dio = ref.watch(dioProvider);
  return UserService(dio);
});

/// Provider for auth repository.
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final authService = ref.watch(authServiceProvider);
  final storage = ref.watch(secureStorageProvider);
  return AuthRepository(
    authService: authService,
    storage: storage,
  );
});
