// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_property_listing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListingParams _$ListingParamsFromJson(Map<String, dynamic> json) {
  return _ListingParams.fromJson(json);
}

/// @nodoc
mixin _$ListingParams {
  @JsonKey(name: "ListingId")
  int? get listingId => throw _privateConstructorUsedError;
  @JsonKey(name: "PropertySaleRental")
  int get propertySaleRental => throw _privateConstructorUsedError;
  @JsonKey(name: "PropertyId")
  int? get propertyId => throw _privateConstructorUsedError;
  @JsonKey(name: "ListingStatus")
  int? get listingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "PropertyAgreementType")
  int? get propertyAgreementType => throw _privateConstructorUsedError;
  @JsonKey(name: "PropertyPrice")
  int? get propertyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "RentPrice")
  int get rentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "IsCommercial")
  bool? get isCommercial => throw _privateConstructorUsedError;
  @JsonKey(name: "IsDualAgent")
  bool? get isDualAgent => throw _privateConstructorUsedError;
  @JsonKey(name: "IsShowPrice")
  bool? get isShowPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "ShowText")
  String? get showText => throw _privateConstructorUsedError;
  @JsonKey(name: "ListingAgentId")
  int get listingAgentId => throw _privateConstructorUsedError;
  @JsonKey(name: "RentTenure")
  int? get rentTenure => throw _privateConstructorUsedError;
  @JsonKey(name: "IsNew")
  int? get isNew => throw _privateConstructorUsedError;
  @JsonKey(name: "ReaUploadId")
  String? get reaUploadId => throw _privateConstructorUsedError;
  @JsonKey(name: "DateAvailable")
  String? get dateAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: "UserId")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "LoggedUserId")
  int? get loggedUserId => throw _privateConstructorUsedError;

  /// Serializes this ListingParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListingParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListingParamsCopyWith<ListingParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingParamsCopyWith<$Res> {
  factory $ListingParamsCopyWith(
          ListingParams value, $Res Function(ListingParams) then) =
      _$ListingParamsCopyWithImpl<$Res, ListingParams>;
  @useResult
  $Res call(
      {@JsonKey(name: "ListingId") int? listingId,
      @JsonKey(name: "PropertySaleRental") int propertySaleRental,
      @JsonKey(name: "PropertyId") int? propertyId,
      @JsonKey(name: "ListingStatus") int? listingStatus,
      @JsonKey(name: "PropertyAgreementType") int? propertyAgreementType,
      @JsonKey(name: "PropertyPrice") int? propertyPrice,
      @JsonKey(name: "RentPrice") int rentPrice,
      @JsonKey(name: "IsCommercial") bool? isCommercial,
      @JsonKey(name: "IsDualAgent") bool? isDualAgent,
      @JsonKey(name: "IsShowPrice") bool? isShowPrice,
      @JsonKey(name: "ShowText") String? showText,
      @JsonKey(name: "ListingAgentId") int listingAgentId,
      @JsonKey(name: "RentTenure") int? rentTenure,
      @JsonKey(name: "IsNew") int? isNew,
      @JsonKey(name: "ReaUploadId") String? reaUploadId,
      @JsonKey(name: "DateAvailable") String? dateAvailable,
      @JsonKey(name: "UserId") int? userId,
      @JsonKey(name: "LoggedUserId") int? loggedUserId});
}

/// @nodoc
class _$ListingParamsCopyWithImpl<$Res, $Val extends ListingParams>
    implements $ListingParamsCopyWith<$Res> {
  _$ListingParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListingParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listingId = freezed,
    Object? propertySaleRental = null,
    Object? propertyId = freezed,
    Object? listingStatus = freezed,
    Object? propertyAgreementType = freezed,
    Object? propertyPrice = freezed,
    Object? rentPrice = null,
    Object? isCommercial = freezed,
    Object? isDualAgent = freezed,
    Object? isShowPrice = freezed,
    Object? showText = freezed,
    Object? listingAgentId = null,
    Object? rentTenure = freezed,
    Object? isNew = freezed,
    Object? reaUploadId = freezed,
    Object? dateAvailable = freezed,
    Object? userId = freezed,
    Object? loggedUserId = freezed,
  }) {
    return _then(_value.copyWith(
      listingId: freezed == listingId
          ? _value.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as int?,
      propertySaleRental: null == propertySaleRental
          ? _value.propertySaleRental
          : propertySaleRental // ignore: cast_nullable_to_non_nullable
              as int,
      propertyId: freezed == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int?,
      listingStatus: freezed == listingStatus
          ? _value.listingStatus
          : listingStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyAgreementType: freezed == propertyAgreementType
          ? _value.propertyAgreementType
          : propertyAgreementType // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyPrice: freezed == propertyPrice
          ? _value.propertyPrice
          : propertyPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      rentPrice: null == rentPrice
          ? _value.rentPrice
          : rentPrice // ignore: cast_nullable_to_non_nullable
              as int,
      isCommercial: freezed == isCommercial
          ? _value.isCommercial
          : isCommercial // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDualAgent: freezed == isDualAgent
          ? _value.isDualAgent
          : isDualAgent // ignore: cast_nullable_to_non_nullable
              as bool?,
      isShowPrice: freezed == isShowPrice
          ? _value.isShowPrice
          : isShowPrice // ignore: cast_nullable_to_non_nullable
              as bool?,
      showText: freezed == showText
          ? _value.showText
          : showText // ignore: cast_nullable_to_non_nullable
              as String?,
      listingAgentId: null == listingAgentId
          ? _value.listingAgentId
          : listingAgentId // ignore: cast_nullable_to_non_nullable
              as int,
      rentTenure: freezed == rentTenure
          ? _value.rentTenure
          : rentTenure // ignore: cast_nullable_to_non_nullable
              as int?,
      isNew: freezed == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as int?,
      reaUploadId: freezed == reaUploadId
          ? _value.reaUploadId
          : reaUploadId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAvailable: freezed == dateAvailable
          ? _value.dateAvailable
          : dateAvailable // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      loggedUserId: freezed == loggedUserId
          ? _value.loggedUserId
          : loggedUserId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListingParamsImplCopyWith<$Res>
    implements $ListingParamsCopyWith<$Res> {
  factory _$$ListingParamsImplCopyWith(
          _$ListingParamsImpl value, $Res Function(_$ListingParamsImpl) then) =
      __$$ListingParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ListingId") int? listingId,
      @JsonKey(name: "PropertySaleRental") int propertySaleRental,
      @JsonKey(name: "PropertyId") int? propertyId,
      @JsonKey(name: "ListingStatus") int? listingStatus,
      @JsonKey(name: "PropertyAgreementType") int? propertyAgreementType,
      @JsonKey(name: "PropertyPrice") int? propertyPrice,
      @JsonKey(name: "RentPrice") int rentPrice,
      @JsonKey(name: "IsCommercial") bool? isCommercial,
      @JsonKey(name: "IsDualAgent") bool? isDualAgent,
      @JsonKey(name: "IsShowPrice") bool? isShowPrice,
      @JsonKey(name: "ShowText") String? showText,
      @JsonKey(name: "ListingAgentId") int listingAgentId,
      @JsonKey(name: "RentTenure") int? rentTenure,
      @JsonKey(name: "IsNew") int? isNew,
      @JsonKey(name: "ReaUploadId") String? reaUploadId,
      @JsonKey(name: "DateAvailable") String? dateAvailable,
      @JsonKey(name: "UserId") int? userId,
      @JsonKey(name: "LoggedUserId") int? loggedUserId});
}

/// @nodoc
class __$$ListingParamsImplCopyWithImpl<$Res>
    extends _$ListingParamsCopyWithImpl<$Res, _$ListingParamsImpl>
    implements _$$ListingParamsImplCopyWith<$Res> {
  __$$ListingParamsImplCopyWithImpl(
      _$ListingParamsImpl _value, $Res Function(_$ListingParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListingParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listingId = freezed,
    Object? propertySaleRental = null,
    Object? propertyId = freezed,
    Object? listingStatus = freezed,
    Object? propertyAgreementType = freezed,
    Object? propertyPrice = freezed,
    Object? rentPrice = null,
    Object? isCommercial = freezed,
    Object? isDualAgent = freezed,
    Object? isShowPrice = freezed,
    Object? showText = freezed,
    Object? listingAgentId = null,
    Object? rentTenure = freezed,
    Object? isNew = freezed,
    Object? reaUploadId = freezed,
    Object? dateAvailable = freezed,
    Object? userId = freezed,
    Object? loggedUserId = freezed,
  }) {
    return _then(_$ListingParamsImpl(
      listingId: freezed == listingId
          ? _value.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as int?,
      propertySaleRental: null == propertySaleRental
          ? _value.propertySaleRental
          : propertySaleRental // ignore: cast_nullable_to_non_nullable
              as int,
      propertyId: freezed == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int?,
      listingStatus: freezed == listingStatus
          ? _value.listingStatus
          : listingStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyAgreementType: freezed == propertyAgreementType
          ? _value.propertyAgreementType
          : propertyAgreementType // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyPrice: freezed == propertyPrice
          ? _value.propertyPrice
          : propertyPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      rentPrice: null == rentPrice
          ? _value.rentPrice
          : rentPrice // ignore: cast_nullable_to_non_nullable
              as int,
      isCommercial: freezed == isCommercial
          ? _value.isCommercial
          : isCommercial // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDualAgent: freezed == isDualAgent
          ? _value.isDualAgent
          : isDualAgent // ignore: cast_nullable_to_non_nullable
              as bool?,
      isShowPrice: freezed == isShowPrice
          ? _value.isShowPrice
          : isShowPrice // ignore: cast_nullable_to_non_nullable
              as bool?,
      showText: freezed == showText
          ? _value.showText
          : showText // ignore: cast_nullable_to_non_nullable
              as String?,
      listingAgentId: null == listingAgentId
          ? _value.listingAgentId
          : listingAgentId // ignore: cast_nullable_to_non_nullable
              as int,
      rentTenure: freezed == rentTenure
          ? _value.rentTenure
          : rentTenure // ignore: cast_nullable_to_non_nullable
              as int?,
      isNew: freezed == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as int?,
      reaUploadId: freezed == reaUploadId
          ? _value.reaUploadId
          : reaUploadId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAvailable: freezed == dateAvailable
          ? _value.dateAvailable
          : dateAvailable // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      loggedUserId: freezed == loggedUserId
          ? _value.loggedUserId
          : loggedUserId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListingParamsImpl implements _ListingParams {
  const _$ListingParamsImpl(
      {@JsonKey(name: "ListingId") this.listingId = 0,
      @JsonKey(name: "PropertySaleRental") this.propertySaleRental = 1,
      @JsonKey(name: "PropertyId") this.propertyId,
      @JsonKey(name: "ListingStatus") this.listingStatus = 1,
      @JsonKey(name: "PropertyAgreementType") this.propertyAgreementType = 2,
      @JsonKey(name: "PropertyPrice") this.propertyPrice,
      @JsonKey(name: "RentPrice") this.rentPrice = 0,
      @JsonKey(name: "IsCommercial") this.isCommercial = false,
      @JsonKey(name: "IsDualAgent") this.isDualAgent = false,
      @JsonKey(name: "IsShowPrice") this.isShowPrice = true,
      @JsonKey(name: "ShowText") this.showText,
      @JsonKey(name: "ListingAgentId") this.listingAgentId = 4,
      @JsonKey(name: "RentTenure") this.rentTenure,
      @JsonKey(name: "IsNew") this.isNew = 1,
      @JsonKey(name: "ReaUploadId") this.reaUploadId,
      @JsonKey(name: "DateAvailable") this.dateAvailable,
      @JsonKey(name: "UserId") this.userId,
      @JsonKey(name: "LoggedUserId") this.loggedUserId = 2});

  factory _$ListingParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListingParamsImplFromJson(json);

  @override
  @JsonKey(name: "ListingId")
  final int? listingId;
  @override
  @JsonKey(name: "PropertySaleRental")
  final int propertySaleRental;
  @override
  @JsonKey(name: "PropertyId")
  final int? propertyId;
  @override
  @JsonKey(name: "ListingStatus")
  final int? listingStatus;
  @override
  @JsonKey(name: "PropertyAgreementType")
  final int? propertyAgreementType;
  @override
  @JsonKey(name: "PropertyPrice")
  final int? propertyPrice;
  @override
  @JsonKey(name: "RentPrice")
  final int rentPrice;
  @override
  @JsonKey(name: "IsCommercial")
  final bool? isCommercial;
  @override
  @JsonKey(name: "IsDualAgent")
  final bool? isDualAgent;
  @override
  @JsonKey(name: "IsShowPrice")
  final bool? isShowPrice;
  @override
  @JsonKey(name: "ShowText")
  final String? showText;
  @override
  @JsonKey(name: "ListingAgentId")
  final int listingAgentId;
  @override
  @JsonKey(name: "RentTenure")
  final int? rentTenure;
  @override
  @JsonKey(name: "IsNew")
  final int? isNew;
  @override
  @JsonKey(name: "ReaUploadId")
  final String? reaUploadId;
  @override
  @JsonKey(name: "DateAvailable")
  final String? dateAvailable;
  @override
  @JsonKey(name: "UserId")
  final int? userId;
  @override
  @JsonKey(name: "LoggedUserId")
  final int? loggedUserId;

  @override
  String toString() {
    return 'ListingParams(listingId: $listingId, propertySaleRental: $propertySaleRental, propertyId: $propertyId, listingStatus: $listingStatus, propertyAgreementType: $propertyAgreementType, propertyPrice: $propertyPrice, rentPrice: $rentPrice, isCommercial: $isCommercial, isDualAgent: $isDualAgent, isShowPrice: $isShowPrice, showText: $showText, listingAgentId: $listingAgentId, rentTenure: $rentTenure, isNew: $isNew, reaUploadId: $reaUploadId, dateAvailable: $dateAvailable, userId: $userId, loggedUserId: $loggedUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListingParamsImpl &&
            (identical(other.listingId, listingId) ||
                other.listingId == listingId) &&
            (identical(other.propertySaleRental, propertySaleRental) ||
                other.propertySaleRental == propertySaleRental) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.listingStatus, listingStatus) ||
                other.listingStatus == listingStatus) &&
            (identical(other.propertyAgreementType, propertyAgreementType) ||
                other.propertyAgreementType == propertyAgreementType) &&
            (identical(other.propertyPrice, propertyPrice) ||
                other.propertyPrice == propertyPrice) &&
            (identical(other.rentPrice, rentPrice) ||
                other.rentPrice == rentPrice) &&
            (identical(other.isCommercial, isCommercial) ||
                other.isCommercial == isCommercial) &&
            (identical(other.isDualAgent, isDualAgent) ||
                other.isDualAgent == isDualAgent) &&
            (identical(other.isShowPrice, isShowPrice) ||
                other.isShowPrice == isShowPrice) &&
            (identical(other.showText, showText) ||
                other.showText == showText) &&
            (identical(other.listingAgentId, listingAgentId) ||
                other.listingAgentId == listingAgentId) &&
            (identical(other.rentTenure, rentTenure) ||
                other.rentTenure == rentTenure) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.reaUploadId, reaUploadId) ||
                other.reaUploadId == reaUploadId) &&
            (identical(other.dateAvailable, dateAvailable) ||
                other.dateAvailable == dateAvailable) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.loggedUserId, loggedUserId) ||
                other.loggedUserId == loggedUserId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      listingId,
      propertySaleRental,
      propertyId,
      listingStatus,
      propertyAgreementType,
      propertyPrice,
      rentPrice,
      isCommercial,
      isDualAgent,
      isShowPrice,
      showText,
      listingAgentId,
      rentTenure,
      isNew,
      reaUploadId,
      dateAvailable,
      userId,
      loggedUserId);

  /// Create a copy of ListingParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListingParamsImplCopyWith<_$ListingParamsImpl> get copyWith =>
      __$$ListingParamsImplCopyWithImpl<_$ListingParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListingParamsImplToJson(
      this,
    );
  }
}

abstract class _ListingParams implements ListingParams {
  const factory _ListingParams(
      {@JsonKey(name: "ListingId") final int? listingId,
      @JsonKey(name: "PropertySaleRental") final int propertySaleRental,
      @JsonKey(name: "PropertyId") final int? propertyId,
      @JsonKey(name: "ListingStatus") final int? listingStatus,
      @JsonKey(name: "PropertyAgreementType") final int? propertyAgreementType,
      @JsonKey(name: "PropertyPrice") final int? propertyPrice,
      @JsonKey(name: "RentPrice") final int rentPrice,
      @JsonKey(name: "IsCommercial") final bool? isCommercial,
      @JsonKey(name: "IsDualAgent") final bool? isDualAgent,
      @JsonKey(name: "IsShowPrice") final bool? isShowPrice,
      @JsonKey(name: "ShowText") final String? showText,
      @JsonKey(name: "ListingAgentId") final int listingAgentId,
      @JsonKey(name: "RentTenure") final int? rentTenure,
      @JsonKey(name: "IsNew") final int? isNew,
      @JsonKey(name: "ReaUploadId") final String? reaUploadId,
      @JsonKey(name: "DateAvailable") final String? dateAvailable,
      @JsonKey(name: "UserId") final int? userId,
      @JsonKey(name: "LoggedUserId")
      final int? loggedUserId}) = _$ListingParamsImpl;

  factory _ListingParams.fromJson(Map<String, dynamic> json) =
      _$ListingParamsImpl.fromJson;

  @override
  @JsonKey(name: "ListingId")
  int? get listingId;
  @override
  @JsonKey(name: "PropertySaleRental")
  int get propertySaleRental;
  @override
  @JsonKey(name: "PropertyId")
  int? get propertyId;
  @override
  @JsonKey(name: "ListingStatus")
  int? get listingStatus;
  @override
  @JsonKey(name: "PropertyAgreementType")
  int? get propertyAgreementType;
  @override
  @JsonKey(name: "PropertyPrice")
  int? get propertyPrice;
  @override
  @JsonKey(name: "RentPrice")
  int get rentPrice;
  @override
  @JsonKey(name: "IsCommercial")
  bool? get isCommercial;
  @override
  @JsonKey(name: "IsDualAgent")
  bool? get isDualAgent;
  @override
  @JsonKey(name: "IsShowPrice")
  bool? get isShowPrice;
  @override
  @JsonKey(name: "ShowText")
  String? get showText;
  @override
  @JsonKey(name: "ListingAgentId")
  int get listingAgentId;
  @override
  @JsonKey(name: "RentTenure")
  int? get rentTenure;
  @override
  @JsonKey(name: "IsNew")
  int? get isNew;
  @override
  @JsonKey(name: "ReaUploadId")
  String? get reaUploadId;
  @override
  @JsonKey(name: "DateAvailable")
  String? get dateAvailable;
  @override
  @JsonKey(name: "UserId")
  int? get userId;
  @override
  @JsonKey(name: "LoggedUserId")
  int? get loggedUserId;

  /// Create a copy of ListingParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListingParamsImplCopyWith<_$ListingParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
