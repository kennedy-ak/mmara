// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatRepositoryHash() => r'7202f82b0be9c93e4b1b8b4de14c40d4334d55a0';

/// Provider for chat repository.
///
/// Copied from [chatRepository].
@ProviderFor(chatRepository)
final chatRepositoryProvider = AutoDisposeProvider<ChatRepository>.internal(
  chatRepository,
  name: r'chatRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$chatRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ChatRepositoryRef = AutoDisposeProviderRef<ChatRepository>;
String _$streamingChatHash() => r'0f6f1d38e0847e7b8b0cbae9c5d895bb8e5f4c38';

/// Provider for streaming chat state
///
/// Copied from [StreamingChat].
@ProviderFor(StreamingChat)
final streamingChatProvider =
    AutoDisposeNotifierProvider<StreamingChat, StreamingChatState>.internal(
      StreamingChat.new,
      name: r'streamingChatProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$streamingChatHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$StreamingChat = AutoDisposeNotifier<StreamingChatState>;
String _$chatMessagesHash() => r'417955ff313b1522801d1c26c24a95868c7ecd0d';

/// Provider for chat messages state.
///
/// Copied from [ChatMessages].
@ProviderFor(ChatMessages)
final chatMessagesProvider =
    AutoDisposeNotifierProvider<ChatMessages, List<ChatMessage>>.internal(
      ChatMessages.new,
      name: r'chatMessagesProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$chatMessagesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ChatMessages = AutoDisposeNotifier<List<ChatMessage>>;
String _$currentSessionIdHash() => r'c20653c868c3c264b518390d2bfb3f95b99d1b35';

/// Provider for current session ID with persistence.
///
/// Copied from [CurrentSessionId].
@ProviderFor(CurrentSessionId)
final currentSessionIdProvider =
    AutoDisposeNotifierProvider<CurrentSessionId, String?>.internal(
      CurrentSessionId.new,
      name: r'currentSessionIdProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$currentSessionIdHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CurrentSessionId = AutoDisposeNotifier<String?>;
String _$sendMessageNotifierHash() =>
    r'6ae64327d3998dbdefba06c2cc4a0e9b905682fd';

/// Notifier for sending messages.
///
/// Copied from [SendMessageNotifier].
@ProviderFor(SendMessageNotifier)
final sendMessageNotifierProvider =
    AutoDisposeAsyncNotifierProvider<
      SendMessageNotifier,
      ChatResponse?
    >.internal(
      SendMessageNotifier.new,
      name: r'sendMessageNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$sendMessageNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SendMessageNotifier = AutoDisposeAsyncNotifier<ChatResponse?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
