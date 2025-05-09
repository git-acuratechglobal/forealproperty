// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressParams _$AddressParamsFromJson(Map<String, dynamic> json) {
  return _AddressParams.fromJson(json);
}

/// @nodoc
mixin _$AddressParams {
  @JsonKey(name: "PropertyId")
  int get propertyId => throw _privateConstructorUsedError;
  @JsonKey(name: "PropertySaleRental")
  int? get propertySaleRental => throw _privateConstructorUsedError;
  @JsonKey(name: "PropertyType")
  String? get propertyType => throw _privateConstructorUsedError;
  @JsonKey(name: "AgentId")
  int? get agentId => throw _privateConstructorUsedError;
  @JsonKey(name: "AgencyId")
  int? get agencyId => throw _privateConstructorUsedError;
  @JsonKey(name: "PropertyGooglePlacesLocation")
  String? get propertyGooglePlacesLocation =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "State")
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "Suburb")
  String? get suburb => throw _privateConstructorUsedError;
  @JsonKey(name: "PostCode")
  String? get postCode => throw _privateConstructorUsedError;
  @JsonKey(name: "UnitNumber")
  String? get unitNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "StreetNumber")
  String? get streetNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "StreetName")
  String? get streetName => throw _privateConstructorUsedError;
  @JsonKey(name: "UserId")
  int? get userId => throw _privateConstructorUsedError;

  /// Serializes this AddressParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressParamsCopyWith<AddressParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressParamsCopyWith<$Res> {
  factory $AddressParamsCopyWith(
          AddressParams value, $Res Function(AddressParams) then) =
      _$AddressParamsCopyWithImpl<$Res, AddressParams>;
  @useResult
  $Res call(
      {@JsonKey(name: "PropertyId") int propertyId,
      @JsonKey(name: "PropertySaleRental") int? propertySaleRental,
      @JsonKey(name: "PropertyType") String? propertyType,
      @JsonKey(name: "AgentId") int? agentId,
      @JsonKey(name: "AgencyId") int? agencyId,
      @JsonKey(name: "PropertyGooglePlacesLocation")
      String? propertyGooglePlacesLocation,
      @JsonKey(name: "State") String? state,
      @JsonKey(name: "Suburb") String? suburb,
      @JsonKey(name: "PostCode") String? postCode,
      @JsonKey(name: "UnitNumber") String? unitNumber,
      @JsonKey(name: "StreetNumber") String? streetNumber,
      @JsonKey(name: "StreetName") String? streetName,
      @JsonKey(name: "UserId") int? userId});
}

/// @nodoc
class _$AddressParamsCopyWithImpl<$Res, $Val extends AddressParams>
    implements $AddressParamsCopyWith<$Res> {
  _$AddressParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? propertySaleRental = freezed,
    Object? propertyType = freezed,
    Object? agentId = freezed,
    Object? agencyId = freezed,
    Object? propertyGooglePlacesLocation = freezed,
    Object? state = freezed,
    Object? suburb = freezed,
    Object? postCode = freezed,
    Object? unitNumber = freezed,
    Object? streetNumber = freezed,
    Object? streetName = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int,
      propertySaleRental: freezed == propertySaleRental
          ? _value.propertySaleRental
          : propertySaleRental // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String?,
      agentId: freezed == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int?,
      agencyId: freezed == agencyId
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyGooglePlacesLocation: freezed == propertyGooglePlacesLocation
          ? _value.propertyGooglePlacesLocation
          : propertyGooglePlacesLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      suburb: freezed == suburb
          ? _value.suburb
          : suburb // ignore: cast_nullable_to_non_nullable
              as String?,
      postCode: freezed == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String?,
      unitNumber: freezed == unitNumber
          ? _value.unitNumber
          : unitNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      streetNumber: freezed == streetNumber
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressParamsImplCopyWith<$Res>
    implements $AddressParamsCopyWith<$Res> {
  factory _$$AddressParamsImplCopyWith(
          _$AddressParamsImpl value, $Res Function(_$AddressParamsImpl) then) =
      __$$AddressParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "PropertyId") int propertyId,
      @JsonKey(name: "PropertySaleRental") int? propertySaleRental,
      @JsonKey(name: "PropertyType") String? propertyType,
      @JsonKey(name: "AgentId") int? agentId,
      @JsonKey(name: "AgencyId") int? agencyId,
      @JsonKey(name: "PropertyGooglePlacesLocation")
      String? propertyGooglePlacesLocation,
      @JsonKey(name: "State") String? state,
      @JsonKey(name: "Suburb") String? suburb,
      @JsonKey(name: "PostCode") String? postCode,
      @JsonKey(name: "UnitNumber") String? unitNumber,
      @JsonKey(name: "StreetNumber") String? streetNumber,
      @JsonKey(name: "StreetName") String? streetName,
      @JsonKey(name: "UserId") int? userId});
}

/// @nodoc
class __$$AddressParamsImplCopyWithImpl<$Res>
    extends _$AddressParamsCopyWithImpl<$Res, _$AddressParamsImpl>
    implements _$$AddressParamsImplCopyWith<$Res> {
  __$$AddressParamsImplCopyWithImpl(
      _$AddressParamsImpl _value, $Res Function(_$AddressParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? propertySaleRental = freezed,
    Object? propertyType = freezed,
    Object? agentId = freezed,
    Object? agencyId = freezed,
    Object? propertyGooglePlacesLocation = freezed,
    Object? state = freezed,
    Object? suburb = freezed,
    Object? postCode = freezed,
    Object? unitNumber = freezed,
    Object? streetNumber = freezed,
    Object? streetName = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$AddressParamsImpl(
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int,
      propertySaleRental: freezed == propertySaleRental
          ? _value.propertySaleRental
          : propertySaleRental // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String?,
      agentId: freezed == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int?,
      agencyId: freezed == agencyId
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyGooglePlacesLocation: freezed == propertyGooglePlacesLocation
          ? _value.propertyGooglePlacesLocation
          : propertyGooglePlacesLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      suburb: freezed == suburb
          ? _value.suburb
          : suburb // ignore: cast_nullable_to_non_nullable
              as String?,
      postCode: freezed == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String?,
      unitNumber: freezed == unitNumber
          ? _value.unitNumber
          : unitNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      streetNumber: freezed == streetNumber
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressParamsImpl implements _AddressParams {
  const _$AddressParamsImpl(
      {@JsonKey(name: "PropertyId") this.propertyId = 0,
      @JsonKey(name: "PropertySaleRental") this.propertySaleRental = 1,
      @JsonKey(name: "PropertyType") this.propertyType,
      @JsonKey(name: "AgentId") this.agentId = 2,
      @JsonKey(name: "AgencyId") this.agencyId = 1,
      @JsonKey(name: "PropertyGooglePlacesLocation")
      this.propertyGooglePlacesLocation,
      @JsonKey(name: "State") this.state,
      @JsonKey(name: "Suburb") this.suburb,
      @JsonKey(name: "PostCode") this.postCode,
      @JsonKey(name: "UnitNumber") this.unitNumber,
      @JsonKey(name: "StreetNumber") this.streetNumber,
      @JsonKey(name: "StreetName") this.streetName,
      @JsonKey(name: "UserId") this.userId = 2});

  factory _$AddressParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressParamsImplFromJson(json);

  @override
  @JsonKey(name: "PropertyId")
  final int propertyId;
  @override
  @JsonKey(name: "PropertySaleRental")
  final int? propertySaleRental;
  @override
  @JsonKey(name: "PropertyType")
  final String? propertyType;
  @override
  @JsonKey(name: "AgentId")
  final int? agentId;
  @override
  @JsonKey(name: "AgencyId")
  final int? agencyId;
  @override
  @JsonKey(name: "PropertyGooglePlacesLocation")
  final String? propertyGooglePlacesLocation;
  @override
  @JsonKey(name: "State")
  final String? state;
  @override
  @JsonKey(name: "Suburb")
  final String? suburb;
  @override
  @JsonKey(name: "PostCode")
  final String? postCode;
  @override
  @JsonKey(name: "UnitNumber")
  final String? unitNumber;
  @override
  @JsonKey(name: "StreetNumber")
  final String? streetNumber;
  @override
  @JsonKey(name: "StreetName")
  final String? streetName;
  @override
  @JsonKey(name: "UserId")
  final int? userId;

  @override
  String toString() {
    return 'AddressParams(propertyId: $propertyId, propertySaleRental: $propertySaleRental, propertyType: $propertyType, agentId: $agentId, agencyId: $agencyId, propertyGooglePlacesLocation: $propertyGooglePlacesLocation, state: $state, suburb: $suburb, postCode: $postCode, unitNumber: $unitNumber, streetNumber: $streetNumber, streetName: $streetName, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressParamsImpl &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.propertySaleRental, propertySaleRental) ||
                other.propertySaleRental == propertySaleRental) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            (identical(other.agencyId, agencyId) ||
                other.agencyId == agencyId) &&
            (identical(other.propertyGooglePlacesLocation,
                    propertyGooglePlacesLocation) ||
                other.propertyGooglePlacesLocation ==
                    propertyGooglePlacesLocation) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.suburb, suburb) || other.suburb == suburb) &&
            (identical(other.postCode, postCode) ||
                other.postCode == postCode) &&
            (identical(other.unitNumber, unitNumber) ||
                other.unitNumber == unitNumber) &&
            (identical(other.streetNumber, streetNumber) ||
                other.streetNumber == streetNumber) &&
            (identical(other.streetName, streetName) ||
                other.streetName == streetName) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      propertyId,
      propertySaleRental,
      propertyType,
      agentId,
      agencyId,
      propertyGooglePlacesLocation,
      state,
      suburb,
      postCode,
      unitNumber,
      streetNumber,
      streetName,
      userId);

  /// Create a copy of AddressParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressParamsImplCopyWith<_$AddressParamsImpl> get copyWith =>
      __$$AddressParamsImplCopyWithImpl<_$AddressParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressParamsImplToJson(
      this,
    );
  }
}

abstract class _AddressParams implements AddressParams {
  const factory _AddressParams(
      {@JsonKey(name: "PropertyId") final int propertyId,
      @JsonKey(name: "PropertySaleRental") final int? propertySaleRental,
      @JsonKey(name: "PropertyType") final String? propertyType,
      @JsonKey(name: "AgentId") final int? agentId,
      @JsonKey(name: "AgencyId") final int? agencyId,
      @JsonKey(name: "PropertyGooglePlacesLocation")
      final String? propertyGooglePlacesLocation,
      @JsonKey(name: "State") final String? state,
      @JsonKey(name: "Suburb") final String? suburb,
      @JsonKey(name: "PostCode") final String? postCode,
      @JsonKey(name: "UnitNumber") final String? unitNumber,
      @JsonKey(name: "StreetNumber") final String? streetNumber,
      @JsonKey(name: "StreetName") final String? streetName,
      @JsonKey(name: "UserId") final int? userId}) = _$AddressParamsImpl;

  factory _AddressParams.fromJson(Map<String, dynamic> json) =
      _$AddressParamsImpl.fromJson;

  @override
  @JsonKey(name: "PropertyId")
  int get propertyId;
  @override
  @JsonKey(name: "PropertySaleRental")
  int? get propertySaleRental;
  @override
  @JsonKey(name: "PropertyType")
  String? get propertyType;
  @override
  @JsonKey(name: "AgentId")
  int? get agentId;
  @override
  @JsonKey(name: "AgencyId")
  int? get agencyId;
  @override
  @JsonKey(name: "PropertyGooglePlacesLocation")
  String? get propertyGooglePlacesLocation;
  @override
  @JsonKey(name: "State")
  String? get state;
  @override
  @JsonKey(name: "Suburb")
  String? get suburb;
  @override
  @JsonKey(name: "PostCode")
  String? get postCode;
  @override
  @JsonKey(name: "UnitNumber")
  String? get unitNumber;
  @override
  @JsonKey(name: "StreetNumber")
  String? get streetNumber;
  @override
  @JsonKey(name: "StreetName")
  String? get streetName;
  @override
  @JsonKey(name: "UserId")
  int? get userId;

  /// Create a copy of AddressParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressParamsImplCopyWith<_$AddressParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
