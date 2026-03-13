// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiErrorImpl _$$ApiErrorImplFromJson(Map<String, dynamic> json) =>
    _$ApiErrorImpl(
      detail: json['detail'] as String,
      status: (json['status'] as num?)?.toInt(),
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$ApiErrorImplToJson(_$ApiErrorImpl instance) =>
    <String, dynamic>{
      'detail': instance.detail,
      'status': instance.status,
      'code': instance.code,
    };

_$HTTPValidationErrorImpl _$$HTTPValidationErrorImplFromJson(
  Map<String, dynamic> json,
) => _$HTTPValidationErrorImpl(
  detail: (json['detail'] as List<dynamic>)
      .map((e) => ValidationError.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$HTTPValidationErrorImplToJson(
  _$HTTPValidationErrorImpl instance,
) => <String, dynamic>{'detail': instance.detail};

_$ValidationErrorImpl _$$ValidationErrorImplFromJson(
  Map<String, dynamic> json,
) => _$ValidationErrorImpl(
  loc: json['loc'] as List<dynamic>,
  msg: json['msg'] as String,
  type: json['type'] as String,
  input: json['input'],
  ctx: json['ctx'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$ValidationErrorImplToJson(
  _$ValidationErrorImpl instance,
) => <String, dynamic>{
  'loc': instance.loc,
  'msg': instance.msg,
  'type': instance.type,
  'input': instance.input,
  'ctx': instance.ctx,
};
