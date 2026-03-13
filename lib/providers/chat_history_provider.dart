import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/chat_history.dart';
import '../repositories/chat_repository.dart';
import 'api_client_provider.dart';
import 'chat_provider.dart';

part 'chat_history_provider.g.dart';

/// Provider for sessions list.
@riverpod
class SessionsList extends _$SessionsList {
  @override
  FutureOr<SessionsListResponse?> build() => null;

  /// Load sessions list.
  Future<void> load({int limit = 10, int offset = 0}) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(chatRepositoryProvider);
      return await repo.getHistory(limit: limit, offset: offset);
    });
  }

  /// Refresh sessions.
  Future<void> refresh() => load();
}

/// Provider for session detail.
@riverpod
class SessionDetail extends _$SessionDetail {
  @override
  FutureOr<ChatHistoryResponse?> build() => null;

  /// Load session detail.
  Future<void> load(String sessionId) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(chatRepositoryProvider);
      return await repo.getSession(sessionId);
    });
  }
}

/// Provider for deleting sessions.
@riverpod
class SessionDeletion extends _$SessionDeletion {
  @override
  FutureOr<bool> build() => false;

  /// Delete a session.
  Future<void> deleteSession(String sessionId) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(chatRepositoryProvider);
      await repo.deleteSession(sessionId);

      // Refresh the sessions list
      ref.read(sessionsListProvider.notifier).refresh();

      return true;
    });
  }

  /// Delete all sessions.
  Future<void> deleteAllSessions() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(chatRepositoryProvider);
      await repo.deleteAllSessions();

      // Refresh the sessions list
      ref.read(sessionsListProvider.notifier).refresh();

      return true;
    });
  }
}
