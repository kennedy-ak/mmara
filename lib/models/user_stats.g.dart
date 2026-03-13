// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserStatsImpl _$$UserStatsImplFromJson(Map<String, dynamic> json) =>
    _$UserStatsImpl(
      totalQueries: (json['total_queries'] as num).toInt(),
      queriesThisMonth: (json['queries_this_month'] as num).toInt(),
      avgResponseTime: (json['avg_response_time'] as num).toDouble(),
      satisfactionScore: (json['satisfaction_score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$UserStatsImplToJson(_$UserStatsImpl instance) =>
    <String, dynamic>{
      'total_queries': instance.totalQueries,
      'queries_this_month': instance.queriesThisMonth,
      'avg_response_time': instance.avgResponseTime,
      'satisfaction_score': instance.satisfactionScore,
    };
