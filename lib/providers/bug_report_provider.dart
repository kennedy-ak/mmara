import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/bug_report.dart';
import '../repositories/bug_report_repository.dart';

part 'bug_report_provider.g.dart';

/// Provider for bug report submission state.
@riverpod
class BugReportSubmitter extends _$BugReportSubmitter {
  @override
  FutureOr<void> build() {}

  Future<void> submitBugReport(BugReportRequest request) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repository = ref.read(bugReportRepositoryProvider);
      await repository.submitBugReport(request);
    });
  }

  void reset() {
    state = const AsyncData(null);
  }
}

/// Provider for user's bug reports list.
@riverpod
class MyBugReports extends _$MyBugReports {
  @override
  Future<List<BugReport>> build({
    int page = 1,
    int pageSize = 10,
    String? status,
  }) async {
    final repository = ref.read(bugReportRepositoryProvider);
    return repository.getMyReports(
      page: page,
      pageSize: pageSize,
      status: status,
    );
  }

  /// Refresh the list of bug reports.
  Future<void> refresh() {
    return Future.delayed(
      const Duration(milliseconds: 300),
      () => ref.invalidateSelf(),
    );
  }
}

/// Provider for a single bug report detail.
@riverpod
Future<BugReport> bugReportDetail(Ref ref, int bugId) async {
  final repository = ref.read(bugReportRepositoryProvider);
  return repository.getBugDetail(bugId);
}
