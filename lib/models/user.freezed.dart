// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get full_name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({
    int id,
    String email,
    String? full_name,
    String? phone,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? full_name = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? isActive = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            full_name: freezed == full_name
                ? _value.full_name
                : full_name // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            role: freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
    _$UserImpl value,
    $Res Function(_$UserImpl) then,
  ) = __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String email,
    String? full_name,
    String? phone,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
    : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? full_name = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? isActive = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$UserImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        full_name: freezed == full_name
            ? _value.full_name
            : full_name // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        role: freezed == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({
    required this.id,
    required this.email,
    this.full_name,
    this.phone,
    @JsonKey(name: 'role') this.role,
    @JsonKey(name: 'is_active') this.isActive,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final String? full_name;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'User(id: $id, email: $email, full_name: $full_name, phone: $phone, role: $role, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.full_name, full_name) ||
                other.full_name == full_name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    email,
    full_name,
    phone,
    role,
    isActive,
    createdAt,
    updatedAt,
  );

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(this);
  }
}

abstract class _User implements User {
  const factory _User({
    required final int id,
    required final String email,
    final String? full_name,
    final String? phone,
    @JsonKey(name: 'role') final String? role,
    @JsonKey(name: 'is_active') final bool? isActive,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  String? get full_name;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserCreate _$UserCreateFromJson(Map<String, dynamic> json) {
  return _UserCreate.fromJson(json);
}

/// @nodoc
mixin _$UserCreate {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get full_name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  /// Serializes this UserCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCreateCopyWith<UserCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCreateCopyWith<$Res> {
  factory $UserCreateCopyWith(
    UserCreate value,
    $Res Function(UserCreate) then,
  ) = _$UserCreateCopyWithImpl<$Res, UserCreate>;
  @useResult
  $Res call({String email, String password, String? full_name, String? phone});
}

/// @nodoc
class _$UserCreateCopyWithImpl<$Res, $Val extends UserCreate>
    implements $UserCreateCopyWith<$Res> {
  _$UserCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? full_name = freezed,
    Object? phone = freezed,
  }) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
            full_name: freezed == full_name
                ? _value.full_name
                : full_name // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserCreateImplCopyWith<$Res>
    implements $UserCreateCopyWith<$Res> {
  factory _$$UserCreateImplCopyWith(
    _$UserCreateImpl value,
    $Res Function(_$UserCreateImpl) then,
  ) = __$$UserCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, String? full_name, String? phone});
}

/// @nodoc
class __$$UserCreateImplCopyWithImpl<$Res>
    extends _$UserCreateCopyWithImpl<$Res, _$UserCreateImpl>
    implements _$$UserCreateImplCopyWith<$Res> {
  __$$UserCreateImplCopyWithImpl(
    _$UserCreateImpl _value,
    $Res Function(_$UserCreateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? full_name = freezed,
    Object? phone = freezed,
  }) {
    return _then(
      _$UserCreateImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        full_name: freezed == full_name
            ? _value.full_name
            : full_name // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCreateImpl implements _UserCreate {
  const _$UserCreateImpl({
    required this.email,
    required this.password,
    this.full_name,
    this.phone,
  });

  factory _$UserCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCreateImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String? full_name;
  @override
  final String? phone;

  @override
  String toString() {
    return 'UserCreate(email: $email, password: $password, full_name: $full_name, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCreateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.full_name, full_name) ||
                other.full_name == full_name) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, full_name, phone);

  /// Create a copy of UserCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCreateImplCopyWith<_$UserCreateImpl> get copyWith =>
      __$$UserCreateImplCopyWithImpl<_$UserCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCreateImplToJson(this);
  }
}

abstract class _UserCreate implements UserCreate {
  const factory _UserCreate({
    required final String email,
    required final String password,
    final String? full_name,
    final String? phone,
  }) = _$UserCreateImpl;

  factory _UserCreate.fromJson(Map<String, dynamic> json) =
      _$UserCreateImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String? get full_name;
  @override
  String? get phone;

  /// Create a copy of UserCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCreateImplCopyWith<_$UserCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLogin _$UserLoginFromJson(Map<String, dynamic> json) {
  return _UserLogin.fromJson(json);
}

/// @nodoc
mixin _$UserLogin {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this UserLogin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLoginCopyWith<UserLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginCopyWith<$Res> {
  factory $UserLoginCopyWith(UserLogin value, $Res Function(UserLogin) then) =
      _$UserLoginCopyWithImpl<$Res, UserLogin>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$UserLoginCopyWithImpl<$Res, $Val extends UserLogin>
    implements $UserLoginCopyWith<$Res> {
  _$UserLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? password = null}) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserLoginImplCopyWith<$Res>
    implements $UserLoginCopyWith<$Res> {
  factory _$$UserLoginImplCopyWith(
    _$UserLoginImpl value,
    $Res Function(_$UserLoginImpl) then,
  ) = __$$UserLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserLoginImplCopyWithImpl<$Res>
    extends _$UserLoginCopyWithImpl<$Res, _$UserLoginImpl>
    implements _$$UserLoginImplCopyWith<$Res> {
  __$$UserLoginImplCopyWithImpl(
    _$UserLoginImpl _value,
    $Res Function(_$UserLoginImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? password = null}) {
    return _then(
      _$UserLoginImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLoginImpl implements _UserLogin {
  const _$UserLoginImpl({required this.email, required this.password});

  factory _$UserLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLoginImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserLogin(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of UserLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginImplCopyWith<_$UserLoginImpl> get copyWith =>
      __$$UserLoginImplCopyWithImpl<_$UserLoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLoginImplToJson(this);
  }
}

abstract class _UserLogin implements UserLogin {
  const factory _UserLogin({
    required final String email,
    required final String password,
  }) = _$UserLoginImpl;

  factory _UserLogin.fromJson(Map<String, dynamic> json) =
      _$UserLoginImpl.fromJson;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of UserLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoginImplCopyWith<_$UserLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserUpdate _$UserUpdateFromJson(Map<String, dynamic> json) {
  return _UserUpdate.fromJson(json);
}

/// @nodoc
mixin _$UserUpdate {
  String? get full_name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  /// Serializes this UserUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserUpdateCopyWith<UserUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateCopyWith<$Res> {
  factory $UserUpdateCopyWith(
    UserUpdate value,
    $Res Function(UserUpdate) then,
  ) = _$UserUpdateCopyWithImpl<$Res, UserUpdate>;
  @useResult
  $Res call({String? full_name, String? phone});
}

/// @nodoc
class _$UserUpdateCopyWithImpl<$Res, $Val extends UserUpdate>
    implements $UserUpdateCopyWith<$Res> {
  _$UserUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? full_name = freezed, Object? phone = freezed}) {
    return _then(
      _value.copyWith(
            full_name: freezed == full_name
                ? _value.full_name
                : full_name // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserUpdateImplCopyWith<$Res>
    implements $UserUpdateCopyWith<$Res> {
  factory _$$UserUpdateImplCopyWith(
    _$UserUpdateImpl value,
    $Res Function(_$UserUpdateImpl) then,
  ) = __$$UserUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? full_name, String? phone});
}

/// @nodoc
class __$$UserUpdateImplCopyWithImpl<$Res>
    extends _$UserUpdateCopyWithImpl<$Res, _$UserUpdateImpl>
    implements _$$UserUpdateImplCopyWith<$Res> {
  __$$UserUpdateImplCopyWithImpl(
    _$UserUpdateImpl _value,
    $Res Function(_$UserUpdateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? full_name = freezed, Object? phone = freezed}) {
    return _then(
      _$UserUpdateImpl(
        full_name: freezed == full_name
            ? _value.full_name
            : full_name // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserUpdateImpl implements _UserUpdate {
  const _$UserUpdateImpl({this.full_name, this.phone});

  factory _$UserUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserUpdateImplFromJson(json);

  @override
  final String? full_name;
  @override
  final String? phone;

  @override
  String toString() {
    return 'UserUpdate(full_name: $full_name, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateImpl &&
            (identical(other.full_name, full_name) ||
                other.full_name == full_name) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, full_name, phone);

  /// Create a copy of UserUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateImplCopyWith<_$UserUpdateImpl> get copyWith =>
      __$$UserUpdateImplCopyWithImpl<_$UserUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserUpdateImplToJson(this);
  }
}

abstract class _UserUpdate implements UserUpdate {
  const factory _UserUpdate({final String? full_name, final String? phone}) =
      _$UserUpdateImpl;

  factory _UserUpdate.fromJson(Map<String, dynamic> json) =
      _$UserUpdateImpl.fromJson;

  @override
  String? get full_name;
  @override
  String? get phone;

  /// Create a copy of UserUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserUpdateImplCopyWith<_$UserUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
