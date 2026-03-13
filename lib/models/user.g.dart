// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  id: (json['id'] as num).toInt(),
  email: json['email'] as String,
  full_name: json['full_name'] as String?,
  phone: json['phone'] as String?,
  role: json['role'] as String?,
  isActive: json['is_active'] as bool?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'full_name': instance.full_name,
      'phone': instance.phone,
      'role': instance.role,
      'is_active': instance.isActive,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$UserCreateImpl _$$UserCreateImplFromJson(Map<String, dynamic> json) =>
    _$UserCreateImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      full_name: json['full_name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$UserCreateImplToJson(_$UserCreateImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'full_name': instance.full_name,
      'phone': instance.phone,
    };

_$UserLoginImpl _$$UserLoginImplFromJson(Map<String, dynamic> json) =>
    _$UserLoginImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$UserLoginImplToJson(_$UserLoginImpl instance) =>
    <String, dynamic>{'email': instance.email, 'password': instance.password};

_$UserUpdateImpl _$$UserUpdateImplFromJson(Map<String, dynamic> json) =>
    _$UserUpdateImpl(
      full_name: json['full_name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$UserUpdateImplToJson(_$UserUpdateImpl instance) =>
    <String, dynamic>{'full_name': instance.full_name, 'phone': instance.phone};
