// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_reset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordResetRequestImpl _$$PasswordResetRequestImplFromJson(
  Map<String, dynamic> json,
) => _$PasswordResetRequestImpl(email: json['email'] as String);

Map<String, dynamic> _$$PasswordResetRequestImplToJson(
  _$PasswordResetRequestImpl instance,
) => <String, dynamic>{'email': instance.email};

_$PasswordResetConfirmImpl _$$PasswordResetConfirmImplFromJson(
  Map<String, dynamic> json,
) => _$PasswordResetConfirmImpl(
  token: json['token'] as String,
  newPassword: json['new_password'] as String,
);

Map<String, dynamic> _$$PasswordResetConfirmImplToJson(
  _$PasswordResetConfirmImpl instance,
) => <String, dynamic>{
  'token': instance.token,
  'new_password': instance.newPassword,
};

_$PasswordResetResponseImpl _$$PasswordResetResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PasswordResetResponseImpl(
  message: json['message'] as String,
  success: json['success'] as bool? ?? true,
);

Map<String, dynamic> _$$PasswordResetResponseImplToJson(
  _$PasswordResetResponseImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'success': instance.success,
};

_$ChangePasswordRequestImpl _$$ChangePasswordRequestImplFromJson(
  Map<String, dynamic> json,
) => _$ChangePasswordRequestImpl(
  oldPassword: json['old_password'] as String,
  newPassword: json['new_password'] as String,
);

Map<String, dynamic> _$$ChangePasswordRequestImplToJson(
  _$ChangePasswordRequestImpl instance,
) => <String, dynamic>{
  'old_password': instance.oldPassword,
  'new_password': instance.newPassword,
};
