// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentUserHash() => r'7f7e61f612ec60ef685d1edfd21ec5feb219968a';

/// Provider for current user.
///
/// Copied from [currentUser].
@ProviderFor(currentUser)
final currentUserProvider = AutoDisposeFutureProvider<User?>.internal(
  currentUser,
  name: r'currentUserProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentUserRef = AutoDisposeFutureProviderRef<User?>;
String _$authStateHash() => r'53395a0169c4d7764b624b3ceae702b3151ca18f';

/// Provider for authentication state.
///
/// Copied from [AuthState].
@ProviderFor(AuthState)
final authStateProvider = NotifierProvider<AuthState, AuthStatus>.internal(
  AuthState.new,
  name: r'authStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthState = Notifier<AuthStatus>;
String _$loginNotifierHash() => r'7dbd27840685f8986b4909a50b41795baaebe159';

/// Notifier for login operations.
///
/// Copied from [LoginNotifier].
@ProviderFor(LoginNotifier)
final loginNotifierProvider =
    AutoDisposeAsyncNotifierProvider<LoginNotifier, User?>.internal(
      LoginNotifier.new,
      name: r'loginNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$loginNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$LoginNotifier = AutoDisposeAsyncNotifier<User?>;
String _$registerNotifierHash() => r'cf7857e86c00874baba2f77f63cd78fbea97043d';

/// Notifier for registration operations.
///
/// Copied from [RegisterNotifier].
@ProviderFor(RegisterNotifier)
final registerNotifierProvider =
    AutoDisposeAsyncNotifierProvider<RegisterNotifier, User?>.internal(
      RegisterNotifier.new,
      name: r'registerNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$registerNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$RegisterNotifier = AutoDisposeAsyncNotifier<User?>;
String _$logoutNotifierHash() => r'ffabfa3c566b154316f5046cabf802c0f4641a22';

/// Notifier for logout operations.
///
/// Copied from [LogoutNotifier].
@ProviderFor(LogoutNotifier)
final logoutNotifierProvider =
    AutoDisposeAsyncNotifierProvider<LogoutNotifier, bool>.internal(
      LogoutNotifier.new,
      name: r'logoutNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$logoutNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$LogoutNotifier = AutoDisposeAsyncNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
