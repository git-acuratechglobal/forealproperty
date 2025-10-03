// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_inspection_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlanInspectionParams _$PlanInspectionParamsFromJson(Map<String, dynamic> json) {
  return _PlanInspectionParams.fromJson(json);
}

/// @nodoc
mixin _$PlanInspectionParams {
  int? get InspectionType => throw _privateConstructorUsedError;
  DateTime? get InspectionDate => throw _privateConstructorUsedError;
  int? get AssignedAgent => throw _privateConstructorUsedError;
  int? get AgencyId => throw _privateConstructorUsedError;
  List<PropertyDetail>? get PropertyDetails =>
      throw _privateConstructorUsedError;
  int? get LoggedUserId => throw _privateConstructorUsedError;

  /// Serializes this PlanInspectionParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlanInspectionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanInspectionParamsCopyWith<PlanInspectionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanInspectionParamsCopyWith<$Res> {
  factory $PlanInspectionParamsCopyWith(PlanInspectionParams value,
          $Res Function(PlanInspectionParams) then) =
      _$PlanInspectionParamsCopyWithImpl<$Res, PlanInspectionParams>;
  @useResult
  $Res call(
      {int? InspectionType,
      DateTime? InspectionDate,
      int? AssignedAgent,
      int? AgencyId,
      List<PropertyDetail>? PropertyDetails,
      int? LoggedUserId});
}

/// @nodoc
class _$PlanInspectionParamsCopyWithImpl<$Res,
        $Val extends PlanInspectionParams>
    implements $PlanInspectionParamsCopyWith<$Res> {
  _$PlanInspectionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanInspectionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? InspectionType = freezed,
    Object? InspectionDate = freezed,
    Object? AssignedAgent = freezed,
    Object? AgencyId = freezed,
    Object? PropertyDetails = freezed,
    Object? LoggedUserId = freezed,
  }) {
    return _then(_value.copyWith(
      InspectionType: freezed == InspectionType
          ? _value.InspectionType
          : InspectionType // ignore: cast_nullable_to_non_nullable
              as int?,
      InspectionDate: freezed == InspectionDate
          ? _value.InspectionDate
          : InspectionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      AssignedAgent: freezed == AssignedAgent
          ? _value.AssignedAgent
          : AssignedAgent // ignore: cast_nullable_to_non_nullable
              as int?,
      AgencyId: freezed == AgencyId
          ? _value.AgencyId
          : AgencyId // ignore: cast_nullable_to_non_nullable
              as int?,
      PropertyDetails: freezed == PropertyDetails
          ? _value.PropertyDetails
          : PropertyDetails // ignore: cast_nullable_to_non_nullable
              as List<PropertyDetail>?,
      LoggedUserId: freezed == LoggedUserId
          ? _value.LoggedUserId
          : LoggedUserId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlanInspectionParamsImplCopyWith<$Res>
    implements $PlanInspectionParamsCopyWith<$Res> {
  factory _$$PlanInspectionParamsImplCopyWith(_$PlanInspectionParamsImpl value,
          $Res Function(_$PlanInspectionParamsImpl) then) =
      __$$PlanInspectionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? InspectionType,
      DateTime? InspectionDate,
      int? AssignedAgent,
      int? AgencyId,
      List<PropertyDetail>? PropertyDetails,
      int? LoggedUserId});
}

/// @nodoc
class __$$PlanInspectionParamsImplCopyWithImpl<$Res>
    extends _$PlanInspectionParamsCopyWithImpl<$Res, _$PlanInspectionParamsImpl>
    implements _$$PlanInspectionParamsImplCopyWith<$Res> {
  __$$PlanInspectionParamsImplCopyWithImpl(_$PlanInspectionParamsImpl _value,
      $Res Function(_$PlanInspectionParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanInspectionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? InspectionType = freezed,
    Object? InspectionDate = freezed,
    Object? AssignedAgent = freezed,
    Object? AgencyId = freezed,
    Object? PropertyDetails = freezed,
    Object? LoggedUserId = freezed,
  }) {
    return _then(_$PlanInspectionParamsImpl(
      InspectionType: freezed == InspectionType
          ? _value.InspectionType
          : InspectionType // ignore: cast_nullable_to_non_nullable
              as int?,
      InspectionDate: freezed == InspectionDate
          ? _value.InspectionDate
          : InspectionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      AssignedAgent: freezed == AssignedAgent
          ? _value.AssignedAgent
          : AssignedAgent // ignore: cast_nullable_to_non_nullable
              as int?,
      AgencyId: freezed == AgencyId
          ? _value.AgencyId
          : AgencyId // ignore: cast_nullable_to_non_nullable
              as int?,
      PropertyDetails: freezed == PropertyDetails
          ? _value._PropertyDetails
          : PropertyDetails // ignore: cast_nullable_to_non_nullable
              as List<PropertyDetail>?,
      LoggedUserId: freezed == LoggedUserId
          ? _value.LoggedUserId
          : LoggedUserId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanInspectionParamsImpl implements _PlanInspectionParams {
  const _$PlanInspectionParamsImpl(
      {this.InspectionType,
      this.InspectionDate,
      this.AssignedAgent,
      this.AgencyId = 1,
      final List<PropertyDetail>? PropertyDetails,
      this.LoggedUserId = 2})
      : _PropertyDetails = PropertyDetails;

  factory _$PlanInspectionParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanInspectionParamsImplFromJson(json);

  @override
  final int? InspectionType;
  @override
  final DateTime? InspectionDate;
  @override
  final int? AssignedAgent;
  @override
  @JsonKey()
  final int? AgencyId;
  final List<PropertyDetail>? _PropertyDetails;
  @override
  List<PropertyDetail>? get PropertyDetails {
    final value = _PropertyDetails;
    if (value == null) return null;
    if (_PropertyDetails is EqualUnmodifiableListView) return _PropertyDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int? LoggedUserId;

  @override
  String toString() {
    return 'PlanInspectionParams(InspectionType: $InspectionType, InspectionDate: $InspectionDate, AssignedAgent: $AssignedAgent, AgencyId: $AgencyId, PropertyDetails: $PropertyDetails, LoggedUserId: $LoggedUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanInspectionParamsImpl &&
            (identical(other.InspectionType, InspectionType) ||
                other.InspectionType == InspectionType) &&
            (identical(other.InspectionDate, InspectionDate) ||
                other.InspectionDate == InspectionDate) &&
            (identical(other.AssignedAgent, AssignedAgent) ||
                other.AssignedAgent == AssignedAgent) &&
            (identical(other.AgencyId, AgencyId) ||
                other.AgencyId == AgencyId) &&
            const DeepCollectionEquality()
                .equals(other._PropertyDetails, _PropertyDetails) &&
            (identical(other.LoggedUserId, LoggedUserId) ||
                other.LoggedUserId == LoggedUserId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      InspectionType,
      InspectionDate,
      AssignedAgent,
      AgencyId,
      const DeepCollectionEquality().hash(_PropertyDetails),
      LoggedUserId);

  /// Create a copy of PlanInspectionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanInspectionParamsImplCopyWith<_$PlanInspectionParamsImpl>
      get copyWith =>
          __$$PlanInspectionParamsImplCopyWithImpl<_$PlanInspectionParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanInspectionParamsImplToJson(
      this,
    );
  }
}

abstract class _PlanInspectionParams implements PlanInspectionParams {
  const factory _PlanInspectionParams(
      {final int? InspectionType,
      final DateTime? InspectionDate,
      final int? AssignedAgent,
      final int? AgencyId,
      final List<PropertyDetail>? PropertyDetails,
      final int? LoggedUserId}) = _$PlanInspectionParamsImpl;

  factory _PlanInspectionParams.fromJson(Map<String, dynamic> json) =
      _$PlanInspectionParamsImpl.fromJson;

  @override
  int? get InspectionType;
  @override
  DateTime? get InspectionDate;
  @override
  int? get AssignedAgent;
  @override
  int? get AgencyId;
  @override
  List<PropertyDetail>? get PropertyDetails;
  @override
  int? get LoggedUserId;

  /// Create a copy of PlanInspectionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanInspectionParamsImplCopyWith<_$PlanInspectionParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PropertyDetail _$PropertyDetailFromJson(Map<String, dynamic> json) {
  return _PropertyDetail.fromJson(json);
}

/// @nodoc
mixin _$PropertyDetail {
  int? get PropertyId => throw _privateConstructorUsedError;
  DateTime? get StartTime => throw _privateConstructorUsedError;
  DateTime? get EndTime => throw _privateConstructorUsedError;

  /// Serializes this PropertyDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyDetailCopyWith<PropertyDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyDetailCopyWith<$Res> {
  factory $PropertyDetailCopyWith(
          PropertyDetail value, $Res Function(PropertyDetail) then) =
      _$PropertyDetailCopyWithImpl<$Res, PropertyDetail>;
  @useResult
  $Res call({int? PropertyId, DateTime? StartTime, DateTime? EndTime});
}

/// @nodoc
class _$PropertyDetailCopyWithImpl<$Res, $Val extends PropertyDetail>
    implements $PropertyDetailCopyWith<$Res> {
  _$PropertyDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? PropertyId = freezed,
    Object? StartTime = freezed,
    Object? EndTime = freezed,
  }) {
    return _then(_value.copyWith(
      PropertyId: freezed == PropertyId
          ? _value.PropertyId
          : PropertyId // ignore: cast_nullable_to_non_nullable
              as int?,
      StartTime: freezed == StartTime
          ? _value.StartTime
          : StartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      EndTime: freezed == EndTime
          ? _value.EndTime
          : EndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyDetailImplCopyWith<$Res>
    implements $PropertyDetailCopyWith<$Res> {
  factory _$$PropertyDetailImplCopyWith(_$PropertyDetailImpl value,
          $Res Function(_$PropertyDetailImpl) then) =
      __$$PropertyDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? PropertyId, DateTime? StartTime, DateTime? EndTime});
}

/// @nodoc
class __$$PropertyDetailImplCopyWithImpl<$Res>
    extends _$PropertyDetailCopyWithImpl<$Res, _$PropertyDetailImpl>
    implements _$$PropertyDetailImplCopyWith<$Res> {
  __$$PropertyDetailImplCopyWithImpl(
      _$PropertyDetailImpl _value, $Res Function(_$PropertyDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? PropertyId = freezed,
    Object? StartTime = freezed,
    Object? EndTime = freezed,
  }) {
    return _then(_$PropertyDetailImpl(
      PropertyId: freezed == PropertyId
          ? _value.PropertyId
          : PropertyId // ignore: cast_nullable_to_non_nullable
              as int?,
      StartTime: freezed == StartTime
          ? _value.StartTime
          : StartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      EndTime: freezed == EndTime
          ? _value.EndTime
          : EndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyDetailImpl implements _PropertyDetail {
  const _$PropertyDetailImpl({this.PropertyId, this.StartTime, this.EndTime});

  factory _$PropertyDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyDetailImplFromJson(json);

  @override
  final int? PropertyId;
  @override
  final DateTime? StartTime;
  @override
  final DateTime? EndTime;

  @override
  String toString() {
    return 'PropertyDetail(PropertyId: $PropertyId, StartTime: $StartTime, EndTime: $EndTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyDetailImpl &&
            (identical(other.PropertyId, PropertyId) ||
                other.PropertyId == PropertyId) &&
            (identical(other.StartTime, StartTime) ||
                other.StartTime == StartTime) &&
            (identical(other.EndTime, EndTime) || other.EndTime == EndTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, PropertyId, StartTime, EndTime);

  /// Create a copy of PropertyDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyDetailImplCopyWith<_$PropertyDetailImpl> get copyWith =>
      __$$PropertyDetailImplCopyWithImpl<_$PropertyDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyDetailImplToJson(
      this,
    );
  }
}

abstract class _PropertyDetail implements PropertyDetail {
  const factory _PropertyDetail(
      {final int? PropertyId,
      final DateTime? StartTime,
      final DateTime? EndTime}) = _$PropertyDetailImpl;

  factory _PropertyDetail.fromJson(Map<String, dynamic> json) =
      _$PropertyDetailImpl.fromJson;

  @override
  int? get PropertyId;
  @override
  DateTime? get StartTime;
  @override
  DateTime? get EndTime;

  /// Create a copy of PropertyDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyDetailImplCopyWith<_$PropertyDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
