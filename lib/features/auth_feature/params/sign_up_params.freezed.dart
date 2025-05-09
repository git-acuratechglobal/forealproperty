// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpParams _$SignUpParamsFromJson(Map<String, dynamic> json) {
  return _SignUpParams.fromJson(json);
}

/// @nodoc
mixin _$SignUpParams {
  @JsonKey(name: "FirstName")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "Email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "Password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "ConfirmPassword")
  String? get confirmPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "Terms")
  bool? get terms => throw _privateConstructorUsedError;
  @JsonKey(name: "userRoleID")
  int? get userRoleId => throw _privateConstructorUsedError;

  /// Serializes this SignUpParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpParamsCopyWith<SignUpParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpParamsCopyWith<$Res> {
  factory $SignUpParamsCopyWith(
          SignUpParams value, $Res Function(SignUpParams) then) =
      _$SignUpParamsCopyWithImpl<$Res, SignUpParams>;
  @useResult
  $Res call(
      {@JsonKey(name: "FirstName") String? firstName,
      @JsonKey(name: "Email") String? email,
      @JsonKey(name: "Password") String? password,
      @JsonKey(name: "ConfirmPassword") String? confirmPassword,
      @JsonKey(name: "Terms") bool? terms,
      @JsonKey(name: "userRoleID") int? userRoleId});
}

/// @nodoc
class _$SignUpParamsCopyWithImpl<$Res, $Val extends SignUpParams>
    implements $SignUpParamsCopyWith<$Res> {
  _$SignUpParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? terms = freezed,
    Object? userRoleId = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      terms: freezed == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as bool?,
      userRoleId: freezed == userRoleId
          ? _value.userRoleId
          : userRoleId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpParamsImplCopyWith<$Res>
    implements $SignUpParamsCopyWith<$Res> {
  factory _$$SignUpParamsImplCopyWith(
          _$SignUpParamsImpl value, $Res Function(_$SignUpParamsImpl) then) =
      __$$SignUpParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "FirstName") String? firstName,
      @JsonKey(name: "Email") String? email,
      @JsonKey(name: "Password") String? password,
      @JsonKey(name: "ConfirmPassword") String? confirmPassword,
      @JsonKey(name: "Terms") bool? terms,
      @JsonKey(name: "userRoleID") int? userRoleId});
}

/// @nodoc
class __$$SignUpParamsImplCopyWithImpl<$Res>
    extends _$SignUpParamsCopyWithImpl<$Res, _$SignUpParamsImpl>
    implements _$$SignUpParamsImplCopyWith<$Res> {
  __$$SignUpParamsImplCopyWithImpl(
      _$SignUpParamsImpl _value, $Res Function(_$SignUpParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? terms = freezed,
    Object? userRoleId = freezed,
  }) {
    return _then(_$SignUpParamsImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      terms: freezed == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as bool?,
      userRoleId: freezed == userRoleId
          ? _value.userRoleId
          : userRoleId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpParamsImpl implements _SignUpParams {
  const _$SignUpParamsImpl(
      {@JsonKey(name: "FirstName") this.firstName,
      @JsonKey(name: "Email") this.email,
      @JsonKey(name: "Password") this.password,
      @JsonKey(name: "ConfirmPassword") this.confirmPassword,
      @JsonKey(name: "Terms") this.terms = true,
      @JsonKey(name: "userRoleID") this.userRoleId = 10});

  factory _$SignUpParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpParamsImplFromJson(json);

  @override
  @JsonKey(name: "FirstName")
  final String? firstName;
  @override
  @JsonKey(name: "Email")
  final String? email;
  @override
  @JsonKey(name: "Password")
  final String? password;
  @override
  @JsonKey(name: "ConfirmPassword")
  final String? confirmPassword;
  @override
  @JsonKey(name: "Terms")
  final bool? terms;
  @override
  @JsonKey(name: "userRoleID")
  final int? userRoleId;

  @override
  String toString() {
    return 'SignUpParams(firstName: $firstName, email: $email, password: $password, confirmPassword: $confirmPassword, terms: $terms, userRoleId: $userRoleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpParamsImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.terms, terms) || other.terms == terms) &&
            (identical(other.userRoleId, userRoleId) ||
                other.userRoleId == userRoleId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, email, password,
      confirmPassword, terms, userRoleId);

  /// Create a copy of SignUpParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpParamsImplCopyWith<_$SignUpParamsImpl> get copyWith =>
      __$$SignUpParamsImplCopyWithImpl<_$SignUpParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpParamsImplToJson(
      this,
    );
  }
}

abstract class _SignUpParams implements SignUpParams {
  const factory _SignUpParams(
      {@JsonKey(name: "FirstName") final String? firstName,
      @JsonKey(name: "Email") final String? email,
      @JsonKey(name: "Password") final String? password,
      @JsonKey(name: "ConfirmPassword") final String? confirmPassword,
      @JsonKey(name: "Terms") final bool? terms,
      @JsonKey(name: "userRoleID") final int? userRoleId}) = _$SignUpParamsImpl;

  factory _SignUpParams.fromJson(Map<String, dynamic> json) =
      _$SignUpParamsImpl.fromJson;

  @override
  @JsonKey(name: "FirstName")
  String? get firstName;
  @override
  @JsonKey(name: "Email")
  String? get email;
  @override
  @JsonKey(name: "Password")
  String? get password;
  @override
  @JsonKey(name: "ConfirmPassword")
  String? get confirmPassword;
  @override
  @JsonKey(name: "Terms")
  bool? get terms;
  @override
  @JsonKey(name: "userRoleID")
  int? get userRoleId;

  /// Create a copy of SignUpParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpParamsImplCopyWith<_$SignUpParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
