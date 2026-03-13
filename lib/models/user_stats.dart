import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_stats.freezed.dart';
part 'user_stats.g.dart';

/// User statistics model.
@freezed
class UserStats with _$UserStats {
  const factory UserStats({
    @JsonKey(name: 'total_queries') required int totalQueries,
    @JsonKey(name: 'queries_this_month') required int queriesThisMonth,
    @JsonKey(name: 'avg_response_time') required double avgResponseTime,
    @JsonKey(name: 'satisfaction_score') double? satisfactionScore,
  }) = _UserStats;

  factory UserStats.fromJson(Map<String, dynamic> json) =>
      _$UserStatsFromJson(json);
}
