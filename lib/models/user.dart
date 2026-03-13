import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// User model returned from API.
@freezed
class User with _$User {
  const factory User({
    required int id,
    required String email,
    String? full_name,
    String? phone,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

/// User registration model.
@freezed
class UserCreate with _$UserCreate {
  const factory UserCreate({
    required String email,
    required String password,
    String? full_name,
    String? phone,
  }) = _UserCreate;

  factory UserCreate.fromJson(Map<String, dynamic> json) =>
      _$UserCreateFromJson(json);
}

/// User login model for JSON endpoint.
@freezed
class UserLogin with _$UserLogin {
  const factory UserLogin({
    required String email,
    required String password,
  }) = _UserLogin;

  factory UserLogin.fromJson(Map<String, dynamic> json) =>
      _$UserLoginFromJson(json);
}

/// User update model.
@freezed
class UserUpdate with _$UserUpdate {
  const factory UserUpdate({
    String? full_name,
    String? phone,
  }) = _UserUpdate;

  factory UserUpdate.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateFromJson(json);
}
