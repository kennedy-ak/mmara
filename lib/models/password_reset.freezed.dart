// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_reset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PasswordResetRequest _$PasswordResetRequestFromJson(Map<String, dynamic> json) {
  return _PasswordResetRequest.fromJson(json);
}

/// @nodoc
mixin _$PasswordResetRequest {
  String get email => throw _privateConstructorUsedError;

  /// Serializes this PasswordResetRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasswordResetRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordResetRequestCopyWith<PasswordResetRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetRequestCopyWith<$Res> {
  factory $PasswordResetRequestCopyWith(
    PasswordResetRequest value,
    $Res Function(PasswordResetRequest) then,
  ) = _$PasswordResetRequestCopyWithImpl<$Res, PasswordResetRequest>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$PasswordResetRequestCopyWithImpl<
  $Res,
  $Val extends PasswordResetRequest
>
    implements $PasswordResetRequestCopyWith<$Res> {
  _$PasswordResetRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordResetRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PasswordResetRequestImplCopyWith<$Res>
    implements $PasswordResetRequestCopyWith<$Res> {
  factory _$$PasswordResetRequestImplCopyWith(
    _$PasswordResetRequestImpl value,
    $Res Function(_$PasswordResetRequestImpl) then,
  ) = __$$PasswordResetRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$PasswordResetRequestImplCopyWithImpl<$Res>
    extends _$PasswordResetRequestCopyWithImpl<$Res, _$PasswordResetRequestImpl>
    implements _$$PasswordResetRequestImplCopyWith<$Res> {
  __$$PasswordResetRequestImplCopyWithImpl(
    _$PasswordResetRequestImpl _value,
    $Res Function(_$PasswordResetRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PasswordResetRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$PasswordResetRequestImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordResetRequestImpl implements _PasswordResetRequest {
  const _$PasswordResetRequestImpl({required this.email});

  factory _$PasswordResetRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordResetRequestImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'PasswordResetRequest(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResetRequestImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of PasswordResetRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordResetRequestImplCopyWith<_$PasswordResetRequestImpl>
  get copyWith =>
      __$$PasswordResetRequestImplCopyWithImpl<_$PasswordResetRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordResetRequestImplToJson(this);
  }
}

abstract class _PasswordResetRequest implements PasswordResetRequest {
  const factory _PasswordResetRequest({required final String email}) =
      _$PasswordResetRequestImpl;

  factory _PasswordResetRequest.fromJson(Map<String, dynamic> json) =
      _$PasswordResetRequestImpl.fromJson;

  @override
  String get email;

  /// Create a copy of PasswordResetRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordResetRequestImplCopyWith<_$PasswordResetRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PasswordResetConfirm _$PasswordResetConfirmFromJson(Map<String, dynamic> json) {
  return _PasswordResetConfirm.fromJson(json);
}

/// @nodoc
mixin _$PasswordResetConfirm {
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_password')
  String get newPassword => throw _privateConstructorUsedError;

  /// Serializes this PasswordResetConfirm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasswordResetConfirm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordResetConfirmCopyWith<PasswordResetConfirm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetConfirmCopyWith<$Res> {
  factory $PasswordResetConfirmCopyWith(
    PasswordResetConfirm value,
    $Res Function(PasswordResetConfirm) then,
  ) = _$PasswordResetConfirmCopyWithImpl<$Res, PasswordResetConfirm>;
  @useResult
  $Res call({String token, @JsonKey(name: 'new_password') String newPassword});
}

/// @nodoc
class _$PasswordResetConfirmCopyWithImpl<
  $Res,
  $Val extends PasswordResetConfirm
>
    implements $PasswordResetConfirmCopyWith<$Res> {
  _$PasswordResetConfirmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordResetConfirm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null, Object? newPassword = null}) {
    return _then(
      _value.copyWith(
            token: null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String,
            newPassword: null == newPassword
                ? _value.newPassword
                : newPassword // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PasswordResetConfirmImplCopyWith<$Res>
    implements $PasswordResetConfirmCopyWith<$Res> {
  factory _$$PasswordResetConfirmImplCopyWith(
    _$PasswordResetConfirmImpl value,
    $Res Function(_$PasswordResetConfirmImpl) then,
  ) = __$$PasswordResetConfirmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, @JsonKey(name: 'new_password') String newPassword});
}

/// @nodoc
class __$$PasswordResetConfirmImplCopyWithImpl<$Res>
    extends _$PasswordResetConfirmCopyWithImpl<$Res, _$PasswordResetConfirmImpl>
    implements _$$PasswordResetConfirmImplCopyWith<$Res> {
  __$$PasswordResetConfirmImplCopyWithImpl(
    _$PasswordResetConfirmImpl _value,
    $Res Function(_$PasswordResetConfirmImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PasswordResetConfirm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null, Object? newPassword = null}) {
    return _then(
      _$PasswordResetConfirmImpl(
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
        newPassword: null == newPassword
            ? _value.newPassword
            : newPassword // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordResetConfirmImpl implements _PasswordResetConfirm {
  const _$PasswordResetConfirmImpl({
    required this.token,
    @JsonKey(name: 'new_password') required this.newPassword,
  });

  factory _$PasswordResetConfirmImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordResetConfirmImplFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: 'new_password')
  final String newPassword;

  @override
  String toString() {
    return 'PasswordResetConfirm(token: $token, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResetConfirmImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, newPassword);

  /// Create a copy of PasswordResetConfirm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordResetConfirmImplCopyWith<_$PasswordResetConfirmImpl>
  get copyWith =>
      __$$PasswordResetConfirmImplCopyWithImpl<_$PasswordResetConfirmImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordResetConfirmImplToJson(this);
  }
}

abstract class _PasswordResetConfirm implements PasswordResetConfirm {
  const factory _PasswordResetConfirm({
    required final String token,
    @JsonKey(name: 'new_password') required final String newPassword,
  }) = _$PasswordResetConfirmImpl;

  factory _PasswordResetConfirm.fromJson(Map<String, dynamic> json) =
      _$PasswordResetConfirmImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(name: 'new_password')
  String get newPassword;

  /// Create a copy of PasswordResetConfirm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordResetConfirmImplCopyWith<_$PasswordResetConfirmImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PasswordResetResponse _$PasswordResetResponseFromJson(
  Map<String, dynamic> json,
) {
  return _PasswordResetResponse.fromJson(json);
}

/// @nodoc
mixin _$PasswordResetResponse {
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;

  /// Serializes this PasswordResetResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasswordResetResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordResetResponseCopyWith<PasswordResetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetResponseCopyWith<$Res> {
  factory $PasswordResetResponseCopyWith(
    PasswordResetResponse value,
    $Res Function(PasswordResetResponse) then,
  ) = _$PasswordResetResponseCopyWithImpl<$Res, PasswordResetResponse>;
  @useResult
  $Res call({String message, @JsonKey(name: 'success') bool success});
}

/// @nodoc
class _$PasswordResetResponseCopyWithImpl<
  $Res,
  $Val extends PasswordResetResponse
>
    implements $PasswordResetResponseCopyWith<$Res> {
  _$PasswordResetResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordResetResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? success = null}) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PasswordResetResponseImplCopyWith<$Res>
    implements $PasswordResetResponseCopyWith<$Res> {
  factory _$$PasswordResetResponseImplCopyWith(
    _$PasswordResetResponseImpl value,
    $Res Function(_$PasswordResetResponseImpl) then,
  ) = __$$PasswordResetResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, @JsonKey(name: 'success') bool success});
}

/// @nodoc
class __$$PasswordResetResponseImplCopyWithImpl<$Res>
    extends
        _$PasswordResetResponseCopyWithImpl<$Res, _$PasswordResetResponseImpl>
    implements _$$PasswordResetResponseImplCopyWith<$Res> {
  __$$PasswordResetResponseImplCopyWithImpl(
    _$PasswordResetResponseImpl _value,
    $Res Function(_$PasswordResetResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PasswordResetResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? success = null}) {
    return _then(
      _$PasswordResetResponseImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordResetResponseImpl implements _PasswordResetResponse {
  const _$PasswordResetResponseImpl({
    required this.message,
    @JsonKey(name: 'success') this.success = true,
  });

  factory _$PasswordResetResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordResetResponseImplFromJson(json);

  @override
  final String message;
  @override
  @JsonKey(name: 'success')
  final bool success;

  @override
  String toString() {
    return 'PasswordResetResponse(message: $message, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResetResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, success);

  /// Create a copy of PasswordResetResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordResetResponseImplCopyWith<_$PasswordResetResponseImpl>
  get copyWith =>
      __$$PasswordResetResponseImplCopyWithImpl<_$PasswordResetResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordResetResponseImplToJson(this);
  }
}

abstract class _PasswordResetResponse implements PasswordResetResponse {
  const factory _PasswordResetResponse({
    required final String message,
    @JsonKey(name: 'success') final bool success,
  }) = _$PasswordResetResponseImpl;

  factory _PasswordResetResponse.fromJson(Map<String, dynamic> json) =
      _$PasswordResetResponseImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(name: 'success')
  bool get success;

  /// Create a copy of PasswordResetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordResetResponseImplCopyWith<_$PasswordResetResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ChangePasswordRequest _$ChangePasswordRequestFromJson(
  Map<String, dynamic> json,
) {
  return _ChangePasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordRequest {
  @JsonKey(name: 'old_password')
  String get oldPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_password')
  String get newPassword => throw _privateConstructorUsedError;

  /// Serializes this ChangePasswordRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePasswordRequestCopyWith<ChangePasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordRequestCopyWith<$Res> {
  factory $ChangePasswordRequestCopyWith(
    ChangePasswordRequest value,
    $Res Function(ChangePasswordRequest) then,
  ) = _$ChangePasswordRequestCopyWithImpl<$Res, ChangePasswordRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'old_password') String oldPassword,
    @JsonKey(name: 'new_password') String newPassword,
  });
}

/// @nodoc
class _$ChangePasswordRequestCopyWithImpl<
  $Res,
  $Val extends ChangePasswordRequest
>
    implements $ChangePasswordRequestCopyWith<$Res> {
  _$ChangePasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? oldPassword = null, Object? newPassword = null}) {
    return _then(
      _value.copyWith(
            oldPassword: null == oldPassword
                ? _value.oldPassword
                : oldPassword // ignore: cast_nullable_to_non_nullable
                      as String,
            newPassword: null == newPassword
                ? _value.newPassword
                : newPassword // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChangePasswordRequestImplCopyWith<$Res>
    implements $ChangePasswordRequestCopyWith<$Res> {
  factory _$$ChangePasswordRequestImplCopyWith(
    _$ChangePasswordRequestImpl value,
    $Res Function(_$ChangePasswordRequestImpl) then,
  ) = __$$ChangePasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'old_password') String oldPassword,
    @JsonKey(name: 'new_password') String newPassword,
  });
}

/// @nodoc
class __$$ChangePasswordRequestImplCopyWithImpl<$Res>
    extends
        _$ChangePasswordRequestCopyWithImpl<$Res, _$ChangePasswordRequestImpl>
    implements _$$ChangePasswordRequestImplCopyWith<$Res> {
  __$$ChangePasswordRequestImplCopyWithImpl(
    _$ChangePasswordRequestImpl _value,
    $Res Function(_$ChangePasswordRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? oldPassword = null, Object? newPassword = null}) {
    return _then(
      _$ChangePasswordRequestImpl(
        oldPassword: null == oldPassword
            ? _value.oldPassword
            : oldPassword // ignore: cast_nullable_to_non_nullable
                  as String,
        newPassword: null == newPassword
            ? _value.newPassword
            : newPassword // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePasswordRequestImpl implements _ChangePasswordRequest {
  const _$ChangePasswordRequestImpl({
    @JsonKey(name: 'old_password') required this.oldPassword,
    @JsonKey(name: 'new_password') required this.newPassword,
  });

  factory _$ChangePasswordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePasswordRequestImplFromJson(json);

  @override
  @JsonKey(name: 'old_password')
  final String oldPassword;
  @override
  @JsonKey(name: 'new_password')
  final String newPassword;

  @override
  String toString() {
    return 'ChangePasswordRequest(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordRequestImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordRequestImplCopyWith<_$ChangePasswordRequestImpl>
  get copyWith =>
      __$$ChangePasswordRequestImplCopyWithImpl<_$ChangePasswordRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordRequestImplToJson(this);
  }
}

abstract class _ChangePasswordRequest implements ChangePasswordRequest {
  const factory _ChangePasswordRequest({
    @JsonKey(name: 'old_password') required final String oldPassword,
    @JsonKey(name: 'new_password') required final String newPassword,
  }) = _$ChangePasswordRequestImpl;

  factory _ChangePasswordRequest.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordRequestImpl.fromJson;

  @override
  @JsonKey(name: 'old_password')
  String get oldPassword;
  @override
  @JsonKey(name: 'new_password')
  String get newPassword;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordRequestImplCopyWith<_$ChangePasswordRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
