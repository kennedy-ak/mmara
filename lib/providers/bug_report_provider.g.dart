// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bug_report_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bugReportDetailHash() => r'94dc5dcf96cb308eb7bee530b5af09b9ebc287c4';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// Provider for a single bug report detail.
///
/// Copied from [bugReportDetail].
@ProviderFor(bugReportDetail)
const bugReportDetailProvider = BugReportDetailFamily();

/// Provider for a single bug report detail.
///
/// Copied from [bugReportDetail].
class BugReportDetailFamily extends Family<AsyncValue<BugReport>> {
  /// Provider for a single bug report detail.
  ///
  /// Copied from [bugReportDetail].
  const BugReportDetailFamily();

  /// Provider for a single bug report detail.
  ///
  /// Copied from [bugReportDetail].
  BugReportDetailProvider call(int bugId) {
    return BugReportDetailProvider(bugId);
  }

  @override
  BugReportDetailProvider getProviderOverride(
    covariant BugReportDetailProvider provider,
  ) {
    return call(provider.bugId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'bugReportDetailProvider';
}

/// Provider for a single bug report detail.
///
/// Copied from [bugReportDetail].
class BugReportDetailProvider extends AutoDisposeFutureProvider<BugReport> {
  /// Provider for a single bug report detail.
  ///
  /// Copied from [bugReportDetail].
  BugReportDetailProvider(int bugId)
    : this._internal(
        (ref) => bugReportDetail(ref as BugReportDetailRef, bugId),
        from: bugReportDetailProvider,
        name: r'bugReportDetailProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$bugReportDetailHash,
        dependencies: BugReportDetailFamily._dependencies,
        allTransitiveDependencies:
            BugReportDetailFamily._allTransitiveDependencies,
        bugId: bugId,
      );

  BugReportDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bugId,
  }) : super.internal();

  final int bugId;

  @override
  Override overrideWith(
    FutureOr<BugReport> Function(BugReportDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BugReportDetailProvider._internal(
        (ref) => create(ref as BugReportDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bugId: bugId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<BugReport> createElement() {
    return _BugReportDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BugReportDetailProvider && other.bugId == bugId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bugId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BugReportDetailRef on AutoDisposeFutureProviderRef<BugReport> {
  /// The parameter `bugId` of this provider.
  int get bugId;
}

class _BugReportDetailProviderElement
    extends AutoDisposeFutureProviderElement<BugReport>
    with BugReportDetailRef {
  _BugReportDetailProviderElement(super.provider);

  @override
  int get bugId => (origin as BugReportDetailProvider).bugId;
}

String _$bugReportSubmitterHash() =>
    r'ba0cc5928ce28b93bcdbb9560fde5cc3edc90492';

/// Provider for bug report submission state.
///
/// Copied from [BugReportSubmitter].
@ProviderFor(BugReportSubmitter)
final bugReportSubmitterProvider =
    AutoDisposeAsyncNotifierProvider<BugReportSubmitter, void>.internal(
      BugReportSubmitter.new,
      name: r'bugReportSubmitterProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$bugReportSubmitterHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$BugReportSubmitter = AutoDisposeAsyncNotifier<void>;
String _$myBugReportsHash() => r'bb9f1d6db09d3f3ef41977171a6edd419314335f';

abstract class _$MyBugReports
    extends BuildlessAutoDisposeAsyncNotifier<List<BugReport>> {
  late final int page;
  late final int pageSize;
  late final String? status;

  FutureOr<List<BugReport>> build({
    int page = 1,
    int pageSize = 10,
    String? status,
  });
}

/// Provider for user's bug reports list.
///
/// Copied from [MyBugReports].
@ProviderFor(MyBugReports)
const myBugReportsProvider = MyBugReportsFamily();

/// Provider for user's bug reports list.
///
/// Copied from [MyBugReports].
class MyBugReportsFamily extends Family<AsyncValue<List<BugReport>>> {
  /// Provider for user's bug reports list.
  ///
  /// Copied from [MyBugReports].
  const MyBugReportsFamily();

  /// Provider for user's bug reports list.
  ///
  /// Copied from [MyBugReports].
  MyBugReportsProvider call({int page = 1, int pageSize = 10, String? status}) {
    return MyBugReportsProvider(page: page, pageSize: pageSize, status: status);
  }

  @override
  MyBugReportsProvider getProviderOverride(
    covariant MyBugReportsProvider provider,
  ) {
    return call(
      page: provider.page,
      pageSize: provider.pageSize,
      status: provider.status,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'myBugReportsProvider';
}

/// Provider for user's bug reports list.
///
/// Copied from [MyBugReports].
class MyBugReportsProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<MyBugReports, List<BugReport>> {
  /// Provider for user's bug reports list.
  ///
  /// Copied from [MyBugReports].
  MyBugReportsProvider({int page = 1, int pageSize = 10, String? status})
    : this._internal(
        () => MyBugReports()
          ..page = page
          ..pageSize = pageSize
          ..status = status,
        from: myBugReportsProvider,
        name: r'myBugReportsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$myBugReportsHash,
        dependencies: MyBugReportsFamily._dependencies,
        allTransitiveDependencies:
            MyBugReportsFamily._allTransitiveDependencies,
        page: page,
        pageSize: pageSize,
        status: status,
      );

  MyBugReportsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.pageSize,
    required this.status,
  }) : super.internal();

  final int page;
  final int pageSize;
  final String? status;

  @override
  FutureOr<List<BugReport>> runNotifierBuild(covariant MyBugReports notifier) {
    return notifier.build(page: page, pageSize: pageSize, status: status);
  }

  @override
  Override overrideWith(MyBugReports Function() create) {
    return ProviderOverride(
      origin: this,
      override: MyBugReportsProvider._internal(
        () => create()
          ..page = page
          ..pageSize = pageSize
          ..status = status,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        pageSize: pageSize,
        status: status,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<MyBugReports, List<BugReport>>
  createElement() {
    return _MyBugReportsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyBugReportsProvider &&
        other.page == page &&
        other.pageSize == pageSize &&
        other.status == status;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, pageSize.hashCode);
    hash = _SystemHash.combine(hash, status.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MyBugReportsRef on AutoDisposeAsyncNotifierProviderRef<List<BugReport>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `pageSize` of this provider.
  int get pageSize;

  /// The parameter `status` of this provider.
  String? get status;
}

class _MyBugReportsProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<MyBugReports, List<BugReport>>
    with MyBugReportsRef {
  _MyBugReportsProviderElement(super.provider);

  @override
  int get page => (origin as MyBugReportsProvider).page;
  @override
  int get pageSize => (origin as MyBugReportsProvider).pageSize;
  @override
  String? get status => (origin as MyBugReportsProvider).status;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
