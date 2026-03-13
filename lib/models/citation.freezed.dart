// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'citation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Citation _$CitationFromJson(Map<String, dynamic> json) {
  return _Citation.fromJson(json);
}

/// @nodoc
mixin _$Citation {
  String get act => throw _privateConstructorUsedError;
  String? get section => throw _privateConstructorUsedError;
  String? get subsection => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_file')
  String? get sourceFile => throw _privateConstructorUsedError;

  /// Serializes this Citation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Citation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CitationCopyWith<Citation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationCopyWith<$Res> {
  factory $CitationCopyWith(Citation value, $Res Function(Citation) then) =
      _$CitationCopyWithImpl<$Res, Citation>;
  @useResult
  $Res call({
    String act,
    String? section,
    String? subsection,
    String text,
    @JsonKey(name: 'source_file') String? sourceFile,
  });
}

/// @nodoc
class _$CitationCopyWithImpl<$Res, $Val extends Citation>
    implements $CitationCopyWith<$Res> {
  _$CitationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Citation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? act = null,
    Object? section = freezed,
    Object? subsection = freezed,
    Object? text = null,
    Object? sourceFile = freezed,
  }) {
    return _then(
      _value.copyWith(
            act: null == act
                ? _value.act
                : act // ignore: cast_nullable_to_non_nullable
                      as String,
            section: freezed == section
                ? _value.section
                : section // ignore: cast_nullable_to_non_nullable
                      as String?,
            subsection: freezed == subsection
                ? _value.subsection
                : subsection // ignore: cast_nullable_to_non_nullable
                      as String?,
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
            sourceFile: freezed == sourceFile
                ? _value.sourceFile
                : sourceFile // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CitationImplCopyWith<$Res>
    implements $CitationCopyWith<$Res> {
  factory _$$CitationImplCopyWith(
    _$CitationImpl value,
    $Res Function(_$CitationImpl) then,
  ) = __$$CitationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String act,
    String? section,
    String? subsection,
    String text,
    @JsonKey(name: 'source_file') String? sourceFile,
  });
}

/// @nodoc
class __$$CitationImplCopyWithImpl<$Res>
    extends _$CitationCopyWithImpl<$Res, _$CitationImpl>
    implements _$$CitationImplCopyWith<$Res> {
  __$$CitationImplCopyWithImpl(
    _$CitationImpl _value,
    $Res Function(_$CitationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Citation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? act = null,
    Object? section = freezed,
    Object? subsection = freezed,
    Object? text = null,
    Object? sourceFile = freezed,
  }) {
    return _then(
      _$CitationImpl(
        act: null == act
            ? _value.act
            : act // ignore: cast_nullable_to_non_nullable
                  as String,
        section: freezed == section
            ? _value.section
            : section // ignore: cast_nullable_to_non_nullable
                  as String?,
        subsection: freezed == subsection
            ? _value.subsection
            : subsection // ignore: cast_nullable_to_non_nullable
                  as String?,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        sourceFile: freezed == sourceFile
            ? _value.sourceFile
            : sourceFile // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationImpl implements _Citation {
  const _$CitationImpl({
    required this.act,
    this.section,
    this.subsection,
    required this.text,
    @JsonKey(name: 'source_file') this.sourceFile,
  });

  factory _$CitationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationImplFromJson(json);

  @override
  final String act;
  @override
  final String? section;
  @override
  final String? subsection;
  @override
  final String text;
  @override
  @JsonKey(name: 'source_file')
  final String? sourceFile;

  @override
  String toString() {
    return 'Citation(act: $act, section: $section, subsection: $subsection, text: $text, sourceFile: $sourceFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationImpl &&
            (identical(other.act, act) || other.act == act) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.subsection, subsection) ||
                other.subsection == subsection) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.sourceFile, sourceFile) ||
                other.sourceFile == sourceFile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, act, section, subsection, text, sourceFile);

  /// Create a copy of Citation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationImplCopyWith<_$CitationImpl> get copyWith =>
      __$$CitationImplCopyWithImpl<_$CitationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationImplToJson(this);
  }
}

abstract class _Citation implements Citation {
  const factory _Citation({
    required final String act,
    final String? section,
    final String? subsection,
    required final String text,
    @JsonKey(name: 'source_file') final String? sourceFile,
  }) = _$CitationImpl;

  factory _Citation.fromJson(Map<String, dynamic> json) =
      _$CitationImpl.fromJson;

  @override
  String get act;
  @override
  String? get section;
  @override
  String? get subsection;
  @override
  String get text;
  @override
  @JsonKey(name: 'source_file')
  String? get sourceFile;

  /// Create a copy of Citation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CitationImplCopyWith<_$CitationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
