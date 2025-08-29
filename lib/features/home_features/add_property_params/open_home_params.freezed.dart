// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_home_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenHomeParams _$OpenHomeParamsFromJson(Map<String, dynamic> json) {
  return _OpenHomeParams.fromJson(json);
}

/// @nodoc
mixin _$OpenHomeParams {
  @JsonKey(name: "PropertyId")
  int? get propertyId => throw _privateConstructorUsedError;
  @JsonKey(name: "StartTime")
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: "EndTime")
  String? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: "OpenHomeuniqueId")
  String? get openHomeuniqueId => throw _privateConstructorUsedError;
  @JsonKey(name: "EventDate")
  String? get eventDate => throw _privateConstructorUsedError;
  @JsonKey(name: "CreatedBy")
  int get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "AgencyId")
  int get agencyId => throw _privateConstructorUsedError;
  @JsonKey(name: "AgentId")
  int? get agentId => throw _privateConstructorUsedError;
  @JsonKey(name: "ListingId")
  int? get listingId => throw _privateConstructorUsedError;
  @JsonKey(name: "Publish")
  bool? get publish => throw _privateConstructorUsedError;
  @JsonKey(name: "isrea")
  bool? get isRea => throw _privateConstructorUsedError;
  @JsonKey(name: "isdomain")
  bool? get isDomain => throw _privateConstructorUsedError;
  @JsonKey(name: "LoggedUserId")
  int? get loggedUserId => throw _privateConstructorUsedError;

  /// Serializes this OpenHomeParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenHomeParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenHomeParamsCopyWith<OpenHomeParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenHomeParamsCopyWith<$Res> {
  factory $OpenHomeParamsCopyWith(
          OpenHomeParams value, $Res Function(OpenHomeParams) then) =
      _$OpenHomeParamsCopyWithImpl<$Res, OpenHomeParams>;
  @useResult
  $Res call(
      {@JsonKey(name: "PropertyId") int? propertyId,
      @JsonKey(name: "StartTime") String? startTime,
      @JsonKey(name: "EndTime") String? endTime,
      @JsonKey(name: "OpenHomeuniqueId") String? openHomeuniqueId,
      @JsonKey(name: "EventDate") String? eventDate,
      @JsonKey(name: "CreatedBy") int createdBy,
      @JsonKey(name: "AgencyId") int agencyId,
      @JsonKey(name: "AgentId") int? agentId,
      @JsonKey(name: "ListingId") int? listingId,
      @JsonKey(name: "Publish") bool? publish,
      @JsonKey(name: "isrea") bool? isRea,
      @JsonKey(name: "isdomain") bool? isDomain,
      @JsonKey(name: "LoggedUserId") int? loggedUserId});
}

/// @nodoc
class _$OpenHomeParamsCopyWithImpl<$Res, $Val extends OpenHomeParams>
    implements $OpenHomeParamsCopyWith<$Res> {
  _$OpenHomeParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenHomeParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? openHomeuniqueId = freezed,
    Object? eventDate = freezed,
    Object? createdBy = null,
    Object? agencyId = null,
    Object? agentId = freezed,
    Object? listingId = freezed,
    Object? publish = freezed,
    Object? isRea = freezed,
    Object? isDomain = freezed,
    Object? loggedUserId = freezed,
  }) {
    return _then(_value.copyWith(
      propertyId: freezed == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      openHomeuniqueId: freezed == openHomeuniqueId
          ? _value.openHomeuniqueId
          : openHomeuniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventDate: freezed == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      agencyId: null == agencyId
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as int,
      agentId: freezed == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int?,
      listingId: freezed == listingId
          ? _value.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as int?,
      publish: freezed == publish
          ? _value.publish
          : publish // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRea: freezed == isRea
          ? _value.isRea
          : isRea // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDomain: freezed == isDomain
          ? _value.isDomain
          : isDomain // ignore: cast_nullable_to_non_nullable
              as bool?,
      loggedUserId: freezed == loggedUserId
          ? _value.loggedUserId
          : loggedUserId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenHomeParamsImplCopyWith<$Res>
    implements $OpenHomeParamsCopyWith<$Res> {
  factory _$$OpenHomeParamsImplCopyWith(_$OpenHomeParamsImpl value,
          $Res Function(_$OpenHomeParamsImpl) then) =
      __$$OpenHomeParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "PropertyId") int? propertyId,
      @JsonKey(name: "StartTime") String? startTime,
      @JsonKey(name: "EndTime") String? endTime,
      @JsonKey(name: "OpenHomeuniqueId") String? openHomeuniqueId,
      @JsonKey(name: "EventDate") String? eventDate,
      @JsonKey(name: "CreatedBy") int createdBy,
      @JsonKey(name: "AgencyId") int agencyId,
      @JsonKey(name: "AgentId") int? agentId,
      @JsonKey(name: "ListingId") int? listingId,
      @JsonKey(name: "Publish") bool? publish,
      @JsonKey(name: "isrea") bool? isRea,
      @JsonKey(name: "isdomain") bool? isDomain,
      @JsonKey(name: "LoggedUserId") int? loggedUserId});
}

/// @nodoc
class __$$OpenHomeParamsImplCopyWithImpl<$Res>
    extends _$OpenHomeParamsCopyWithImpl<$Res, _$OpenHomeParamsImpl>
    implements _$$OpenHomeParamsImplCopyWith<$Res> {
  __$$OpenHomeParamsImplCopyWithImpl(
      _$OpenHomeParamsImpl _value, $Res Function(_$OpenHomeParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenHomeParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? openHomeuniqueId = freezed,
    Object? eventDate = freezed,
    Object? createdBy = null,
    Object? agencyId = null,
    Object? agentId = freezed,
    Object? listingId = freezed,
    Object? publish = freezed,
    Object? isRea = freezed,
    Object? isDomain = freezed,
    Object? loggedUserId = freezed,
  }) {
    return _then(_$OpenHomeParamsImpl(
      propertyId: freezed == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      openHomeuniqueId: freezed == openHomeuniqueId
          ? _value.openHomeuniqueId
          : openHomeuniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventDate: freezed == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      agencyId: null == agencyId
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as int,
      agentId: freezed == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int?,
      listingId: freezed == listingId
          ? _value.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as int?,
      publish: freezed == publish
          ? _value.publish
          : publish // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRea: freezed == isRea
          ? _value.isRea
          : isRea // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDomain: freezed == isDomain
          ? _value.isDomain
          : isDomain // ignore: cast_nullable_to_non_nullable
              as bool?,
      loggedUserId: freezed == loggedUserId
          ? _value.loggedUserId
          : loggedUserId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenHomeParamsImpl implements _OpenHomeParams {
  const _$OpenHomeParamsImpl(
      {@JsonKey(name: "PropertyId") this.propertyId,
      @JsonKey(name: "StartTime") this.startTime,
      @JsonKey(name: "EndTime") this.endTime,
      @JsonKey(name: "OpenHomeuniqueId") this.openHomeuniqueId,
      @JsonKey(name: "EventDate") this.eventDate,
      @JsonKey(name: "CreatedBy") this.createdBy = 1,
      @JsonKey(name: "AgencyId") this.agencyId = 1,
      @JsonKey(name: "AgentId") this.agentId = 1,
      @JsonKey(name: "ListingId") this.listingId,
      @JsonKey(name: "Publish") this.publish = true,
      @JsonKey(name: "isrea") this.isRea = false,
      @JsonKey(name: "isdomain") this.isDomain = false,
      @JsonKey(name: "LoggedUserId") this.loggedUserId = 2});

  factory _$OpenHomeParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenHomeParamsImplFromJson(json);

  @override
  @JsonKey(name: "PropertyId")
  final int? propertyId;
  @override
  @JsonKey(name: "StartTime")
  final String? startTime;
  @override
  @JsonKey(name: "EndTime")
  final String? endTime;
  @override
  @JsonKey(name: "OpenHomeuniqueId")
  final String? openHomeuniqueId;
  @override
  @JsonKey(name: "EventDate")
  final String? eventDate;
  @override
  @JsonKey(name: "CreatedBy")
  final int createdBy;
  @override
  @JsonKey(name: "AgencyId")
  final int agencyId;
  @override
  @JsonKey(name: "AgentId")
  final int? agentId;
  @override
  @JsonKey(name: "ListingId")
  final int? listingId;
  @override
  @JsonKey(name: "Publish")
  final bool? publish;
  @override
  @JsonKey(name: "isrea")
  final bool? isRea;
  @override
  @JsonKey(name: "isdomain")
  final bool? isDomain;
  @override
  @JsonKey(name: "LoggedUserId")
  final int? loggedUserId;

  @override
  String toString() {
    return 'OpenHomeParams(propertyId: $propertyId, startTime: $startTime, endTime: $endTime, openHomeuniqueId: $openHomeuniqueId, eventDate: $eventDate, createdBy: $createdBy, agencyId: $agencyId, agentId: $agentId, listingId: $listingId, publish: $publish, isRea: $isRea, isDomain: $isDomain, loggedUserId: $loggedUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenHomeParamsImpl &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.openHomeuniqueId, openHomeuniqueId) ||
                other.openHomeuniqueId == openHomeuniqueId) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.agencyId, agencyId) ||
                other.agencyId == agencyId) &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            (identical(other.listingId, listingId) ||
                other.listingId == listingId) &&
            (identical(other.publish, publish) || other.publish == publish) &&
            (identical(other.isRea, isRea) || other.isRea == isRea) &&
            (identical(other.isDomain, isDomain) ||
                other.isDomain == isDomain) &&
            (identical(other.loggedUserId, loggedUserId) ||
                other.loggedUserId == loggedUserId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      propertyId,
      startTime,
      endTime,
      openHomeuniqueId,
      eventDate,
      createdBy,
      agencyId,
      agentId,
      listingId,
      publish,
      isRea,
      isDomain,
      loggedUserId);

  /// Create a copy of OpenHomeParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenHomeParamsImplCopyWith<_$OpenHomeParamsImpl> get copyWith =>
      __$$OpenHomeParamsImplCopyWithImpl<_$OpenHomeParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenHomeParamsImplToJson(
      this,
    );
  }
}

abstract class _OpenHomeParams implements OpenHomeParams {
  const factory _OpenHomeParams(
          {@JsonKey(name: "PropertyId") final int? propertyId,
          @JsonKey(name: "StartTime") final String? startTime,
          @JsonKey(name: "EndTime") final String? endTime,
          @JsonKey(name: "OpenHomeuniqueId") final String? openHomeuniqueId,
          @JsonKey(name: "EventDate") final String? eventDate,
          @JsonKey(name: "CreatedBy") final int createdBy,
          @JsonKey(name: "AgencyId") final int agencyId,
          @JsonKey(name: "AgentId") final int? agentId,
          @JsonKey(name: "ListingId") final int? listingId,
          @JsonKey(name: "Publish") final bool? publish,
          @JsonKey(name: "isrea") final bool? isRea,
          @JsonKey(name: "isdomain") final bool? isDomain,
          @JsonKey(name: "LoggedUserId") final int? loggedUserId}) =
      _$OpenHomeParamsImpl;

  factory _OpenHomeParams.fromJson(Map<String, dynamic> json) =
      _$OpenHomeParamsImpl.fromJson;

  @override
  @JsonKey(name: "PropertyId")
  int? get propertyId;
  @override
  @JsonKey(name: "StartTime")
  String? get startTime;
  @override
  @JsonKey(name: "EndTime")
  String? get endTime;
  @override
  @JsonKey(name: "OpenHomeuniqueId")
  String? get openHomeuniqueId;
  @override
  @JsonKey(name: "EventDate")
  String? get eventDate;
  @override
  @JsonKey(name: "CreatedBy")
  int get createdBy;
  @override
  @JsonKey(name: "AgencyId")
  int get agencyId;
  @override
  @JsonKey(name: "AgentId")
  int? get agentId;
  @override
  @JsonKey(name: "ListingId")
  int? get listingId;
  @override
  @JsonKey(name: "Publish")
  bool? get publish;
  @override
  @JsonKey(name: "isrea")
  bool? get isRea;
  @override
  @JsonKey(name: "isdomain")
  bool? get isDomain;
  @override
  @JsonKey(name: "LoggedUserId")
  int? get loggedUserId;

  /// Create a copy of OpenHomeParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenHomeParamsImplCopyWith<_$OpenHomeParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
