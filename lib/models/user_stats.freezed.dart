// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserStats _$UserStatsFromJson(Map<String, dynamic> json) {
  return _UserStats.fromJson(json);
}

/// @nodoc
mixin _$UserStats {
  @JsonKey(name: 'total_queries')
  int get totalQueries => throw _privateConstructorUsedError;
  @JsonKey(name: 'queries_this_month')
  int get queriesThisMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_response_time')
  double get avgResponseTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'satisfaction_score')
  double? get satisfactionScore => throw _privateConstructorUsedError;

  /// Serializes this UserStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStatsCopyWith<UserStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatsCopyWith<$Res> {
  factory $UserStatsCopyWith(UserStats value, $Res Function(UserStats) then) =
      _$UserStatsCopyWithImpl<$Res, UserStats>;
  @useResult
  $Res call({
    @JsonKey(name: 'total_queries') int totalQueries,
    @JsonKey(name: 'queries_this_month') int queriesThisMonth,
    @JsonKey(name: 'avg_response_time') double avgResponseTime,
    @JsonKey(name: 'satisfaction_score') double? satisfactionScore,
  });
}

/// @nodoc
class _$UserStatsCopyWithImpl<$Res, $Val extends UserStats>
    implements $UserStatsCopyWith<$Res> {
  _$UserStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalQueries = null,
    Object? queriesThisMonth = null,
    Object? avgResponseTime = null,
    Object? satisfactionScore = freezed,
  }) {
    return _then(
      _value.copyWith(
            totalQueries: null == totalQueries
                ? _value.totalQueries
                : totalQueries // ignore: cast_nullable_to_non_nullable
                      as int,
            queriesThisMonth: null == queriesThisMonth
                ? _value.queriesThisMonth
                : queriesThisMonth // ignore: cast_nullable_to_non_nullable
                      as int,
            avgResponseTime: null == avgResponseTime
                ? _value.avgResponseTime
                : avgResponseTime // ignore: cast_nullable_to_non_nullable
                      as double,
            satisfactionScore: freezed == satisfactionScore
                ? _value.satisfactionScore
                : satisfactionScore // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserStatsImplCopyWith<$Res>
    implements $UserStatsCopyWith<$Res> {
  factory _$$UserStatsImplCopyWith(
    _$UserStatsImpl value,
    $Res Function(_$UserStatsImpl) then,
  ) = __$$UserStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'total_queries') int totalQueries,
    @JsonKey(name: 'queries_this_month') int queriesThisMonth,
    @JsonKey(name: 'avg_response_time') double avgResponseTime,
    @JsonKey(name: 'satisfaction_score') double? satisfactionScore,
  });
}

/// @nodoc
class __$$UserStatsImplCopyWithImpl<$Res>
    extends _$UserStatsCopyWithImpl<$Res, _$UserStatsImpl>
    implements _$$UserStatsImplCopyWith<$Res> {
  __$$UserStatsImplCopyWithImpl(
    _$UserStatsImpl _value,
    $Res Function(_$UserStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalQueries = null,
    Object? queriesThisMonth = null,
    Object? avgResponseTime = null,
    Object? satisfactionScore = freezed,
  }) {
    return _then(
      _$UserStatsImpl(
        totalQueries: null == totalQueries
            ? _value.totalQueries
            : totalQueries // ignore: cast_nullable_to_non_nullable
                  as int,
        queriesThisMonth: null == queriesThisMonth
            ? _value.queriesThisMonth
            : queriesThisMonth // ignore: cast_nullable_to_non_nullable
                  as int,
        avgResponseTime: null == avgResponseTime
            ? _value.avgResponseTime
            : avgResponseTime // ignore: cast_nullable_to_non_nullable
                  as double,
        satisfactionScore: freezed == satisfactionScore
            ? _value.satisfactionScore
            : satisfactionScore // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserStatsImpl implements _UserStats {
  const _$UserStatsImpl({
    @JsonKey(name: 'total_queries') required this.totalQueries,
    @JsonKey(name: 'queries_this_month') required this.queriesThisMonth,
    @JsonKey(name: 'avg_response_time') required this.avgResponseTime,
    @JsonKey(name: 'satisfaction_score') this.satisfactionScore,
  });

  factory _$UserStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatsImplFromJson(json);

  @override
  @JsonKey(name: 'total_queries')
  final int totalQueries;
  @override
  @JsonKey(name: 'queries_this_month')
  final int queriesThisMonth;
  @override
  @JsonKey(name: 'avg_response_time')
  final double avgResponseTime;
  @override
  @JsonKey(name: 'satisfaction_score')
  final double? satisfactionScore;

  @override
  String toString() {
    return 'UserStats(totalQueries: $totalQueries, queriesThisMonth: $queriesThisMonth, avgResponseTime: $avgResponseTime, satisfactionScore: $satisfactionScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatsImpl &&
            (identical(other.totalQueries, totalQueries) ||
                other.totalQueries == totalQueries) &&
            (identical(other.queriesThisMonth, queriesThisMonth) ||
                other.queriesThisMonth == queriesThisMonth) &&
            (identical(other.avgResponseTime, avgResponseTime) ||
                other.avgResponseTime == avgResponseTime) &&
            (identical(other.satisfactionScore, satisfactionScore) ||
                other.satisfactionScore == satisfactionScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalQueries,
    queriesThisMonth,
    avgResponseTime,
    satisfactionScore,
  );

  /// Create a copy of UserStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatsImplCopyWith<_$UserStatsImpl> get copyWith =>
      __$$UserStatsImplCopyWithImpl<_$UserStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatsImplToJson(this);
  }
}

abstract class _UserStats implements UserStats {
  const factory _UserStats({
    @JsonKey(name: 'total_queries') required final int totalQueries,
    @JsonKey(name: 'queries_this_month') required final int queriesThisMonth,
    @JsonKey(name: 'avg_response_time') required final double avgResponseTime,
    @JsonKey(name: 'satisfaction_score') final double? satisfactionScore,
  }) = _$UserStatsImpl;

  factory _UserStats.fromJson(Map<String, dynamic> json) =
      _$UserStatsImpl.fromJson;

  @override
  @JsonKey(name: 'total_queries')
  int get totalQueries;
  @override
  @JsonKey(name: 'queries_this_month')
  int get queriesThisMonth;
  @override
  @JsonKey(name: 'avg_response_time')
  double get avgResponseTime;
  @override
  @JsonKey(name: 'satisfaction_score')
  double? get satisfactionScore;

  /// Create a copy of UserStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStatsImplCopyWith<_$UserStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
