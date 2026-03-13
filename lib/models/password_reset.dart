import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_reset.freezed.dart';
part 'password_reset.g.dart';

/// Password reset request model.
@freezed
class PasswordResetRequest with _$PasswordResetRequest {
  const factory PasswordResetRequest({
    required String email,
  }) = _PasswordResetRequest;

  factory PasswordResetRequest.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetRequestFromJson(json);
}

/// Password reset confirmation model.
@freezed
class PasswordResetConfirm with _$PasswordResetConfirm {
  const factory PasswordResetConfirm({
    required String token,
    @JsonKey(name: 'new_password') required String newPassword,
  }) = _PasswordResetConfirm;

  factory PasswordResetConfirm.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetConfirmFromJson(json);
}

/// Password reset response model.
@freezed
class PasswordResetResponse with _$PasswordResetResponse {
  const factory PasswordResetResponse({
    required String message,
    @JsonKey(name: 'success') @Default(true) bool success,
  }) = _PasswordResetResponse;

  factory PasswordResetResponse.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetResponseFromJson(json);
}

/// Change password request model.
@freezed
class ChangePasswordRequest with _$ChangePasswordRequest {
  const factory ChangePasswordRequest({
    @JsonKey(name: 'old_password') required String oldPassword,
    @JsonKey(name: 'new_password') required String newPassword,
  }) = _ChangePasswordRequest;

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);
}
