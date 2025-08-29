// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_tenant_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TenantParams _$TenantParamsFromJson(Map<String, dynamic> json) {
  return _TenantParams.fromJson(json);
}

/// @nodoc
mixin _$TenantParams {
  @JsonKey(name: "TenantId")
  int get tenantId => throw _privateConstructorUsedError;
  @JsonKey(name: "PropertyId")
  int get propertyId => throw _privateConstructorUsedError;
  @JsonKey(name: "TenantFname")
  String? get tenantFname => throw _privateConstructorUsedError;
  @JsonKey(name: "TenantLname")
  String? get tenantLname => throw _privateConstructorUsedError;
  @JsonKey(name: "TenantMobile")
  String? get tenantMobile => throw _privateConstructorUsedError;
  @JsonKey(name: "TenantEmail")
  String? get tenantEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "UserId")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "AgencyId")
  int? get agencyId => throw _privateConstructorUsedError;

  /// Serializes this TenantParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TenantParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TenantParamsCopyWith<TenantParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantParamsCopyWith<$Res> {
  factory $TenantParamsCopyWith(
          TenantParams value, $Res Function(TenantParams) then) =
      _$TenantParamsCopyWithImpl<$Res, TenantParams>;
  @useResult
  $Res call(
      {@JsonKey(name: "TenantId") int tenantId,
      @JsonKey(name: "PropertyId") int propertyId,
      @JsonKey(name: "TenantFname") String? tenantFname,
      @JsonKey(name: "TenantLname") String? tenantLname,
      @JsonKey(name: "TenantMobile") String? tenantMobile,
      @JsonKey(name: "TenantEmail") String? tenantEmail,
      @JsonKey(name: "UserId") int? userId,
      @JsonKey(name: "AgencyId") int? agencyId});
}

/// @nodoc
class _$TenantParamsCopyWithImpl<$Res, $Val extends TenantParams>
    implements $TenantParamsCopyWith<$Res> {
  _$TenantParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TenantParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tenantId = null,
    Object? propertyId = null,
    Object? tenantFname = freezed,
    Object? tenantLname = freezed,
    Object? tenantMobile = freezed,
    Object? tenantEmail = freezed,
    Object? userId = freezed,
    Object? agencyId = freezed,
  }) {
    return _then(_value.copyWith(
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int,
      tenantFname: freezed == tenantFname
          ? _value.tenantFname
          : tenantFname // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantLname: freezed == tenantLname
          ? _value.tenantLname
          : tenantLname // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantMobile: freezed == tenantMobile
          ? _value.tenantMobile
          : tenantMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantEmail: freezed == tenantEmail
          ? _value.tenantEmail
          : tenantEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      agencyId: freezed == agencyId
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TenantParamsImplCopyWith<$Res>
    implements $TenantParamsCopyWith<$Res> {
  factory _$$TenantParamsImplCopyWith(
          _$TenantParamsImpl value, $Res Function(_$TenantParamsImpl) then) =
      __$$TenantParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "TenantId") int tenantId,
      @JsonKey(name: "PropertyId") int propertyId,
      @JsonKey(name: "TenantFname") String? tenantFname,
      @JsonKey(name: "TenantLname") String? tenantLname,
      @JsonKey(name: "TenantMobile") String? tenantMobile,
      @JsonKey(name: "TenantEmail") String? tenantEmail,
      @JsonKey(name: "UserId") int? userId,
      @JsonKey(name: "AgencyId") int? agencyId});
}

/// @nodoc
class __$$TenantParamsImplCopyWithImpl<$Res>
    extends _$TenantParamsCopyWithImpl<$Res, _$TenantParamsImpl>
    implements _$$TenantParamsImplCopyWith<$Res> {
  __$$TenantParamsImplCopyWithImpl(
      _$TenantParamsImpl _value, $Res Function(_$TenantParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TenantParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tenantId = null,
    Object? propertyId = null,
    Object? tenantFname = freezed,
    Object? tenantLname = freezed,
    Object? tenantMobile = freezed,
    Object? tenantEmail = freezed,
    Object? userId = freezed,
    Object? agencyId = freezed,
  }) {
    return _then(_$TenantParamsImpl(
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int,
      tenantFname: freezed == tenantFname
          ? _value.tenantFname
          : tenantFname // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantLname: freezed == tenantLname
          ? _value.tenantLname
          : tenantLname // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantMobile: freezed == tenantMobile
          ? _value.tenantMobile
          : tenantMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantEmail: freezed == tenantEmail
          ? _value.tenantEmail
          : tenantEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      agencyId: freezed == agencyId
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TenantParamsImpl implements _TenantParams {
  const _$TenantParamsImpl(
      {@JsonKey(name: "TenantId") this.tenantId = 0,
      @JsonKey(name: "PropertyId") this.propertyId = 0,
      @JsonKey(name: "TenantFname") this.tenantFname,
      @JsonKey(name: "TenantLname") this.tenantLname,
      @JsonKey(name: "TenantMobile") this.tenantMobile,
      @JsonKey(name: "TenantEmail") this.tenantEmail,
      @JsonKey(name: "UserId") this.userId = 2,
      @JsonKey(name: "AgencyId") this.agencyId = 1});

  factory _$TenantParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TenantParamsImplFromJson(json);

  @override
  @JsonKey(name: "TenantId")
  final int tenantId;
  @override
  @JsonKey(name: "PropertyId")
  final int propertyId;
  @override
  @JsonKey(name: "TenantFname")
  final String? tenantFname;
  @override
  @JsonKey(name: "TenantLname")
  final String? tenantLname;
  @override
  @JsonKey(name: "TenantMobile")
  final String? tenantMobile;
  @override
  @JsonKey(name: "TenantEmail")
  final String? tenantEmail;
  @override
  @JsonKey(name: "UserId")
  final int? userId;
  @override
  @JsonKey(name: "AgencyId")
  final int? agencyId;

  @override
  String toString() {
    return 'TenantParams(tenantId: $tenantId, propertyId: $propertyId, tenantFname: $tenantFname, tenantLname: $tenantLname, tenantMobile: $tenantMobile, tenantEmail: $tenantEmail, userId: $userId, agencyId: $agencyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TenantParamsImpl &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.tenantFname, tenantFname) ||
                other.tenantFname == tenantFname) &&
            (identical(other.tenantLname, tenantLname) ||
                other.tenantLname == tenantLname) &&
            (identical(other.tenantMobile, tenantMobile) ||
                other.tenantMobile == tenantMobile) &&
            (identical(other.tenantEmail, tenantEmail) ||
                other.tenantEmail == tenantEmail) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.agencyId, agencyId) ||
                other.agencyId == agencyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tenantId, propertyId,
      tenantFname, tenantLname, tenantMobile, tenantEmail, userId, agencyId);

  /// Create a copy of TenantParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TenantParamsImplCopyWith<_$TenantParamsImpl> get copyWith =>
      __$$TenantParamsImplCopyWithImpl<_$TenantParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TenantParamsImplToJson(
      this,
    );
  }
}

abstract class _TenantParams implements TenantParams {
  const factory _TenantParams(
      {@JsonKey(name: "TenantId") final int tenantId,
      @JsonKey(name: "PropertyId") final int propertyId,
      @JsonKey(name: "TenantFname") final String? tenantFname,
      @JsonKey(name: "TenantLname") final String? tenantLname,
      @JsonKey(name: "TenantMobile") final String? tenantMobile,
      @JsonKey(name: "TenantEmail") final String? tenantEmail,
      @JsonKey(name: "UserId") final int? userId,
      @JsonKey(name: "AgencyId") final int? agencyId}) = _$TenantParamsImpl;

  factory _TenantParams.fromJson(Map<String, dynamic> json) =
      _$TenantParamsImpl.fromJson;

  @override
  @JsonKey(name: "TenantId")
  int get tenantId;
  @override
  @JsonKey(name: "PropertyId")
  int get propertyId;
  @override
  @JsonKey(name: "TenantFname")
  String? get tenantFname;
  @override
  @JsonKey(name: "TenantLname")
  String? get tenantLname;
  @override
  @JsonKey(name: "TenantMobile")
  String? get tenantMobile;
  @override
  @JsonKey(name: "TenantEmail")
  String? get tenantEmail;
  @override
  @JsonKey(name: "UserId")
  int? get userId;
  @override
  @JsonKey(name: "AgencyId")
  int? get agencyId;

  /// Create a copy of TenantParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TenantParamsImplCopyWith<_$TenantParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
