// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePasswordParams _$ChangePasswordParamsFromJson(Map<String, dynamic> json) {
  return _ChangePasswordParams.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordParams {
  @JsonKey(name: "ConfirmPassword")
  String? get confirmPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "NewPassword")
  String? get newPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "UserId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "UserRoleId")
  String? get userRoleId => throw _privateConstructorUsedError;
  @JsonKey(name: "withPass")
  bool? get withPass => throw _privateConstructorUsedError;

  /// Serializes this ChangePasswordParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangePasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePasswordParamsCopyWith<ChangePasswordParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordParamsCopyWith<$Res> {
  factory $ChangePasswordParamsCopyWith(ChangePasswordParams value,
          $Res Function(ChangePasswordParams) then) =
      _$ChangePasswordParamsCopyWithImpl<$Res, ChangePasswordParams>;
  @useResult
  $Res call(
      {@JsonKey(name: "ConfirmPassword") String? confirmPassword,
      @JsonKey(name: "NewPassword") String? newPassword,
      @JsonKey(name: "UserId") String? userId,
      @JsonKey(name: "UserRoleId") String? userRoleId,
      @JsonKey(name: "withPass") bool? withPass});
}

/// @nodoc
class _$ChangePasswordParamsCopyWithImpl<$Res,
        $Val extends ChangePasswordParams>
    implements $ChangePasswordParamsCopyWith<$Res> {
  _$ChangePasswordParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = freezed,
    Object? newPassword = freezed,
    Object? userId = freezed,
    Object? userRoleId = freezed,
    Object? withPass = freezed,
  }) {
    return _then(_value.copyWith(
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userRoleId: freezed == userRoleId
          ? _value.userRoleId
          : userRoleId // ignore: cast_nullable_to_non_nullable
              as String?,
      withPass: freezed == withPass
          ? _value.withPass
          : withPass // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordParamsImplCopyWith<$Res>
    implements $ChangePasswordParamsCopyWith<$Res> {
  factory _$$ChangePasswordParamsImplCopyWith(_$ChangePasswordParamsImpl value,
          $Res Function(_$ChangePasswordParamsImpl) then) =
      __$$ChangePasswordParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ConfirmPassword") String? confirmPassword,
      @JsonKey(name: "NewPassword") String? newPassword,
      @JsonKey(name: "UserId") String? userId,
      @JsonKey(name: "UserRoleId") String? userRoleId,
      @JsonKey(name: "withPass") bool? withPass});
}

/// @nodoc
class __$$ChangePasswordParamsImplCopyWithImpl<$Res>
    extends _$ChangePasswordParamsCopyWithImpl<$Res, _$ChangePasswordParamsImpl>
    implements _$$ChangePasswordParamsImplCopyWith<$Res> {
  __$$ChangePasswordParamsImplCopyWithImpl(_$ChangePasswordParamsImpl _value,
      $Res Function(_$ChangePasswordParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = freezed,
    Object? newPassword = freezed,
    Object? userId = freezed,
    Object? userRoleId = freezed,
    Object? withPass = freezed,
  }) {
    return _then(_$ChangePasswordParamsImpl(
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userRoleId: freezed == userRoleId
          ? _value.userRoleId
          : userRoleId // ignore: cast_nullable_to_non_nullable
              as String?,
      withPass: freezed == withPass
          ? _value.withPass
          : withPass // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePasswordParamsImpl implements _ChangePasswordParams {
  const _$ChangePasswordParamsImpl(
      {@JsonKey(name: "ConfirmPassword") this.confirmPassword,
      @JsonKey(name: "NewPassword") this.newPassword,
      @JsonKey(name: "UserId") this.userId,
      @JsonKey(name: "UserRoleId") this.userRoleId = "0",
      @JsonKey(name: "withPass") this.withPass = true});

  factory _$ChangePasswordParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePasswordParamsImplFromJson(json);

  @override
  @JsonKey(name: "ConfirmPassword")
  final String? confirmPassword;
  @override
  @JsonKey(name: "NewPassword")
  final String? newPassword;
  @override
  @JsonKey(name: "UserId")
  final String? userId;
  @override
  @JsonKey(name: "UserRoleId")
  final String? userRoleId;
  @override
  @JsonKey(name: "withPass")
  final bool? withPass;

  @override
  String toString() {
    return 'ChangePasswordParams(confirmPassword: $confirmPassword, newPassword: $newPassword, userId: $userId, userRoleId: $userRoleId, withPass: $withPass)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordParamsImpl &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userRoleId, userRoleId) ||
                other.userRoleId == userRoleId) &&
            (identical(other.withPass, withPass) ||
                other.withPass == withPass));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, confirmPassword, newPassword, userId, userRoleId, withPass);

  /// Create a copy of ChangePasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordParamsImplCopyWith<_$ChangePasswordParamsImpl>
      get copyWith =>
          __$$ChangePasswordParamsImplCopyWithImpl<_$ChangePasswordParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordParamsImplToJson(
      this,
    );
  }
}

abstract class _ChangePasswordParams implements ChangePasswordParams {
  const factory _ChangePasswordParams(
          {@JsonKey(name: "ConfirmPassword") final String? confirmPassword,
          @JsonKey(name: "NewPassword") final String? newPassword,
          @JsonKey(name: "UserId") final String? userId,
          @JsonKey(name: "UserRoleId") final String? userRoleId,
          @JsonKey(name: "withPass") final bool? withPass}) =
      _$ChangePasswordParamsImpl;

  factory _ChangePasswordParams.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordParamsImpl.fromJson;

  @override
  @JsonKey(name: "ConfirmPassword")
  String? get confirmPassword;
  @override
  @JsonKey(name: "NewPassword")
  String? get newPassword;
  @override
  @JsonKey(name: "UserId")
  String? get userId;
  @override
  @JsonKey(name: "UserRoleId")
  String? get userRoleId;
  @override
  @JsonKey(name: "withPass")
  bool? get withPass;

  /// Create a copy of ChangePasswordParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordParamsImplCopyWith<_$ChangePasswordParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
