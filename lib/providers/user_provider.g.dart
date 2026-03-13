// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userRepositoryHash() => r'0ea297f3a95c86d444580cf05607ff8381f62ebb';

/// Provider for user repository.
///
/// Copied from [userRepository].
@ProviderFor(userRepository)
final userRepositoryProvider = AutoDisposeProvider<UserRepository>.internal(
  userRepository,
  name: r'userRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserRepositoryRef = AutoDisposeProviderRef<UserRepository>;
String _$userProfileHash() => r'42f9a3d898ef8228658078888fac035a3bdacdf0';

/// Provider for current user profile.
///
/// Copied from [UserProfile].
@ProviderFor(UserProfile)
final userProfileProvider =
    AutoDisposeAsyncNotifierProvider<UserProfile, User?>.internal(
      UserProfile.new,
      name: r'userProfileProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$userProfileHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$UserProfile = AutoDisposeAsyncNotifier<User?>;
String _$userStatsNotifierHash() => r'8a540bb742d720e03ad84a02206f7f6b878129ae';

/// Provider for user statistics.
///
/// Copied from [UserStatsNotifier].
@ProviderFor(UserStatsNotifier)
final userStatsNotifierProvider =
    AutoDisposeAsyncNotifierProvider<
      UserStatsNotifier,
      models.UserStats?
    >.internal(
      UserStatsNotifier.new,
      name: r'userStatsNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$userStatsNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$UserStatsNotifier = AutoDisposeAsyncNotifier<models.UserStats?>;
String _$passwordChangeHash() => r'8eebe35ee7b39144d3481d603a4e84c79658eab0';

/// Provider for password change operations.
///
/// Copied from [PasswordChange].
@ProviderFor(PasswordChange)
final passwordChangeProvider =
    AutoDisposeAsyncNotifierProvider<PasswordChange, bool>.internal(
      PasswordChange.new,
      name: r'passwordChangeProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$passwordChangeHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$PasswordChange = AutoDisposeAsyncNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
