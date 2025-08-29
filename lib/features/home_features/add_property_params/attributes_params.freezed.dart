// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attributes_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyAttributesModel _$PropertyAttributesModelFromJson(
    Map<String, dynamic> json) {
  return _PropertyAttributesModel.fromJson(json);
}

/// @nodoc
mixin _$PropertyAttributesModel {
  @JsonKey(name: "PropertyId")
  int? get propertyId => throw _privateConstructorUsedError;
  @JsonKey(name: "UserId")
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "PropertyAttibuteDetails")
  PropertyAttributeDetails? get propertyAttibuteDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "PropertyFeaturesOutdoorDetails")
  PropertyFeaturesOutdoorDetails? get propertyFeaturesOutdoorDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "PropertyFeaturesIndoorDetails")
  PropertyFeaturesIndoorDetails? get propertyFeaturesIndoorDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "PropertyFeaturesHeatCoolDetails")
  PropertyFeaturesHeatCoolDetails? get propertyFeaturesHeatCoolDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "PropertyEcoFriendlyFeaturesDetails")
  PropertyEcoFriendlyFeaturesDetails? get propertyEcoFriendlyFeaturesDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "LoggedUserId")
  int get loggedUserId => throw _privateConstructorUsedError;

  /// Serializes this PropertyAttributesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyAttributesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyAttributesModelCopyWith<PropertyAttributesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyAttributesModelCopyWith<$Res> {
  factory $PropertyAttributesModelCopyWith(PropertyAttributesModel value,
          $Res Function(PropertyAttributesModel) then) =
      _$PropertyAttributesModelCopyWithImpl<$Res, PropertyAttributesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "PropertyId") int? propertyId,
      @JsonKey(name: "UserId") int userId,
      @JsonKey(name: "PropertyAttibuteDetails")
      PropertyAttributeDetails? propertyAttibuteDetails,
      @JsonKey(name: "PropertyFeaturesOutdoorDetails")
      PropertyFeaturesOutdoorDetails? propertyFeaturesOutdoorDetails,
      @JsonKey(name: "PropertyFeaturesIndoorDetails")
      PropertyFeaturesIndoorDetails? propertyFeaturesIndoorDetails,
      @JsonKey(name: "PropertyFeaturesHeatCoolDetails")
      PropertyFeaturesHeatCoolDetails? propertyFeaturesHeatCoolDetails,
      @JsonKey(name: "PropertyEcoFriendlyFeaturesDetails")
      PropertyEcoFriendlyFeaturesDetails? propertyEcoFriendlyFeaturesDetails,
      @JsonKey(name: "LoggedUserId") int loggedUserId});

  $PropertyAttributeDetailsCopyWith<$Res>? get propertyAttibuteDetails;
  $PropertyFeaturesOutdoorDetailsCopyWith<$Res>?
      get propertyFeaturesOutdoorDetails;
  $PropertyFeaturesIndoorDetailsCopyWith<$Res>?
      get propertyFeaturesIndoorDetails;
  $PropertyFeaturesHeatCoolDetailsCopyWith<$Res>?
      get propertyFeaturesHeatCoolDetails;
  $PropertyEcoFriendlyFeaturesDetailsCopyWith<$Res>?
      get propertyEcoFriendlyFeaturesDetails;
}

/// @nodoc
class _$PropertyAttributesModelCopyWithImpl<$Res,
        $Val extends PropertyAttributesModel>
    implements $PropertyAttributesModelCopyWith<$Res> {
  _$PropertyAttributesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyAttributesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = freezed,
    Object? userId = null,
    Object? propertyAttibuteDetails = freezed,
    Object? propertyFeaturesOutdoorDetails = freezed,
    Object? propertyFeaturesIndoorDetails = freezed,
    Object? propertyFeaturesHeatCoolDetails = freezed,
    Object? propertyEcoFriendlyFeaturesDetails = freezed,
    Object? loggedUserId = null,
  }) {
    return _then(_value.copyWith(
      propertyId: freezed == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      propertyAttibuteDetails: freezed == propertyAttibuteDetails
          ? _value.propertyAttibuteDetails
          : propertyAttibuteDetails // ignore: cast_nullable_to_non_nullable
              as PropertyAttributeDetails?,
      propertyFeaturesOutdoorDetails: freezed == propertyFeaturesOutdoorDetails
          ? _value.propertyFeaturesOutdoorDetails
          : propertyFeaturesOutdoorDetails // ignore: cast_nullable_to_non_nullable
              as PropertyFeaturesOutdoorDetails?,
      propertyFeaturesIndoorDetails: freezed == propertyFeaturesIndoorDetails
          ? _value.propertyFeaturesIndoorDetails
          : propertyFeaturesIndoorDetails // ignore: cast_nullable_to_non_nullable
              as PropertyFeaturesIndoorDetails?,
      propertyFeaturesHeatCoolDetails: freezed ==
              propertyFeaturesHeatCoolDetails
          ? _value.propertyFeaturesHeatCoolDetails
          : propertyFeaturesHeatCoolDetails // ignore: cast_nullable_to_non_nullable
              as PropertyFeaturesHeatCoolDetails?,
      propertyEcoFriendlyFeaturesDetails: freezed ==
              propertyEcoFriendlyFeaturesDetails
          ? _value.propertyEcoFriendlyFeaturesDetails
          : propertyEcoFriendlyFeaturesDetails // ignore: cast_nullable_to_non_nullable
              as PropertyEcoFriendlyFeaturesDetails?,
      loggedUserId: null == loggedUserId
          ? _value.loggedUserId
          : loggedUserId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of PropertyAttributesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyAttributeDetailsCopyWith<$Res>? get propertyAttibuteDetails {
    if (_value.propertyAttibuteDetails == null) {
      return null;
    }

    return $PropertyAttributeDetailsCopyWith<$Res>(
        _value.propertyAttibuteDetails!, (value) {
      return _then(_value.copyWith(propertyAttibuteDetails: value) as $Val);
    });
  }

  /// Create a copy of PropertyAttributesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyFeaturesOutdoorDetailsCopyWith<$Res>?
      get propertyFeaturesOutdoorDetails {
    if (_value.propertyFeaturesOutdoorDetails == null) {
      return null;
    }

    return $PropertyFeaturesOutdoorDetailsCopyWith<$Res>(
        _value.propertyFeaturesOutdoorDetails!, (value) {
      return _then(
          _value.copyWith(propertyFeaturesOutdoorDetails: value) as $Val);
    });
  }

  /// Create a copy of PropertyAttributesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyFeaturesIndoorDetailsCopyWith<$Res>?
      get propertyFeaturesIndoorDetails {
    if (_value.propertyFeaturesIndoorDetails == null) {
      return null;
    }

    return $PropertyFeaturesIndoorDetailsCopyWith<$Res>(
        _value.propertyFeaturesIndoorDetails!, (value) {
      return _then(
          _value.copyWith(propertyFeaturesIndoorDetails: value) as $Val);
    });
  }

  /// Create a copy of PropertyAttributesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyFeaturesHeatCoolDetailsCopyWith<$Res>?
      get propertyFeaturesHeatCoolDetails {
    if (_value.propertyFeaturesHeatCoolDetails == null) {
      return null;
    }

    return $PropertyFeaturesHeatCoolDetailsCopyWith<$Res>(
        _value.propertyFeaturesHeatCoolDetails!, (value) {
      return _then(
          _value.copyWith(propertyFeaturesHeatCoolDetails: value) as $Val);
    });
  }

  /// Create a copy of PropertyAttributesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyEcoFriendlyFeaturesDetailsCopyWith<$Res>?
      get propertyEcoFriendlyFeaturesDetails {
    if (_value.propertyEcoFriendlyFeaturesDetails == null) {
      return null;
    }

    return $PropertyEcoFriendlyFeaturesDetailsCopyWith<$Res>(
        _value.propertyEcoFriendlyFeaturesDetails!, (value) {
      return _then(
          _value.copyWith(propertyEcoFriendlyFeaturesDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyAttributesModelImplCopyWith<$Res>
    implements $PropertyAttributesModelCopyWith<$Res> {
  factory _$$PropertyAttributesModelImplCopyWith(
          _$PropertyAttributesModelImpl value,
          $Res Function(_$PropertyAttributesModelImpl) then) =
      __$$PropertyAttributesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "PropertyId") int? propertyId,
      @JsonKey(name: "UserId") int userId,
      @JsonKey(name: "PropertyAttibuteDetails")
      PropertyAttributeDetails? propertyAttibuteDetails,
      @JsonKey(name: "PropertyFeaturesOutdoorDetails")
      PropertyFeaturesOutdoorDetails? propertyFeaturesOutdoorDetails,
      @JsonKey(name: "PropertyFeaturesIndoorDetails")
      PropertyFeaturesIndoorDetails? propertyFeaturesIndoorDetails,
      @JsonKey(name: "PropertyFeaturesHeatCoolDetails")
      PropertyFeaturesHeatCoolDetails? propertyFeaturesHeatCoolDetails,
      @JsonKey(name: "PropertyEcoFriendlyFeaturesDetails")
      PropertyEcoFriendlyFeaturesDetails? propertyEcoFriendlyFeaturesDetails,
      @JsonKey(name: "LoggedUserId") int loggedUserId});

  @override
  $PropertyAttributeDetailsCopyWith<$Res>? get propertyAttibuteDetails;
  @override
  $PropertyFeaturesOutdoorDetailsCopyWith<$Res>?
      get propertyFeaturesOutdoorDetails;
  @override
  $PropertyFeaturesIndoorDetailsCopyWith<$Res>?
      get propertyFeaturesIndoorDetails;
  @override
  $PropertyFeaturesHeatCoolDetailsCopyWith<$Res>?
      get propertyFeaturesHeatCoolDetails;
  @override
  $PropertyEcoFriendlyFeaturesDetailsCopyWith<$Res>?
      get propertyEcoFriendlyFeaturesDetails;
}

/// @nodoc
class __$$PropertyAttributesModelImplCopyWithImpl<$Res>
    extends _$PropertyAttributesModelCopyWithImpl<$Res,
        _$PropertyAttributesModelImpl>
    implements _$$PropertyAttributesModelImplCopyWith<$Res> {
  __$$PropertyAttributesModelImplCopyWithImpl(
      _$PropertyAttributesModelImpl _value,
      $Res Function(_$PropertyAttributesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyAttributesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = freezed,
    Object? userId = null,
    Object? propertyAttibuteDetails = freezed,
    Object? propertyFeaturesOutdoorDetails = freezed,
    Object? propertyFeaturesIndoorDetails = freezed,
    Object? propertyFeaturesHeatCoolDetails = freezed,
    Object? propertyEcoFriendlyFeaturesDetails = freezed,
    Object? loggedUserId = null,
  }) {
    return _then(_$PropertyAttributesModelImpl(
      propertyId: freezed == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      propertyAttibuteDetails: freezed == propertyAttibuteDetails
          ? _value.propertyAttibuteDetails
          : propertyAttibuteDetails // ignore: cast_nullable_to_non_nullable
              as PropertyAttributeDetails?,
      propertyFeaturesOutdoorDetails: freezed == propertyFeaturesOutdoorDetails
          ? _value.propertyFeaturesOutdoorDetails
          : propertyFeaturesOutdoorDetails // ignore: cast_nullable_to_non_nullable
              as PropertyFeaturesOutdoorDetails?,
      propertyFeaturesIndoorDetails: freezed == propertyFeaturesIndoorDetails
          ? _value.propertyFeaturesIndoorDetails
          : propertyFeaturesIndoorDetails // ignore: cast_nullable_to_non_nullable
              as PropertyFeaturesIndoorDetails?,
      propertyFeaturesHeatCoolDetails: freezed ==
              propertyFeaturesHeatCoolDetails
          ? _value.propertyFeaturesHeatCoolDetails
          : propertyFeaturesHeatCoolDetails // ignore: cast_nullable_to_non_nullable
              as PropertyFeaturesHeatCoolDetails?,
      propertyEcoFriendlyFeaturesDetails: freezed ==
              propertyEcoFriendlyFeaturesDetails
          ? _value.propertyEcoFriendlyFeaturesDetails
          : propertyEcoFriendlyFeaturesDetails // ignore: cast_nullable_to_non_nullable
              as PropertyEcoFriendlyFeaturesDetails?,
      loggedUserId: null == loggedUserId
          ? _value.loggedUserId
          : loggedUserId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyAttributesModelImpl implements _PropertyAttributesModel {
  _$PropertyAttributesModelImpl(
      {@JsonKey(name: "PropertyId") this.propertyId,
      @JsonKey(name: "UserId") this.userId = 2,
      @JsonKey(name: "PropertyAttibuteDetails") this.propertyAttibuteDetails,
      @JsonKey(name: "PropertyFeaturesOutdoorDetails")
      this.propertyFeaturesOutdoorDetails,
      @JsonKey(name: "PropertyFeaturesIndoorDetails")
      this.propertyFeaturesIndoorDetails,
      @JsonKey(name: "PropertyFeaturesHeatCoolDetails")
      this.propertyFeaturesHeatCoolDetails,
      @JsonKey(name: "PropertyEcoFriendlyFeaturesDetails")
      this.propertyEcoFriendlyFeaturesDetails,
      @JsonKey(name: "LoggedUserId") this.loggedUserId = 2});

  factory _$PropertyAttributesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyAttributesModelImplFromJson(json);

  @override
  @JsonKey(name: "PropertyId")
  final int? propertyId;
  @override
  @JsonKey(name: "UserId")
  final int userId;
  @override
  @JsonKey(name: "PropertyAttibuteDetails")
  final PropertyAttributeDetails? propertyAttibuteDetails;
  @override
  @JsonKey(name: "PropertyFeaturesOutdoorDetails")
  final PropertyFeaturesOutdoorDetails? propertyFeaturesOutdoorDetails;
  @override
  @JsonKey(name: "PropertyFeaturesIndoorDetails")
  final PropertyFeaturesIndoorDetails? propertyFeaturesIndoorDetails;
  @override
  @JsonKey(name: "PropertyFeaturesHeatCoolDetails")
  final PropertyFeaturesHeatCoolDetails? propertyFeaturesHeatCoolDetails;
  @override
  @JsonKey(name: "PropertyEcoFriendlyFeaturesDetails")
  final PropertyEcoFriendlyFeaturesDetails? propertyEcoFriendlyFeaturesDetails;
  @override
  @JsonKey(name: "LoggedUserId")
  final int loggedUserId;

  @override
  String toString() {
    return 'PropertyAttributesModel(propertyId: $propertyId, userId: $userId, propertyAttibuteDetails: $propertyAttibuteDetails, propertyFeaturesOutdoorDetails: $propertyFeaturesOutdoorDetails, propertyFeaturesIndoorDetails: $propertyFeaturesIndoorDetails, propertyFeaturesHeatCoolDetails: $propertyFeaturesHeatCoolDetails, propertyEcoFriendlyFeaturesDetails: $propertyEcoFriendlyFeaturesDetails, loggedUserId: $loggedUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyAttributesModelImpl &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(
                    other.propertyAttibuteDetails, propertyAttibuteDetails) ||
                other.propertyAttibuteDetails == propertyAttibuteDetails) &&
            (identical(other.propertyFeaturesOutdoorDetails,
                    propertyFeaturesOutdoorDetails) ||
                other.propertyFeaturesOutdoorDetails ==
                    propertyFeaturesOutdoorDetails) &&
            (identical(other.propertyFeaturesIndoorDetails,
                    propertyFeaturesIndoorDetails) ||
                other.propertyFeaturesIndoorDetails ==
                    propertyFeaturesIndoorDetails) &&
            (identical(other.propertyFeaturesHeatCoolDetails,
                    propertyFeaturesHeatCoolDetails) ||
                other.propertyFeaturesHeatCoolDetails ==
                    propertyFeaturesHeatCoolDetails) &&
            (identical(other.propertyEcoFriendlyFeaturesDetails,
                    propertyEcoFriendlyFeaturesDetails) ||
                other.propertyEcoFriendlyFeaturesDetails ==
                    propertyEcoFriendlyFeaturesDetails) &&
            (identical(other.loggedUserId, loggedUserId) ||
                other.loggedUserId == loggedUserId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      propertyId,
      userId,
      propertyAttibuteDetails,
      propertyFeaturesOutdoorDetails,
      propertyFeaturesIndoorDetails,
      propertyFeaturesHeatCoolDetails,
      propertyEcoFriendlyFeaturesDetails,
      loggedUserId);

  /// Create a copy of PropertyAttributesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyAttributesModelImplCopyWith<_$PropertyAttributesModelImpl>
      get copyWith => __$$PropertyAttributesModelImplCopyWithImpl<
          _$PropertyAttributesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyAttributesModelImplToJson(
      this,
    );
  }
}

abstract class _PropertyAttributesModel implements PropertyAttributesModel {
  factory _PropertyAttributesModel(
      {@JsonKey(name: "PropertyId") final int? propertyId,
      @JsonKey(name: "UserId") final int userId,
      @JsonKey(name: "PropertyAttibuteDetails")
      final PropertyAttributeDetails? propertyAttibuteDetails,
      @JsonKey(name: "PropertyFeaturesOutdoorDetails")
      final PropertyFeaturesOutdoorDetails? propertyFeaturesOutdoorDetails,
      @JsonKey(name: "PropertyFeaturesIndoorDetails")
      final PropertyFeaturesIndoorDetails? propertyFeaturesIndoorDetails,
      @JsonKey(name: "PropertyFeaturesHeatCoolDetails")
      final PropertyFeaturesHeatCoolDetails? propertyFeaturesHeatCoolDetails,
      @JsonKey(name: "PropertyEcoFriendlyFeaturesDetails")
      final PropertyEcoFriendlyFeaturesDetails?
          propertyEcoFriendlyFeaturesDetails,
      @JsonKey(name: "LoggedUserId")
      final int loggedUserId}) = _$PropertyAttributesModelImpl;

  factory _PropertyAttributesModel.fromJson(Map<String, dynamic> json) =
      _$PropertyAttributesModelImpl.fromJson;

  @override
  @JsonKey(name: "PropertyId")
  int? get propertyId;
  @override
  @JsonKey(name: "UserId")
  int get userId;
  @override
  @JsonKey(name: "PropertyAttibuteDetails")
  PropertyAttributeDetails? get propertyAttibuteDetails;
  @override
  @JsonKey(name: "PropertyFeaturesOutdoorDetails")
  PropertyFeaturesOutdoorDetails? get propertyFeaturesOutdoorDetails;
  @override
  @JsonKey(name: "PropertyFeaturesIndoorDetails")
  PropertyFeaturesIndoorDetails? get propertyFeaturesIndoorDetails;
  @override
  @JsonKey(name: "PropertyFeaturesHeatCoolDetails")
  PropertyFeaturesHeatCoolDetails? get propertyFeaturesHeatCoolDetails;
  @override
  @JsonKey(name: "PropertyEcoFriendlyFeaturesDetails")
  PropertyEcoFriendlyFeaturesDetails? get propertyEcoFriendlyFeaturesDetails;
  @override
  @JsonKey(name: "LoggedUserId")
  int get loggedUserId;

  /// Create a copy of PropertyAttributesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyAttributesModelImplCopyWith<_$PropertyAttributesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PropertyAttributeDetails _$PropertyAttributeDetailsFromJson(
    Map<String, dynamic> json) {
  return _PropertyAttributeDetails.fromJson(json);
}

/// @nodoc
mixin _$PropertyAttributeDetails {
  @JsonKey(name: "PropertyLandAreaL")
  int get propertyLandAreaL => throw _privateConstructorUsedError;
  @JsonKey(name: "PropertyLandAreaW")
  int? get propertyLandAreaW => throw _privateConstructorUsedError;
  @JsonKey(name: "CountBedrooms")
  int? get countBedrooms => throw _privateConstructorUsedError;
  @JsonKey(name: "CountBathrooms")
  int? get countBathrooms => throw _privateConstructorUsedError;
  @JsonKey(name: "CountCarParking")
  int? get countCarParking => throw _privateConstructorUsedError;
  @JsonKey(name: "CountEnsuites")
  int? get countEnsuites => throw _privateConstructorUsedError;
  @JsonKey(name: "CountGarageSpace")
  int? get countGarageSpace => throw _privateConstructorUsedError;
  @JsonKey(name: "CountLivingAreas")
  int? get countLivingAreas => throw _privateConstructorUsedError;
  @JsonKey(name: "CountToilets")
  int? get countToilets => throw _privateConstructorUsedError;
  @JsonKey(name: "Coutryard")
  bool? get coutryard => throw _privateConstructorUsedError;

  /// Serializes this PropertyAttributeDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyAttributeDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyAttributeDetailsCopyWith<PropertyAttributeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyAttributeDetailsCopyWith<$Res> {
  factory $PropertyAttributeDetailsCopyWith(PropertyAttributeDetails value,
          $Res Function(PropertyAttributeDetails) then) =
      _$PropertyAttributeDetailsCopyWithImpl<$Res, PropertyAttributeDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "PropertyLandAreaL") int propertyLandAreaL,
      @JsonKey(name: "PropertyLandAreaW") int? propertyLandAreaW,
      @JsonKey(name: "CountBedrooms") int? countBedrooms,
      @JsonKey(name: "CountBathrooms") int? countBathrooms,
      @JsonKey(name: "CountCarParking") int? countCarParking,
      @JsonKey(name: "CountEnsuites") int? countEnsuites,
      @JsonKey(name: "CountGarageSpace") int? countGarageSpace,
      @JsonKey(name: "CountLivingAreas") int? countLivingAreas,
      @JsonKey(name: "CountToilets") int? countToilets,
      @JsonKey(name: "Coutryard") bool? coutryard});
}

/// @nodoc
class _$PropertyAttributeDetailsCopyWithImpl<$Res,
        $Val extends PropertyAttributeDetails>
    implements $PropertyAttributeDetailsCopyWith<$Res> {
  _$PropertyAttributeDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyAttributeDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyLandAreaL = null,
    Object? propertyLandAreaW = freezed,
    Object? countBedrooms = freezed,
    Object? countBathrooms = freezed,
    Object? countCarParking = freezed,
    Object? countEnsuites = freezed,
    Object? countGarageSpace = freezed,
    Object? countLivingAreas = freezed,
    Object? countToilets = freezed,
    Object? coutryard = freezed,
  }) {
    return _then(_value.copyWith(
      propertyLandAreaL: null == propertyLandAreaL
          ? _value.propertyLandAreaL
          : propertyLandAreaL // ignore: cast_nullable_to_non_nullable
              as int,
      propertyLandAreaW: freezed == propertyLandAreaW
          ? _value.propertyLandAreaW
          : propertyLandAreaW // ignore: cast_nullable_to_non_nullable
              as int?,
      countBedrooms: freezed == countBedrooms
          ? _value.countBedrooms
          : countBedrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      countBathrooms: freezed == countBathrooms
          ? _value.countBathrooms
          : countBathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      countCarParking: freezed == countCarParking
          ? _value.countCarParking
          : countCarParking // ignore: cast_nullable_to_non_nullable
              as int?,
      countEnsuites: freezed == countEnsuites
          ? _value.countEnsuites
          : countEnsuites // ignore: cast_nullable_to_non_nullable
              as int?,
      countGarageSpace: freezed == countGarageSpace
          ? _value.countGarageSpace
          : countGarageSpace // ignore: cast_nullable_to_non_nullable
              as int?,
      countLivingAreas: freezed == countLivingAreas
          ? _value.countLivingAreas
          : countLivingAreas // ignore: cast_nullable_to_non_nullable
              as int?,
      countToilets: freezed == countToilets
          ? _value.countToilets
          : countToilets // ignore: cast_nullable_to_non_nullable
              as int?,
      coutryard: freezed == coutryard
          ? _value.coutryard
          : coutryard // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyAttributeDetailsImplCopyWith<$Res>
    implements $PropertyAttributeDetailsCopyWith<$Res> {
  factory _$$PropertyAttributeDetailsImplCopyWith(
          _$PropertyAttributeDetailsImpl value,
          $Res Function(_$PropertyAttributeDetailsImpl) then) =
      __$$PropertyAttributeDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "PropertyLandAreaL") int propertyLandAreaL,
      @JsonKey(name: "PropertyLandAreaW") int? propertyLandAreaW,
      @JsonKey(name: "CountBedrooms") int? countBedrooms,
      @JsonKey(name: "CountBathrooms") int? countBathrooms,
      @JsonKey(name: "CountCarParking") int? countCarParking,
      @JsonKey(name: "CountEnsuites") int? countEnsuites,
      @JsonKey(name: "CountGarageSpace") int? countGarageSpace,
      @JsonKey(name: "CountLivingAreas") int? countLivingAreas,
      @JsonKey(name: "CountToilets") int? countToilets,
      @JsonKey(name: "Coutryard") bool? coutryard});
}

/// @nodoc
class __$$PropertyAttributeDetailsImplCopyWithImpl<$Res>
    extends _$PropertyAttributeDetailsCopyWithImpl<$Res,
        _$PropertyAttributeDetailsImpl>
    implements _$$PropertyAttributeDetailsImplCopyWith<$Res> {
  __$$PropertyAttributeDetailsImplCopyWithImpl(
      _$PropertyAttributeDetailsImpl _value,
      $Res Function(_$PropertyAttributeDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyAttributeDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyLandAreaL = null,
    Object? propertyLandAreaW = freezed,
    Object? countBedrooms = freezed,
    Object? countBathrooms = freezed,
    Object? countCarParking = freezed,
    Object? countEnsuites = freezed,
    Object? countGarageSpace = freezed,
    Object? countLivingAreas = freezed,
    Object? countToilets = freezed,
    Object? coutryard = freezed,
  }) {
    return _then(_$PropertyAttributeDetailsImpl(
      propertyLandAreaL: null == propertyLandAreaL
          ? _value.propertyLandAreaL
          : propertyLandAreaL // ignore: cast_nullable_to_non_nullable
              as int,
      propertyLandAreaW: freezed == propertyLandAreaW
          ? _value.propertyLandAreaW
          : propertyLandAreaW // ignore: cast_nullable_to_non_nullable
              as int?,
      countBedrooms: freezed == countBedrooms
          ? _value.countBedrooms
          : countBedrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      countBathrooms: freezed == countBathrooms
          ? _value.countBathrooms
          : countBathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      countCarParking: freezed == countCarParking
          ? _value.countCarParking
          : countCarParking // ignore: cast_nullable_to_non_nullable
              as int?,
      countEnsuites: freezed == countEnsuites
          ? _value.countEnsuites
          : countEnsuites // ignore: cast_nullable_to_non_nullable
              as int?,
      countGarageSpace: freezed == countGarageSpace
          ? _value.countGarageSpace
          : countGarageSpace // ignore: cast_nullable_to_non_nullable
              as int?,
      countLivingAreas: freezed == countLivingAreas
          ? _value.countLivingAreas
          : countLivingAreas // ignore: cast_nullable_to_non_nullable
              as int?,
      countToilets: freezed == countToilets
          ? _value.countToilets
          : countToilets // ignore: cast_nullable_to_non_nullable
              as int?,
      coutryard: freezed == coutryard
          ? _value.coutryard
          : coutryard // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyAttributeDetailsImpl implements _PropertyAttributeDetails {
  _$PropertyAttributeDetailsImpl(
      {@JsonKey(name: "PropertyLandAreaL") this.propertyLandAreaL = 4000,
      @JsonKey(name: "PropertyLandAreaW") this.propertyLandAreaW = 1,
      @JsonKey(name: "CountBedrooms") this.countBedrooms,
      @JsonKey(name: "CountBathrooms") this.countBathrooms,
      @JsonKey(name: "CountCarParking") this.countCarParking,
      @JsonKey(name: "CountEnsuites") this.countEnsuites,
      @JsonKey(name: "CountGarageSpace") this.countGarageSpace,
      @JsonKey(name: "CountLivingAreas") this.countLivingAreas,
      @JsonKey(name: "CountToilets") this.countToilets,
      @JsonKey(name: "Coutryard") this.coutryard = true});

  factory _$PropertyAttributeDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyAttributeDetailsImplFromJson(json);

  @override
  @JsonKey(name: "PropertyLandAreaL")
  final int propertyLandAreaL;
  @override
  @JsonKey(name: "PropertyLandAreaW")
  final int? propertyLandAreaW;
  @override
  @JsonKey(name: "CountBedrooms")
  final int? countBedrooms;
  @override
  @JsonKey(name: "CountBathrooms")
  final int? countBathrooms;
  @override
  @JsonKey(name: "CountCarParking")
  final int? countCarParking;
  @override
  @JsonKey(name: "CountEnsuites")
  final int? countEnsuites;
  @override
  @JsonKey(name: "CountGarageSpace")
  final int? countGarageSpace;
  @override
  @JsonKey(name: "CountLivingAreas")
  final int? countLivingAreas;
  @override
  @JsonKey(name: "CountToilets")
  final int? countToilets;
  @override
  @JsonKey(name: "Coutryard")
  final bool? coutryard;

  @override
  String toString() {
    return 'PropertyAttributeDetails(propertyLandAreaL: $propertyLandAreaL, propertyLandAreaW: $propertyLandAreaW, countBedrooms: $countBedrooms, countBathrooms: $countBathrooms, countCarParking: $countCarParking, countEnsuites: $countEnsuites, countGarageSpace: $countGarageSpace, countLivingAreas: $countLivingAreas, countToilets: $countToilets, coutryard: $coutryard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyAttributeDetailsImpl &&
            (identical(other.propertyLandAreaL, propertyLandAreaL) ||
                other.propertyLandAreaL == propertyLandAreaL) &&
            (identical(other.propertyLandAreaW, propertyLandAreaW) ||
                other.propertyLandAreaW == propertyLandAreaW) &&
            (identical(other.countBedrooms, countBedrooms) ||
                other.countBedrooms == countBedrooms) &&
            (identical(other.countBathrooms, countBathrooms) ||
                other.countBathrooms == countBathrooms) &&
            (identical(other.countCarParking, countCarParking) ||
                other.countCarParking == countCarParking) &&
            (identical(other.countEnsuites, countEnsuites) ||
                other.countEnsuites == countEnsuites) &&
            (identical(other.countGarageSpace, countGarageSpace) ||
                other.countGarageSpace == countGarageSpace) &&
            (identical(other.countLivingAreas, countLivingAreas) ||
                other.countLivingAreas == countLivingAreas) &&
            (identical(other.countToilets, countToilets) ||
                other.countToilets == countToilets) &&
            (identical(other.coutryard, coutryard) ||
                other.coutryard == coutryard));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      propertyLandAreaL,
      propertyLandAreaW,
      countBedrooms,
      countBathrooms,
      countCarParking,
      countEnsuites,
      countGarageSpace,
      countLivingAreas,
      countToilets,
      coutryard);

  /// Create a copy of PropertyAttributeDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyAttributeDetailsImplCopyWith<_$PropertyAttributeDetailsImpl>
      get copyWith => __$$PropertyAttributeDetailsImplCopyWithImpl<
          _$PropertyAttributeDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyAttributeDetailsImplToJson(
      this,
    );
  }
}

abstract class _PropertyAttributeDetails implements PropertyAttributeDetails {
  factory _PropertyAttributeDetails(
          {@JsonKey(name: "PropertyLandAreaL") final int propertyLandAreaL,
          @JsonKey(name: "PropertyLandAreaW") final int? propertyLandAreaW,
          @JsonKey(name: "CountBedrooms") final int? countBedrooms,
          @JsonKey(name: "CountBathrooms") final int? countBathrooms,
          @JsonKey(name: "CountCarParking") final int? countCarParking,
          @JsonKey(name: "CountEnsuites") final int? countEnsuites,
          @JsonKey(name: "CountGarageSpace") final int? countGarageSpace,
          @JsonKey(name: "CountLivingAreas") final int? countLivingAreas,
          @JsonKey(name: "CountToilets") final int? countToilets,
          @JsonKey(name: "Coutryard") final bool? coutryard}) =
      _$PropertyAttributeDetailsImpl;

  factory _PropertyAttributeDetails.fromJson(Map<String, dynamic> json) =
      _$PropertyAttributeDetailsImpl.fromJson;

  @override
  @JsonKey(name: "PropertyLandAreaL")
  int get propertyLandAreaL;
  @override
  @JsonKey(name: "PropertyLandAreaW")
  int? get propertyLandAreaW;
  @override
  @JsonKey(name: "CountBedrooms")
  int? get countBedrooms;
  @override
  @JsonKey(name: "CountBathrooms")
  int? get countBathrooms;
  @override
  @JsonKey(name: "CountCarParking")
  int? get countCarParking;
  @override
  @JsonKey(name: "CountEnsuites")
  int? get countEnsuites;
  @override
  @JsonKey(name: "CountGarageSpace")
  int? get countGarageSpace;
  @override
  @JsonKey(name: "CountLivingAreas")
  int? get countLivingAreas;
  @override
  @JsonKey(name: "CountToilets")
  int? get countToilets;
  @override
  @JsonKey(name: "Coutryard")
  bool? get coutryard;

  /// Create a copy of PropertyAttributeDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyAttributeDetailsImplCopyWith<_$PropertyAttributeDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PropertyFeaturesOutdoorDetails _$PropertyFeaturesOutdoorDetailsFromJson(
    Map<String, dynamic> json) {
  return _PropertyFeaturesOutdoorDetails.fromJson(json);
}

/// @nodoc
mixin _$PropertyFeaturesOutdoorDetails {
  @JsonKey(name: "Balcony")
  bool? get balcony => throw _privateConstructorUsedError;
  @JsonKey(name: "Deck")
  bool? get deck => throw _privateConstructorUsedError;
  @JsonKey(name: "OutdoorEntertainmentArea")
  bool? get outdoorEntertainmentArea => throw _privateConstructorUsedError;
  @JsonKey(name: "RemoteGarage")
  bool? get remoteGarage => throw _privateConstructorUsedError;
  @JsonKey(name: "Shed")
  bool? get shed => throw _privateConstructorUsedError;
  @JsonKey(name: "SwimmingPoolInGround")
  bool? get swimmingPoolInGround => throw _privateConstructorUsedError;
  @JsonKey(name: "FullyFenced")
  bool? get fullyFenced => throw _privateConstructorUsedError;
  @JsonKey(name: "OutsideSpa")
  bool? get outsideSpa => throw _privateConstructorUsedError;
  @JsonKey(name: "SecureParking")
  bool? get secureParking => throw _privateConstructorUsedError;
  @JsonKey(name: "SwimmmingPoolAboveGround")
  bool? get SwimmmingPoolAboveGround => throw _privateConstructorUsedError;
  @JsonKey(name: "TennisCourt")
  bool? get tennisCourt => throw _privateConstructorUsedError;

  /// Serializes this PropertyFeaturesOutdoorDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyFeaturesOutdoorDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyFeaturesOutdoorDetailsCopyWith<PropertyFeaturesOutdoorDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyFeaturesOutdoorDetailsCopyWith<$Res> {
  factory $PropertyFeaturesOutdoorDetailsCopyWith(
          PropertyFeaturesOutdoorDetails value,
          $Res Function(PropertyFeaturesOutdoorDetails) then) =
      _$PropertyFeaturesOutdoorDetailsCopyWithImpl<$Res,
          PropertyFeaturesOutdoorDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "Balcony") bool? balcony,
      @JsonKey(name: "Deck") bool? deck,
      @JsonKey(name: "OutdoorEntertainmentArea") bool? outdoorEntertainmentArea,
      @JsonKey(name: "RemoteGarage") bool? remoteGarage,
      @JsonKey(name: "Shed") bool? shed,
      @JsonKey(name: "SwimmingPoolInGround") bool? swimmingPoolInGround,
      @JsonKey(name: "FullyFenced") bool? fullyFenced,
      @JsonKey(name: "OutsideSpa") bool? outsideSpa,
      @JsonKey(name: "SecureParking") bool? secureParking,
      @JsonKey(name: "SwimmmingPoolAboveGround") bool? SwimmmingPoolAboveGround,
      @JsonKey(name: "TennisCourt") bool? tennisCourt});
}

/// @nodoc
class _$PropertyFeaturesOutdoorDetailsCopyWithImpl<$Res,
        $Val extends PropertyFeaturesOutdoorDetails>
    implements $PropertyFeaturesOutdoorDetailsCopyWith<$Res> {
  _$PropertyFeaturesOutdoorDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyFeaturesOutdoorDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balcony = freezed,
    Object? deck = freezed,
    Object? outdoorEntertainmentArea = freezed,
    Object? remoteGarage = freezed,
    Object? shed = freezed,
    Object? swimmingPoolInGround = freezed,
    Object? fullyFenced = freezed,
    Object? outsideSpa = freezed,
    Object? secureParking = freezed,
    Object? SwimmmingPoolAboveGround = freezed,
    Object? tennisCourt = freezed,
  }) {
    return _then(_value.copyWith(
      balcony: freezed == balcony
          ? _value.balcony
          : balcony // ignore: cast_nullable_to_non_nullable
              as bool?,
      deck: freezed == deck
          ? _value.deck
          : deck // ignore: cast_nullable_to_non_nullable
              as bool?,
      outdoorEntertainmentArea: freezed == outdoorEntertainmentArea
          ? _value.outdoorEntertainmentArea
          : outdoorEntertainmentArea // ignore: cast_nullable_to_non_nullable
              as bool?,
      remoteGarage: freezed == remoteGarage
          ? _value.remoteGarage
          : remoteGarage // ignore: cast_nullable_to_non_nullable
              as bool?,
      shed: freezed == shed
          ? _value.shed
          : shed // ignore: cast_nullable_to_non_nullable
              as bool?,
      swimmingPoolInGround: freezed == swimmingPoolInGround
          ? _value.swimmingPoolInGround
          : swimmingPoolInGround // ignore: cast_nullable_to_non_nullable
              as bool?,
      fullyFenced: freezed == fullyFenced
          ? _value.fullyFenced
          : fullyFenced // ignore: cast_nullable_to_non_nullable
              as bool?,
      outsideSpa: freezed == outsideSpa
          ? _value.outsideSpa
          : outsideSpa // ignore: cast_nullable_to_non_nullable
              as bool?,
      secureParking: freezed == secureParking
          ? _value.secureParking
          : secureParking // ignore: cast_nullable_to_non_nullable
              as bool?,
      SwimmmingPoolAboveGround: freezed == SwimmmingPoolAboveGround
          ? _value.SwimmmingPoolAboveGround
          : SwimmmingPoolAboveGround // ignore: cast_nullable_to_non_nullable
              as bool?,
      tennisCourt: freezed == tennisCourt
          ? _value.tennisCourt
          : tennisCourt // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyFeaturesOutdoorDetailsImplCopyWith<$Res>
    implements $PropertyFeaturesOutdoorDetailsCopyWith<$Res> {
  factory _$$PropertyFeaturesOutdoorDetailsImplCopyWith(
          _$PropertyFeaturesOutdoorDetailsImpl value,
          $Res Function(_$PropertyFeaturesOutdoorDetailsImpl) then) =
      __$$PropertyFeaturesOutdoorDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Balcony") bool? balcony,
      @JsonKey(name: "Deck") bool? deck,
      @JsonKey(name: "OutdoorEntertainmentArea") bool? outdoorEntertainmentArea,
      @JsonKey(name: "RemoteGarage") bool? remoteGarage,
      @JsonKey(name: "Shed") bool? shed,
      @JsonKey(name: "SwimmingPoolInGround") bool? swimmingPoolInGround,
      @JsonKey(name: "FullyFenced") bool? fullyFenced,
      @JsonKey(name: "OutsideSpa") bool? outsideSpa,
      @JsonKey(name: "SecureParking") bool? secureParking,
      @JsonKey(name: "SwimmmingPoolAboveGround") bool? SwimmmingPoolAboveGround,
      @JsonKey(name: "TennisCourt") bool? tennisCourt});
}

/// @nodoc
class __$$PropertyFeaturesOutdoorDetailsImplCopyWithImpl<$Res>
    extends _$PropertyFeaturesOutdoorDetailsCopyWithImpl<$Res,
        _$PropertyFeaturesOutdoorDetailsImpl>
    implements _$$PropertyFeaturesOutdoorDetailsImplCopyWith<$Res> {
  __$$PropertyFeaturesOutdoorDetailsImplCopyWithImpl(
      _$PropertyFeaturesOutdoorDetailsImpl _value,
      $Res Function(_$PropertyFeaturesOutdoorDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyFeaturesOutdoorDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balcony = freezed,
    Object? deck = freezed,
    Object? outdoorEntertainmentArea = freezed,
    Object? remoteGarage = freezed,
    Object? shed = freezed,
    Object? swimmingPoolInGround = freezed,
    Object? fullyFenced = freezed,
    Object? outsideSpa = freezed,
    Object? secureParking = freezed,
    Object? SwimmmingPoolAboveGround = freezed,
    Object? tennisCourt = freezed,
  }) {
    return _then(_$PropertyFeaturesOutdoorDetailsImpl(
      balcony: freezed == balcony
          ? _value.balcony
          : balcony // ignore: cast_nullable_to_non_nullable
              as bool?,
      deck: freezed == deck
          ? _value.deck
          : deck // ignore: cast_nullable_to_non_nullable
              as bool?,
      outdoorEntertainmentArea: freezed == outdoorEntertainmentArea
          ? _value.outdoorEntertainmentArea
          : outdoorEntertainmentArea // ignore: cast_nullable_to_non_nullable
              as bool?,
      remoteGarage: freezed == remoteGarage
          ? _value.remoteGarage
          : remoteGarage // ignore: cast_nullable_to_non_nullable
              as bool?,
      shed: freezed == shed
          ? _value.shed
          : shed // ignore: cast_nullable_to_non_nullable
              as bool?,
      swimmingPoolInGround: freezed == swimmingPoolInGround
          ? _value.swimmingPoolInGround
          : swimmingPoolInGround // ignore: cast_nullable_to_non_nullable
              as bool?,
      fullyFenced: freezed == fullyFenced
          ? _value.fullyFenced
          : fullyFenced // ignore: cast_nullable_to_non_nullable
              as bool?,
      outsideSpa: freezed == outsideSpa
          ? _value.outsideSpa
          : outsideSpa // ignore: cast_nullable_to_non_nullable
              as bool?,
      secureParking: freezed == secureParking
          ? _value.secureParking
          : secureParking // ignore: cast_nullable_to_non_nullable
              as bool?,
      SwimmmingPoolAboveGround: freezed == SwimmmingPoolAboveGround
          ? _value.SwimmmingPoolAboveGround
          : SwimmmingPoolAboveGround // ignore: cast_nullable_to_non_nullable
              as bool?,
      tennisCourt: freezed == tennisCourt
          ? _value.tennisCourt
          : tennisCourt // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyFeaturesOutdoorDetailsImpl
    implements _PropertyFeaturesOutdoorDetails {
  _$PropertyFeaturesOutdoorDetailsImpl(
      {@JsonKey(name: "Balcony") this.balcony,
      @JsonKey(name: "Deck") this.deck,
      @JsonKey(name: "OutdoorEntertainmentArea") this.outdoorEntertainmentArea,
      @JsonKey(name: "RemoteGarage") this.remoteGarage,
      @JsonKey(name: "Shed") this.shed,
      @JsonKey(name: "SwimmingPoolInGround") this.swimmingPoolInGround,
      @JsonKey(name: "FullyFenced") this.fullyFenced,
      @JsonKey(name: "OutsideSpa") this.outsideSpa,
      @JsonKey(name: "SecureParking") this.secureParking,
      @JsonKey(name: "SwimmmingPoolAboveGround") this.SwimmmingPoolAboveGround,
      @JsonKey(name: "TennisCourt") this.tennisCourt});

  factory _$PropertyFeaturesOutdoorDetailsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PropertyFeaturesOutdoorDetailsImplFromJson(json);

  @override
  @JsonKey(name: "Balcony")
  final bool? balcony;
  @override
  @JsonKey(name: "Deck")
  final bool? deck;
  @override
  @JsonKey(name: "OutdoorEntertainmentArea")
  final bool? outdoorEntertainmentArea;
  @override
  @JsonKey(name: "RemoteGarage")
  final bool? remoteGarage;
  @override
  @JsonKey(name: "Shed")
  final bool? shed;
  @override
  @JsonKey(name: "SwimmingPoolInGround")
  final bool? swimmingPoolInGround;
  @override
  @JsonKey(name: "FullyFenced")
  final bool? fullyFenced;
  @override
  @JsonKey(name: "OutsideSpa")
  final bool? outsideSpa;
  @override
  @JsonKey(name: "SecureParking")
  final bool? secureParking;
  @override
  @JsonKey(name: "SwimmmingPoolAboveGround")
  final bool? SwimmmingPoolAboveGround;
  @override
  @JsonKey(name: "TennisCourt")
  final bool? tennisCourt;

  @override
  String toString() {
    return 'PropertyFeaturesOutdoorDetails(balcony: $balcony, deck: $deck, outdoorEntertainmentArea: $outdoorEntertainmentArea, remoteGarage: $remoteGarage, shed: $shed, swimmingPoolInGround: $swimmingPoolInGround, fullyFenced: $fullyFenced, outsideSpa: $outsideSpa, secureParking: $secureParking, SwimmmingPoolAboveGround: $SwimmmingPoolAboveGround, tennisCourt: $tennisCourt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyFeaturesOutdoorDetailsImpl &&
            (identical(other.balcony, balcony) || other.balcony == balcony) &&
            (identical(other.deck, deck) || other.deck == deck) &&
            (identical(
                    other.outdoorEntertainmentArea, outdoorEntertainmentArea) ||
                other.outdoorEntertainmentArea == outdoorEntertainmentArea) &&
            (identical(other.remoteGarage, remoteGarage) ||
                other.remoteGarage == remoteGarage) &&
            (identical(other.shed, shed) || other.shed == shed) &&
            (identical(other.swimmingPoolInGround, swimmingPoolInGround) ||
                other.swimmingPoolInGround == swimmingPoolInGround) &&
            (identical(other.fullyFenced, fullyFenced) ||
                other.fullyFenced == fullyFenced) &&
            (identical(other.outsideSpa, outsideSpa) ||
                other.outsideSpa == outsideSpa) &&
            (identical(other.secureParking, secureParking) ||
                other.secureParking == secureParking) &&
            (identical(
                    other.SwimmmingPoolAboveGround, SwimmmingPoolAboveGround) ||
                other.SwimmmingPoolAboveGround == SwimmmingPoolAboveGround) &&
            (identical(other.tennisCourt, tennisCourt) ||
                other.tennisCourt == tennisCourt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      balcony,
      deck,
      outdoorEntertainmentArea,
      remoteGarage,
      shed,
      swimmingPoolInGround,
      fullyFenced,
      outsideSpa,
      secureParking,
      SwimmmingPoolAboveGround,
      tennisCourt);

  /// Create a copy of PropertyFeaturesOutdoorDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyFeaturesOutdoorDetailsImplCopyWith<
          _$PropertyFeaturesOutdoorDetailsImpl>
      get copyWith => __$$PropertyFeaturesOutdoorDetailsImplCopyWithImpl<
          _$PropertyFeaturesOutdoorDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyFeaturesOutdoorDetailsImplToJson(
      this,
    );
  }
}

abstract class _PropertyFeaturesOutdoorDetails
    implements PropertyFeaturesOutdoorDetails {
  factory _PropertyFeaturesOutdoorDetails(
      {@JsonKey(name: "Balcony") final bool? balcony,
      @JsonKey(name: "Deck") final bool? deck,
      @JsonKey(name: "OutdoorEntertainmentArea")
      final bool? outdoorEntertainmentArea,
      @JsonKey(name: "RemoteGarage") final bool? remoteGarage,
      @JsonKey(name: "Shed") final bool? shed,
      @JsonKey(name: "SwimmingPoolInGround") final bool? swimmingPoolInGround,
      @JsonKey(name: "FullyFenced") final bool? fullyFenced,
      @JsonKey(name: "OutsideSpa") final bool? outsideSpa,
      @JsonKey(name: "SecureParking") final bool? secureParking,
      @JsonKey(name: "SwimmmingPoolAboveGround")
      final bool? SwimmmingPoolAboveGround,
      @JsonKey(name: "TennisCourt")
      final bool? tennisCourt}) = _$PropertyFeaturesOutdoorDetailsImpl;

  factory _PropertyFeaturesOutdoorDetails.fromJson(Map<String, dynamic> json) =
      _$PropertyFeaturesOutdoorDetailsImpl.fromJson;

  @override
  @JsonKey(name: "Balcony")
  bool? get balcony;
  @override
  @JsonKey(name: "Deck")
  bool? get deck;
  @override
  @JsonKey(name: "OutdoorEntertainmentArea")
  bool? get outdoorEntertainmentArea;
  @override
  @JsonKey(name: "RemoteGarage")
  bool? get remoteGarage;
  @override
  @JsonKey(name: "Shed")
  bool? get shed;
  @override
  @JsonKey(name: "SwimmingPoolInGround")
  bool? get swimmingPoolInGround;
  @override
  @JsonKey(name: "FullyFenced")
  bool? get fullyFenced;
  @override
  @JsonKey(name: "OutsideSpa")
  bool? get outsideSpa;
  @override
  @JsonKey(name: "SecureParking")
  bool? get secureParking;
  @override
  @JsonKey(name: "SwimmmingPoolAboveGround")
  bool? get SwimmmingPoolAboveGround;
  @override
  @JsonKey(name: "TennisCourt")
  bool? get tennisCourt;

  /// Create a copy of PropertyFeaturesOutdoorDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyFeaturesOutdoorDetailsImplCopyWith<
          _$PropertyFeaturesOutdoorDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PropertyFeaturesIndoorDetails _$PropertyFeaturesIndoorDetailsFromJson(
    Map<String, dynamic> json) {
  return _PropertyFeaturesIndoorDetails.fromJson(json);
}

/// @nodoc
mixin _$PropertyFeaturesIndoorDetails {
  @JsonKey(name: "AlarmSystem")
  bool? get alarmSystem => throw _privateConstructorUsedError;
  @JsonKey(name: "BuiltInWardrobes")
  bool? get builtInWardrobes => throw _privateConstructorUsedError;
  @JsonKey(name: "DuctedVacuumSystem")
  bool? get ductedVacuumSystem => throw _privateConstructorUsedError;
  @JsonKey(name: "Gym")
  bool? get gym => throw _privateConstructorUsedError;
  @JsonKey(name: "Intercom")
  bool? get intercom => throw _privateConstructorUsedError;
  @JsonKey(name: "RumpusRoom")
  bool? get rumpusRoom => throw _privateConstructorUsedError;
  @JsonKey(name: "Workshop")
  bool? get workshop => throw _privateConstructorUsedError;
  @JsonKey(name: "BroadbandInternetAvailable")
  bool? get broadbandInternetAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: "Dishwasher")
  bool? get dishwasher => throw _privateConstructorUsedError;
  @JsonKey(name: "Floorboards")
  bool? get floorboards => throw _privateConstructorUsedError;
  @JsonKey(name: "InsideSpa")
  bool? get insideSpa => throw _privateConstructorUsedError;
  @JsonKey(name: "PayTvaccess")
  bool? get payTvaccess => throw _privateConstructorUsedError;
  @JsonKey(name: "Study")
  bool? get study => throw _privateConstructorUsedError;

  /// Serializes this PropertyFeaturesIndoorDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyFeaturesIndoorDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyFeaturesIndoorDetailsCopyWith<PropertyFeaturesIndoorDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyFeaturesIndoorDetailsCopyWith<$Res> {
  factory $PropertyFeaturesIndoorDetailsCopyWith(
          PropertyFeaturesIndoorDetails value,
          $Res Function(PropertyFeaturesIndoorDetails) then) =
      _$PropertyFeaturesIndoorDetailsCopyWithImpl<$Res,
          PropertyFeaturesIndoorDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "AlarmSystem") bool? alarmSystem,
      @JsonKey(name: "BuiltInWardrobes") bool? builtInWardrobes,
      @JsonKey(name: "DuctedVacuumSystem") bool? ductedVacuumSystem,
      @JsonKey(name: "Gym") bool? gym,
      @JsonKey(name: "Intercom") bool? intercom,
      @JsonKey(name: "RumpusRoom") bool? rumpusRoom,
      @JsonKey(name: "Workshop") bool? workshop,
      @JsonKey(name: "BroadbandInternetAvailable")
      bool? broadbandInternetAvailable,
      @JsonKey(name: "Dishwasher") bool? dishwasher,
      @JsonKey(name: "Floorboards") bool? floorboards,
      @JsonKey(name: "InsideSpa") bool? insideSpa,
      @JsonKey(name: "PayTvaccess") bool? payTvaccess,
      @JsonKey(name: "Study") bool? study});
}

/// @nodoc
class _$PropertyFeaturesIndoorDetailsCopyWithImpl<$Res,
        $Val extends PropertyFeaturesIndoorDetails>
    implements $PropertyFeaturesIndoorDetailsCopyWith<$Res> {
  _$PropertyFeaturesIndoorDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyFeaturesIndoorDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarmSystem = freezed,
    Object? builtInWardrobes = freezed,
    Object? ductedVacuumSystem = freezed,
    Object? gym = freezed,
    Object? intercom = freezed,
    Object? rumpusRoom = freezed,
    Object? workshop = freezed,
    Object? broadbandInternetAvailable = freezed,
    Object? dishwasher = freezed,
    Object? floorboards = freezed,
    Object? insideSpa = freezed,
    Object? payTvaccess = freezed,
    Object? study = freezed,
  }) {
    return _then(_value.copyWith(
      alarmSystem: freezed == alarmSystem
          ? _value.alarmSystem
          : alarmSystem // ignore: cast_nullable_to_non_nullable
              as bool?,
      builtInWardrobes: freezed == builtInWardrobes
          ? _value.builtInWardrobes
          : builtInWardrobes // ignore: cast_nullable_to_non_nullable
              as bool?,
      ductedVacuumSystem: freezed == ductedVacuumSystem
          ? _value.ductedVacuumSystem
          : ductedVacuumSystem // ignore: cast_nullable_to_non_nullable
              as bool?,
      gym: freezed == gym
          ? _value.gym
          : gym // ignore: cast_nullable_to_non_nullable
              as bool?,
      intercom: freezed == intercom
          ? _value.intercom
          : intercom // ignore: cast_nullable_to_non_nullable
              as bool?,
      rumpusRoom: freezed == rumpusRoom
          ? _value.rumpusRoom
          : rumpusRoom // ignore: cast_nullable_to_non_nullable
              as bool?,
      workshop: freezed == workshop
          ? _value.workshop
          : workshop // ignore: cast_nullable_to_non_nullable
              as bool?,
      broadbandInternetAvailable: freezed == broadbandInternetAvailable
          ? _value.broadbandInternetAvailable
          : broadbandInternetAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      dishwasher: freezed == dishwasher
          ? _value.dishwasher
          : dishwasher // ignore: cast_nullable_to_non_nullable
              as bool?,
      floorboards: freezed == floorboards
          ? _value.floorboards
          : floorboards // ignore: cast_nullable_to_non_nullable
              as bool?,
      insideSpa: freezed == insideSpa
          ? _value.insideSpa
          : insideSpa // ignore: cast_nullable_to_non_nullable
              as bool?,
      payTvaccess: freezed == payTvaccess
          ? _value.payTvaccess
          : payTvaccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      study: freezed == study
          ? _value.study
          : study // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyFeaturesIndoorDetailsImplCopyWith<$Res>
    implements $PropertyFeaturesIndoorDetailsCopyWith<$Res> {
  factory _$$PropertyFeaturesIndoorDetailsImplCopyWith(
          _$PropertyFeaturesIndoorDetailsImpl value,
          $Res Function(_$PropertyFeaturesIndoorDetailsImpl) then) =
      __$$PropertyFeaturesIndoorDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "AlarmSystem") bool? alarmSystem,
      @JsonKey(name: "BuiltInWardrobes") bool? builtInWardrobes,
      @JsonKey(name: "DuctedVacuumSystem") bool? ductedVacuumSystem,
      @JsonKey(name: "Gym") bool? gym,
      @JsonKey(name: "Intercom") bool? intercom,
      @JsonKey(name: "RumpusRoom") bool? rumpusRoom,
      @JsonKey(name: "Workshop") bool? workshop,
      @JsonKey(name: "BroadbandInternetAvailable")
      bool? broadbandInternetAvailable,
      @JsonKey(name: "Dishwasher") bool? dishwasher,
      @JsonKey(name: "Floorboards") bool? floorboards,
      @JsonKey(name: "InsideSpa") bool? insideSpa,
      @JsonKey(name: "PayTvaccess") bool? payTvaccess,
      @JsonKey(name: "Study") bool? study});
}

/// @nodoc
class __$$PropertyFeaturesIndoorDetailsImplCopyWithImpl<$Res>
    extends _$PropertyFeaturesIndoorDetailsCopyWithImpl<$Res,
        _$PropertyFeaturesIndoorDetailsImpl>
    implements _$$PropertyFeaturesIndoorDetailsImplCopyWith<$Res> {
  __$$PropertyFeaturesIndoorDetailsImplCopyWithImpl(
      _$PropertyFeaturesIndoorDetailsImpl _value,
      $Res Function(_$PropertyFeaturesIndoorDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyFeaturesIndoorDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarmSystem = freezed,
    Object? builtInWardrobes = freezed,
    Object? ductedVacuumSystem = freezed,
    Object? gym = freezed,
    Object? intercom = freezed,
    Object? rumpusRoom = freezed,
    Object? workshop = freezed,
    Object? broadbandInternetAvailable = freezed,
    Object? dishwasher = freezed,
    Object? floorboards = freezed,
    Object? insideSpa = freezed,
    Object? payTvaccess = freezed,
    Object? study = freezed,
  }) {
    return _then(_$PropertyFeaturesIndoorDetailsImpl(
      alarmSystem: freezed == alarmSystem
          ? _value.alarmSystem
          : alarmSystem // ignore: cast_nullable_to_non_nullable
              as bool?,
      builtInWardrobes: freezed == builtInWardrobes
          ? _value.builtInWardrobes
          : builtInWardrobes // ignore: cast_nullable_to_non_nullable
              as bool?,
      ductedVacuumSystem: freezed == ductedVacuumSystem
          ? _value.ductedVacuumSystem
          : ductedVacuumSystem // ignore: cast_nullable_to_non_nullable
              as bool?,
      gym: freezed == gym
          ? _value.gym
          : gym // ignore: cast_nullable_to_non_nullable
              as bool?,
      intercom: freezed == intercom
          ? _value.intercom
          : intercom // ignore: cast_nullable_to_non_nullable
              as bool?,
      rumpusRoom: freezed == rumpusRoom
          ? _value.rumpusRoom
          : rumpusRoom // ignore: cast_nullable_to_non_nullable
              as bool?,
      workshop: freezed == workshop
          ? _value.workshop
          : workshop // ignore: cast_nullable_to_non_nullable
              as bool?,
      broadbandInternetAvailable: freezed == broadbandInternetAvailable
          ? _value.broadbandInternetAvailable
          : broadbandInternetAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      dishwasher: freezed == dishwasher
          ? _value.dishwasher
          : dishwasher // ignore: cast_nullable_to_non_nullable
              as bool?,
      floorboards: freezed == floorboards
          ? _value.floorboards
          : floorboards // ignore: cast_nullable_to_non_nullable
              as bool?,
      insideSpa: freezed == insideSpa
          ? _value.insideSpa
          : insideSpa // ignore: cast_nullable_to_non_nullable
              as bool?,
      payTvaccess: freezed == payTvaccess
          ? _value.payTvaccess
          : payTvaccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      study: freezed == study
          ? _value.study
          : study // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyFeaturesIndoorDetailsImpl
    implements _PropertyFeaturesIndoorDetails {
  _$PropertyFeaturesIndoorDetailsImpl(
      {@JsonKey(name: "AlarmSystem") this.alarmSystem,
      @JsonKey(name: "BuiltInWardrobes") this.builtInWardrobes,
      @JsonKey(name: "DuctedVacuumSystem") this.ductedVacuumSystem,
      @JsonKey(name: "Gym") this.gym,
      @JsonKey(name: "Intercom") this.intercom,
      @JsonKey(name: "RumpusRoom") this.rumpusRoom,
      @JsonKey(name: "Workshop") this.workshop,
      @JsonKey(name: "BroadbandInternetAvailable")
      this.broadbandInternetAvailable,
      @JsonKey(name: "Dishwasher") this.dishwasher,
      @JsonKey(name: "Floorboards") this.floorboards,
      @JsonKey(name: "InsideSpa") this.insideSpa,
      @JsonKey(name: "PayTvaccess") this.payTvaccess,
      @JsonKey(name: "Study") this.study});

  factory _$PropertyFeaturesIndoorDetailsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PropertyFeaturesIndoorDetailsImplFromJson(json);

  @override
  @JsonKey(name: "AlarmSystem")
  final bool? alarmSystem;
  @override
  @JsonKey(name: "BuiltInWardrobes")
  final bool? builtInWardrobes;
  @override
  @JsonKey(name: "DuctedVacuumSystem")
  final bool? ductedVacuumSystem;
  @override
  @JsonKey(name: "Gym")
  final bool? gym;
  @override
  @JsonKey(name: "Intercom")
  final bool? intercom;
  @override
  @JsonKey(name: "RumpusRoom")
  final bool? rumpusRoom;
  @override
  @JsonKey(name: "Workshop")
  final bool? workshop;
  @override
  @JsonKey(name: "BroadbandInternetAvailable")
  final bool? broadbandInternetAvailable;
  @override
  @JsonKey(name: "Dishwasher")
  final bool? dishwasher;
  @override
  @JsonKey(name: "Floorboards")
  final bool? floorboards;
  @override
  @JsonKey(name: "InsideSpa")
  final bool? insideSpa;
  @override
  @JsonKey(name: "PayTvaccess")
  final bool? payTvaccess;
  @override
  @JsonKey(name: "Study")
  final bool? study;

  @override
  String toString() {
    return 'PropertyFeaturesIndoorDetails(alarmSystem: $alarmSystem, builtInWardrobes: $builtInWardrobes, ductedVacuumSystem: $ductedVacuumSystem, gym: $gym, intercom: $intercom, rumpusRoom: $rumpusRoom, workshop: $workshop, broadbandInternetAvailable: $broadbandInternetAvailable, dishwasher: $dishwasher, floorboards: $floorboards, insideSpa: $insideSpa, payTvaccess: $payTvaccess, study: $study)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyFeaturesIndoorDetailsImpl &&
            (identical(other.alarmSystem, alarmSystem) ||
                other.alarmSystem == alarmSystem) &&
            (identical(other.builtInWardrobes, builtInWardrobes) ||
                other.builtInWardrobes == builtInWardrobes) &&
            (identical(other.ductedVacuumSystem, ductedVacuumSystem) ||
                other.ductedVacuumSystem == ductedVacuumSystem) &&
            (identical(other.gym, gym) || other.gym == gym) &&
            (identical(other.intercom, intercom) ||
                other.intercom == intercom) &&
            (identical(other.rumpusRoom, rumpusRoom) ||
                other.rumpusRoom == rumpusRoom) &&
            (identical(other.workshop, workshop) ||
                other.workshop == workshop) &&
            (identical(other.broadbandInternetAvailable,
                    broadbandInternetAvailable) ||
                other.broadbandInternetAvailable ==
                    broadbandInternetAvailable) &&
            (identical(other.dishwasher, dishwasher) ||
                other.dishwasher == dishwasher) &&
            (identical(other.floorboards, floorboards) ||
                other.floorboards == floorboards) &&
            (identical(other.insideSpa, insideSpa) ||
                other.insideSpa == insideSpa) &&
            (identical(other.payTvaccess, payTvaccess) ||
                other.payTvaccess == payTvaccess) &&
            (identical(other.study, study) || other.study == study));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      alarmSystem,
      builtInWardrobes,
      ductedVacuumSystem,
      gym,
      intercom,
      rumpusRoom,
      workshop,
      broadbandInternetAvailable,
      dishwasher,
      floorboards,
      insideSpa,
      payTvaccess,
      study);

  /// Create a copy of PropertyFeaturesIndoorDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyFeaturesIndoorDetailsImplCopyWith<
          _$PropertyFeaturesIndoorDetailsImpl>
      get copyWith => __$$PropertyFeaturesIndoorDetailsImplCopyWithImpl<
          _$PropertyFeaturesIndoorDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyFeaturesIndoorDetailsImplToJson(
      this,
    );
  }
}

abstract class _PropertyFeaturesIndoorDetails
    implements PropertyFeaturesIndoorDetails {
  factory _PropertyFeaturesIndoorDetails(
          {@JsonKey(name: "AlarmSystem") final bool? alarmSystem,
          @JsonKey(name: "BuiltInWardrobes") final bool? builtInWardrobes,
          @JsonKey(name: "DuctedVacuumSystem") final bool? ductedVacuumSystem,
          @JsonKey(name: "Gym") final bool? gym,
          @JsonKey(name: "Intercom") final bool? intercom,
          @JsonKey(name: "RumpusRoom") final bool? rumpusRoom,
          @JsonKey(name: "Workshop") final bool? workshop,
          @JsonKey(name: "BroadbandInternetAvailable")
          final bool? broadbandInternetAvailable,
          @JsonKey(name: "Dishwasher") final bool? dishwasher,
          @JsonKey(name: "Floorboards") final bool? floorboards,
          @JsonKey(name: "InsideSpa") final bool? insideSpa,
          @JsonKey(name: "PayTvaccess") final bool? payTvaccess,
          @JsonKey(name: "Study") final bool? study}) =
      _$PropertyFeaturesIndoorDetailsImpl;

  factory _PropertyFeaturesIndoorDetails.fromJson(Map<String, dynamic> json) =
      _$PropertyFeaturesIndoorDetailsImpl.fromJson;

  @override
  @JsonKey(name: "AlarmSystem")
  bool? get alarmSystem;
  @override
  @JsonKey(name: "BuiltInWardrobes")
  bool? get builtInWardrobes;
  @override
  @JsonKey(name: "DuctedVacuumSystem")
  bool? get ductedVacuumSystem;
  @override
  @JsonKey(name: "Gym")
  bool? get gym;
  @override
  @JsonKey(name: "Intercom")
  bool? get intercom;
  @override
  @JsonKey(name: "RumpusRoom")
  bool? get rumpusRoom;
  @override
  @JsonKey(name: "Workshop")
  bool? get workshop;
  @override
  @JsonKey(name: "BroadbandInternetAvailable")
  bool? get broadbandInternetAvailable;
  @override
  @JsonKey(name: "Dishwasher")
  bool? get dishwasher;
  @override
  @JsonKey(name: "Floorboards")
  bool? get floorboards;
  @override
  @JsonKey(name: "InsideSpa")
  bool? get insideSpa;
  @override
  @JsonKey(name: "PayTvaccess")
  bool? get payTvaccess;
  @override
  @JsonKey(name: "Study")
  bool? get study;

  /// Create a copy of PropertyFeaturesIndoorDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyFeaturesIndoorDetailsImplCopyWith<
          _$PropertyFeaturesIndoorDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PropertyFeaturesHeatCoolDetails _$PropertyFeaturesHeatCoolDetailsFromJson(
    Map<String, dynamic> json) {
  return _PropertyFeaturesHeatCoolDetails.fromJson(json);
}

/// @nodoc
mixin _$PropertyFeaturesHeatCoolDetails {
  @JsonKey(name: "AirConditioning")
  bool? get airConditioning => throw _privateConstructorUsedError;
  @JsonKey(name: "DuctedHeating")
  bool? get ductedHeating => throw _privateConstructorUsedError;
  @JsonKey(name: "GasHeating")
  bool? get gasHeating => throw _privateConstructorUsedError;
  @JsonKey(name: "OpenFireplace")
  bool? get openFireplace => throw _privateConstructorUsedError;
  @JsonKey(name: "SplitSystemAirConditioning")
  bool? get splitSystemAirConditioning => throw _privateConstructorUsedError;
  @JsonKey(name: "DuctedCooling")
  bool? get ductedCooling => throw _privateConstructorUsedError;
  @JsonKey(name: "EvaporativeCooling")
  bool? get evaporativeCooling => throw _privateConstructorUsedError;
  @JsonKey(name: "HydraulicHeating")
  bool? get hydraulicHeating => throw _privateConstructorUsedError;
  @JsonKey(name: "ReverseCycleAirConditioning")
  bool? get reverseCycleAirConditioning => throw _privateConstructorUsedError;
  @JsonKey(name: "SplitSystemHeating")
  bool? get splitSystemHeating => throw _privateConstructorUsedError;

  /// Serializes this PropertyFeaturesHeatCoolDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyFeaturesHeatCoolDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyFeaturesHeatCoolDetailsCopyWith<PropertyFeaturesHeatCoolDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyFeaturesHeatCoolDetailsCopyWith<$Res> {
  factory $PropertyFeaturesHeatCoolDetailsCopyWith(
          PropertyFeaturesHeatCoolDetails value,
          $Res Function(PropertyFeaturesHeatCoolDetails) then) =
      _$PropertyFeaturesHeatCoolDetailsCopyWithImpl<$Res,
          PropertyFeaturesHeatCoolDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "AirConditioning") bool? airConditioning,
      @JsonKey(name: "DuctedHeating") bool? ductedHeating,
      @JsonKey(name: "GasHeating") bool? gasHeating,
      @JsonKey(name: "OpenFireplace") bool? openFireplace,
      @JsonKey(name: "SplitSystemAirConditioning")
      bool? splitSystemAirConditioning,
      @JsonKey(name: "DuctedCooling") bool? ductedCooling,
      @JsonKey(name: "EvaporativeCooling") bool? evaporativeCooling,
      @JsonKey(name: "HydraulicHeating") bool? hydraulicHeating,
      @JsonKey(name: "ReverseCycleAirConditioning")
      bool? reverseCycleAirConditioning,
      @JsonKey(name: "SplitSystemHeating") bool? splitSystemHeating});
}

/// @nodoc
class _$PropertyFeaturesHeatCoolDetailsCopyWithImpl<$Res,
        $Val extends PropertyFeaturesHeatCoolDetails>
    implements $PropertyFeaturesHeatCoolDetailsCopyWith<$Res> {
  _$PropertyFeaturesHeatCoolDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyFeaturesHeatCoolDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airConditioning = freezed,
    Object? ductedHeating = freezed,
    Object? gasHeating = freezed,
    Object? openFireplace = freezed,
    Object? splitSystemAirConditioning = freezed,
    Object? ductedCooling = freezed,
    Object? evaporativeCooling = freezed,
    Object? hydraulicHeating = freezed,
    Object? reverseCycleAirConditioning = freezed,
    Object? splitSystemHeating = freezed,
  }) {
    return _then(_value.copyWith(
      airConditioning: freezed == airConditioning
          ? _value.airConditioning
          : airConditioning // ignore: cast_nullable_to_non_nullable
              as bool?,
      ductedHeating: freezed == ductedHeating
          ? _value.ductedHeating
          : ductedHeating // ignore: cast_nullable_to_non_nullable
              as bool?,
      gasHeating: freezed == gasHeating
          ? _value.gasHeating
          : gasHeating // ignore: cast_nullable_to_non_nullable
              as bool?,
      openFireplace: freezed == openFireplace
          ? _value.openFireplace
          : openFireplace // ignore: cast_nullable_to_non_nullable
              as bool?,
      splitSystemAirConditioning: freezed == splitSystemAirConditioning
          ? _value.splitSystemAirConditioning
          : splitSystemAirConditioning // ignore: cast_nullable_to_non_nullable
              as bool?,
      ductedCooling: freezed == ductedCooling
          ? _value.ductedCooling
          : ductedCooling // ignore: cast_nullable_to_non_nullable
              as bool?,
      evaporativeCooling: freezed == evaporativeCooling
          ? _value.evaporativeCooling
          : evaporativeCooling // ignore: cast_nullable_to_non_nullable
              as bool?,
      hydraulicHeating: freezed == hydraulicHeating
          ? _value.hydraulicHeating
          : hydraulicHeating // ignore: cast_nullable_to_non_nullable
              as bool?,
      reverseCycleAirConditioning: freezed == reverseCycleAirConditioning
          ? _value.reverseCycleAirConditioning
          : reverseCycleAirConditioning // ignore: cast_nullable_to_non_nullable
              as bool?,
      splitSystemHeating: freezed == splitSystemHeating
          ? _value.splitSystemHeating
          : splitSystemHeating // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyFeaturesHeatCoolDetailsImplCopyWith<$Res>
    implements $PropertyFeaturesHeatCoolDetailsCopyWith<$Res> {
  factory _$$PropertyFeaturesHeatCoolDetailsImplCopyWith(
          _$PropertyFeaturesHeatCoolDetailsImpl value,
          $Res Function(_$PropertyFeaturesHeatCoolDetailsImpl) then) =
      __$$PropertyFeaturesHeatCoolDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "AirConditioning") bool? airConditioning,
      @JsonKey(name: "DuctedHeating") bool? ductedHeating,
      @JsonKey(name: "GasHeating") bool? gasHeating,
      @JsonKey(name: "OpenFireplace") bool? openFireplace,
      @JsonKey(name: "SplitSystemAirConditioning")
      bool? splitSystemAirConditioning,
      @JsonKey(name: "DuctedCooling") bool? ductedCooling,
      @JsonKey(name: "EvaporativeCooling") bool? evaporativeCooling,
      @JsonKey(name: "HydraulicHeating") bool? hydraulicHeating,
      @JsonKey(name: "ReverseCycleAirConditioning")
      bool? reverseCycleAirConditioning,
      @JsonKey(name: "SplitSystemHeating") bool? splitSystemHeating});
}

/// @nodoc
class __$$PropertyFeaturesHeatCoolDetailsImplCopyWithImpl<$Res>
    extends _$PropertyFeaturesHeatCoolDetailsCopyWithImpl<$Res,
        _$PropertyFeaturesHeatCoolDetailsImpl>
    implements _$$PropertyFeaturesHeatCoolDetailsImplCopyWith<$Res> {
  __$$PropertyFeaturesHeatCoolDetailsImplCopyWithImpl(
      _$PropertyFeaturesHeatCoolDetailsImpl _value,
      $Res Function(_$PropertyFeaturesHeatCoolDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyFeaturesHeatCoolDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airConditioning = freezed,
    Object? ductedHeating = freezed,
    Object? gasHeating = freezed,
    Object? openFireplace = freezed,
    Object? splitSystemAirConditioning = freezed,
    Object? ductedCooling = freezed,
    Object? evaporativeCooling = freezed,
    Object? hydraulicHeating = freezed,
    Object? reverseCycleAirConditioning = freezed,
    Object? splitSystemHeating = freezed,
  }) {
    return _then(_$PropertyFeaturesHeatCoolDetailsImpl(
      airConditioning: freezed == airConditioning
          ? _value.airConditioning
          : airConditioning // ignore: cast_nullable_to_non_nullable
              as bool?,
      ductedHeating: freezed == ductedHeating
          ? _value.ductedHeating
          : ductedHeating // ignore: cast_nullable_to_non_nullable
              as bool?,
      gasHeating: freezed == gasHeating
          ? _value.gasHeating
          : gasHeating // ignore: cast_nullable_to_non_nullable
              as bool?,
      openFireplace: freezed == openFireplace
          ? _value.openFireplace
          : openFireplace // ignore: cast_nullable_to_non_nullable
              as bool?,
      splitSystemAirConditioning: freezed == splitSystemAirConditioning
          ? _value.splitSystemAirConditioning
          : splitSystemAirConditioning // ignore: cast_nullable_to_non_nullable
              as bool?,
      ductedCooling: freezed == ductedCooling
          ? _value.ductedCooling
          : ductedCooling // ignore: cast_nullable_to_non_nullable
              as bool?,
      evaporativeCooling: freezed == evaporativeCooling
          ? _value.evaporativeCooling
          : evaporativeCooling // ignore: cast_nullable_to_non_nullable
              as bool?,
      hydraulicHeating: freezed == hydraulicHeating
          ? _value.hydraulicHeating
          : hydraulicHeating // ignore: cast_nullable_to_non_nullable
              as bool?,
      reverseCycleAirConditioning: freezed == reverseCycleAirConditioning
          ? _value.reverseCycleAirConditioning
          : reverseCycleAirConditioning // ignore: cast_nullable_to_non_nullable
              as bool?,
      splitSystemHeating: freezed == splitSystemHeating
          ? _value.splitSystemHeating
          : splitSystemHeating // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyFeaturesHeatCoolDetailsImpl
    implements _PropertyFeaturesHeatCoolDetails {
  _$PropertyFeaturesHeatCoolDetailsImpl(
      {@JsonKey(name: "AirConditioning") this.airConditioning,
      @JsonKey(name: "DuctedHeating") this.ductedHeating,
      @JsonKey(name: "GasHeating") this.gasHeating,
      @JsonKey(name: "OpenFireplace") this.openFireplace,
      @JsonKey(name: "SplitSystemAirConditioning")
      this.splitSystemAirConditioning,
      @JsonKey(name: "DuctedCooling") this.ductedCooling,
      @JsonKey(name: "EvaporativeCooling") this.evaporativeCooling,
      @JsonKey(name: "HydraulicHeating") this.hydraulicHeating,
      @JsonKey(name: "ReverseCycleAirConditioning")
      this.reverseCycleAirConditioning,
      @JsonKey(name: "SplitSystemHeating") this.splitSystemHeating});

  factory _$PropertyFeaturesHeatCoolDetailsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PropertyFeaturesHeatCoolDetailsImplFromJson(json);

  @override
  @JsonKey(name: "AirConditioning")
  final bool? airConditioning;
  @override
  @JsonKey(name: "DuctedHeating")
  final bool? ductedHeating;
  @override
  @JsonKey(name: "GasHeating")
  final bool? gasHeating;
  @override
  @JsonKey(name: "OpenFireplace")
  final bool? openFireplace;
  @override
  @JsonKey(name: "SplitSystemAirConditioning")
  final bool? splitSystemAirConditioning;
  @override
  @JsonKey(name: "DuctedCooling")
  final bool? ductedCooling;
  @override
  @JsonKey(name: "EvaporativeCooling")
  final bool? evaporativeCooling;
  @override
  @JsonKey(name: "HydraulicHeating")
  final bool? hydraulicHeating;
  @override
  @JsonKey(name: "ReverseCycleAirConditioning")
  final bool? reverseCycleAirConditioning;
  @override
  @JsonKey(name: "SplitSystemHeating")
  final bool? splitSystemHeating;

  @override
  String toString() {
    return 'PropertyFeaturesHeatCoolDetails(airConditioning: $airConditioning, ductedHeating: $ductedHeating, gasHeating: $gasHeating, openFireplace: $openFireplace, splitSystemAirConditioning: $splitSystemAirConditioning, ductedCooling: $ductedCooling, evaporativeCooling: $evaporativeCooling, hydraulicHeating: $hydraulicHeating, reverseCycleAirConditioning: $reverseCycleAirConditioning, splitSystemHeating: $splitSystemHeating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyFeaturesHeatCoolDetailsImpl &&
            (identical(other.airConditioning, airConditioning) ||
                other.airConditioning == airConditioning) &&
            (identical(other.ductedHeating, ductedHeating) ||
                other.ductedHeating == ductedHeating) &&
            (identical(other.gasHeating, gasHeating) ||
                other.gasHeating == gasHeating) &&
            (identical(other.openFireplace, openFireplace) ||
                other.openFireplace == openFireplace) &&
            (identical(other.splitSystemAirConditioning,
                    splitSystemAirConditioning) ||
                other.splitSystemAirConditioning ==
                    splitSystemAirConditioning) &&
            (identical(other.ductedCooling, ductedCooling) ||
                other.ductedCooling == ductedCooling) &&
            (identical(other.evaporativeCooling, evaporativeCooling) ||
                other.evaporativeCooling == evaporativeCooling) &&
            (identical(other.hydraulicHeating, hydraulicHeating) ||
                other.hydraulicHeating == hydraulicHeating) &&
            (identical(other.reverseCycleAirConditioning,
                    reverseCycleAirConditioning) ||
                other.reverseCycleAirConditioning ==
                    reverseCycleAirConditioning) &&
            (identical(other.splitSystemHeating, splitSystemHeating) ||
                other.splitSystemHeating == splitSystemHeating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      airConditioning,
      ductedHeating,
      gasHeating,
      openFireplace,
      splitSystemAirConditioning,
      ductedCooling,
      evaporativeCooling,
      hydraulicHeating,
      reverseCycleAirConditioning,
      splitSystemHeating);

  /// Create a copy of PropertyFeaturesHeatCoolDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyFeaturesHeatCoolDetailsImplCopyWith<
          _$PropertyFeaturesHeatCoolDetailsImpl>
      get copyWith => __$$PropertyFeaturesHeatCoolDetailsImplCopyWithImpl<
          _$PropertyFeaturesHeatCoolDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyFeaturesHeatCoolDetailsImplToJson(
      this,
    );
  }
}

abstract class _PropertyFeaturesHeatCoolDetails
    implements PropertyFeaturesHeatCoolDetails {
  factory _PropertyFeaturesHeatCoolDetails(
      {@JsonKey(name: "AirConditioning") final bool? airConditioning,
      @JsonKey(name: "DuctedHeating") final bool? ductedHeating,
      @JsonKey(name: "GasHeating") final bool? gasHeating,
      @JsonKey(name: "OpenFireplace") final bool? openFireplace,
      @JsonKey(name: "SplitSystemAirConditioning")
      final bool? splitSystemAirConditioning,
      @JsonKey(name: "DuctedCooling") final bool? ductedCooling,
      @JsonKey(name: "EvaporativeCooling") final bool? evaporativeCooling,
      @JsonKey(name: "HydraulicHeating") final bool? hydraulicHeating,
      @JsonKey(name: "ReverseCycleAirConditioning")
      final bool? reverseCycleAirConditioning,
      @JsonKey(name: "SplitSystemHeating")
      final bool? splitSystemHeating}) = _$PropertyFeaturesHeatCoolDetailsImpl;

  factory _PropertyFeaturesHeatCoolDetails.fromJson(Map<String, dynamic> json) =
      _$PropertyFeaturesHeatCoolDetailsImpl.fromJson;

  @override
  @JsonKey(name: "AirConditioning")
  bool? get airConditioning;
  @override
  @JsonKey(name: "DuctedHeating")
  bool? get ductedHeating;
  @override
  @JsonKey(name: "GasHeating")
  bool? get gasHeating;
  @override
  @JsonKey(name: "OpenFireplace")
  bool? get openFireplace;
  @override
  @JsonKey(name: "SplitSystemAirConditioning")
  bool? get splitSystemAirConditioning;
  @override
  @JsonKey(name: "DuctedCooling")
  bool? get ductedCooling;
  @override
  @JsonKey(name: "EvaporativeCooling")
  bool? get evaporativeCooling;
  @override
  @JsonKey(name: "HydraulicHeating")
  bool? get hydraulicHeating;
  @override
  @JsonKey(name: "ReverseCycleAirConditioning")
  bool? get reverseCycleAirConditioning;
  @override
  @JsonKey(name: "SplitSystemHeating")
  bool? get splitSystemHeating;

  /// Create a copy of PropertyFeaturesHeatCoolDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyFeaturesHeatCoolDetailsImplCopyWith<
          _$PropertyFeaturesHeatCoolDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PropertyEcoFriendlyFeaturesDetails _$PropertyEcoFriendlyFeaturesDetailsFromJson(
    Map<String, dynamic> json) {
  return _PropertyEcoFriendlyFeaturesDetails.fromJson(json);
}

/// @nodoc
mixin _$PropertyEcoFriendlyFeaturesDetails {
  @JsonKey(name: "WaterTank")
  bool? get waterTank => throw _privateConstructorUsedError;
  @JsonKey(name: "GreyWaterSystem")
  bool? get greyWaterSystem => throw _privateConstructorUsedError;
  @JsonKey(name: "SolarPanels")
  bool? get solarPanels => throw _privateConstructorUsedError;
  @JsonKey(name: "SolarHotWater")
  bool? get solarHotWater => throw _privateConstructorUsedError;

  /// Serializes this PropertyEcoFriendlyFeaturesDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyEcoFriendlyFeaturesDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyEcoFriendlyFeaturesDetailsCopyWith<
          PropertyEcoFriendlyFeaturesDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyEcoFriendlyFeaturesDetailsCopyWith<$Res> {
  factory $PropertyEcoFriendlyFeaturesDetailsCopyWith(
          PropertyEcoFriendlyFeaturesDetails value,
          $Res Function(PropertyEcoFriendlyFeaturesDetails) then) =
      _$PropertyEcoFriendlyFeaturesDetailsCopyWithImpl<$Res,
          PropertyEcoFriendlyFeaturesDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "WaterTank") bool? waterTank,
      @JsonKey(name: "GreyWaterSystem") bool? greyWaterSystem,
      @JsonKey(name: "SolarPanels") bool? solarPanels,
      @JsonKey(name: "SolarHotWater") bool? solarHotWater});
}

/// @nodoc
class _$PropertyEcoFriendlyFeaturesDetailsCopyWithImpl<$Res,
        $Val extends PropertyEcoFriendlyFeaturesDetails>
    implements $PropertyEcoFriendlyFeaturesDetailsCopyWith<$Res> {
  _$PropertyEcoFriendlyFeaturesDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyEcoFriendlyFeaturesDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waterTank = freezed,
    Object? greyWaterSystem = freezed,
    Object? solarPanels = freezed,
    Object? solarHotWater = freezed,
  }) {
    return _then(_value.copyWith(
      waterTank: freezed == waterTank
          ? _value.waterTank
          : waterTank // ignore: cast_nullable_to_non_nullable
              as bool?,
      greyWaterSystem: freezed == greyWaterSystem
          ? _value.greyWaterSystem
          : greyWaterSystem // ignore: cast_nullable_to_non_nullable
              as bool?,
      solarPanels: freezed == solarPanels
          ? _value.solarPanels
          : solarPanels // ignore: cast_nullable_to_non_nullable
              as bool?,
      solarHotWater: freezed == solarHotWater
          ? _value.solarHotWater
          : solarHotWater // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyEcoFriendlyFeaturesDetailsImplCopyWith<$Res>
    implements $PropertyEcoFriendlyFeaturesDetailsCopyWith<$Res> {
  factory _$$PropertyEcoFriendlyFeaturesDetailsImplCopyWith(
          _$PropertyEcoFriendlyFeaturesDetailsImpl value,
          $Res Function(_$PropertyEcoFriendlyFeaturesDetailsImpl) then) =
      __$$PropertyEcoFriendlyFeaturesDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "WaterTank") bool? waterTank,
      @JsonKey(name: "GreyWaterSystem") bool? greyWaterSystem,
      @JsonKey(name: "SolarPanels") bool? solarPanels,
      @JsonKey(name: "SolarHotWater") bool? solarHotWater});
}

/// @nodoc
class __$$PropertyEcoFriendlyFeaturesDetailsImplCopyWithImpl<$Res>
    extends _$PropertyEcoFriendlyFeaturesDetailsCopyWithImpl<$Res,
        _$PropertyEcoFriendlyFeaturesDetailsImpl>
    implements _$$PropertyEcoFriendlyFeaturesDetailsImplCopyWith<$Res> {
  __$$PropertyEcoFriendlyFeaturesDetailsImplCopyWithImpl(
      _$PropertyEcoFriendlyFeaturesDetailsImpl _value,
      $Res Function(_$PropertyEcoFriendlyFeaturesDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyEcoFriendlyFeaturesDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waterTank = freezed,
    Object? greyWaterSystem = freezed,
    Object? solarPanels = freezed,
    Object? solarHotWater = freezed,
  }) {
    return _then(_$PropertyEcoFriendlyFeaturesDetailsImpl(
      waterTank: freezed == waterTank
          ? _value.waterTank
          : waterTank // ignore: cast_nullable_to_non_nullable
              as bool?,
      greyWaterSystem: freezed == greyWaterSystem
          ? _value.greyWaterSystem
          : greyWaterSystem // ignore: cast_nullable_to_non_nullable
              as bool?,
      solarPanels: freezed == solarPanels
          ? _value.solarPanels
          : solarPanels // ignore: cast_nullable_to_non_nullable
              as bool?,
      solarHotWater: freezed == solarHotWater
          ? _value.solarHotWater
          : solarHotWater // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyEcoFriendlyFeaturesDetailsImpl
    implements _PropertyEcoFriendlyFeaturesDetails {
  _$PropertyEcoFriendlyFeaturesDetailsImpl(
      {@JsonKey(name: "WaterTank") this.waterTank,
      @JsonKey(name: "GreyWaterSystem") this.greyWaterSystem,
      @JsonKey(name: "SolarPanels") this.solarPanels,
      @JsonKey(name: "SolarHotWater") this.solarHotWater});

  factory _$PropertyEcoFriendlyFeaturesDetailsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PropertyEcoFriendlyFeaturesDetailsImplFromJson(json);

  @override
  @JsonKey(name: "WaterTank")
  final bool? waterTank;
  @override
  @JsonKey(name: "GreyWaterSystem")
  final bool? greyWaterSystem;
  @override
  @JsonKey(name: "SolarPanels")
  final bool? solarPanels;
  @override
  @JsonKey(name: "SolarHotWater")
  final bool? solarHotWater;

  @override
  String toString() {
    return 'PropertyEcoFriendlyFeaturesDetails(waterTank: $waterTank, greyWaterSystem: $greyWaterSystem, solarPanels: $solarPanels, solarHotWater: $solarHotWater)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyEcoFriendlyFeaturesDetailsImpl &&
            (identical(other.waterTank, waterTank) ||
                other.waterTank == waterTank) &&
            (identical(other.greyWaterSystem, greyWaterSystem) ||
                other.greyWaterSystem == greyWaterSystem) &&
            (identical(other.solarPanels, solarPanels) ||
                other.solarPanels == solarPanels) &&
            (identical(other.solarHotWater, solarHotWater) ||
                other.solarHotWater == solarHotWater));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, waterTank, greyWaterSystem, solarPanels, solarHotWater);

  /// Create a copy of PropertyEcoFriendlyFeaturesDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyEcoFriendlyFeaturesDetailsImplCopyWith<
          _$PropertyEcoFriendlyFeaturesDetailsImpl>
      get copyWith => __$$PropertyEcoFriendlyFeaturesDetailsImplCopyWithImpl<
          _$PropertyEcoFriendlyFeaturesDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyEcoFriendlyFeaturesDetailsImplToJson(
      this,
    );
  }
}

abstract class _PropertyEcoFriendlyFeaturesDetails
    implements PropertyEcoFriendlyFeaturesDetails {
  factory _PropertyEcoFriendlyFeaturesDetails(
          {@JsonKey(name: "WaterTank") final bool? waterTank,
          @JsonKey(name: "GreyWaterSystem") final bool? greyWaterSystem,
          @JsonKey(name: "SolarPanels") final bool? solarPanels,
          @JsonKey(name: "SolarHotWater") final bool? solarHotWater}) =
      _$PropertyEcoFriendlyFeaturesDetailsImpl;

  factory _PropertyEcoFriendlyFeaturesDetails.fromJson(
          Map<String, dynamic> json) =
      _$PropertyEcoFriendlyFeaturesDetailsImpl.fromJson;

  @override
  @JsonKey(name: "WaterTank")
  bool? get waterTank;
  @override
  @JsonKey(name: "GreyWaterSystem")
  bool? get greyWaterSystem;
  @override
  @JsonKey(name: "SolarPanels")
  bool? get solarPanels;
  @override
  @JsonKey(name: "SolarHotWater")
  bool? get solarHotWater;

  /// Create a copy of PropertyEcoFriendlyFeaturesDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyEcoFriendlyFeaturesDetailsImplCopyWith<
          _$PropertyEcoFriendlyFeaturesDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
