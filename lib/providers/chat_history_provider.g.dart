// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_history_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sessionsListHash() => r'51b533600c243e03b0f3a2955fb1dbe4a7dadad9';

/// Provider for sessions list.
///
/// Copied from [SessionsList].
@ProviderFor(SessionsList)
final sessionsListProvider =
    AutoDisposeAsyncNotifierProvider<
      SessionsList,
      SessionsListResponse?
    >.internal(
      SessionsList.new,
      name: r'sessionsListProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$sessionsListHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SessionsList = AutoDisposeAsyncNotifier<SessionsListResponse?>;
String _$sessionDetailHash() => r'23b2eba4fbeef654aa205d6080276750232c7d03';

/// Provider for session detail.
///
/// Copied from [SessionDetail].
@ProviderFor(SessionDetail)
final sessionDetailProvider =
    AutoDisposeAsyncNotifierProvider<
      SessionDetail,
      ChatHistoryResponse?
    >.internal(
      SessionDetail.new,
      name: r'sessionDetailProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$sessionDetailHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SessionDetail = AutoDisposeAsyncNotifier<ChatHistoryResponse?>;
String _$sessionDeletionHash() => r'7d1d856a68d924ce6a3b53cc443894d8eb9febad';

/// Provider for deleting sessions.
///
/// Copied from [SessionDeletion].
@ProviderFor(SessionDeletion)
final sessionDeletionProvider =
    AutoDisposeAsyncNotifierProvider<SessionDeletion, bool>.internal(
      SessionDeletion.new,
      name: r'sessionDeletionProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$sessionDeletionHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SessionDeletion = AutoDisposeAsyncNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
