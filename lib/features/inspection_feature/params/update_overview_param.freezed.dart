// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_overview_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateOverviewParam _$UpdateOverviewParamFromJson(Map<String, dynamic> json) {
  return _UpdateOverviewParam.fromJson(json);
}

/// @nodoc
mixin _$UpdateOverviewParam {
  int get Id => throw _privateConstructorUsedError;
  String get Summary => throw _privateConstructorUsedError;
  String get AssignedAgent => throw _privateConstructorUsedError;
  int? get TenantFolioId => throw _privateConstructorUsedError;
  String get Label => throw _privateConstructorUsedError;

  /// Serializes this UpdateOverviewParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateOverviewParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateOverviewParamCopyWith<UpdateOverviewParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOverviewParamCopyWith<$Res> {
  factory $UpdateOverviewParamCopyWith(
          UpdateOverviewParam value, $Res Function(UpdateOverviewParam) then) =
      _$UpdateOverviewParamCopyWithImpl<$Res, UpdateOverviewParam>;
  @useResult
  $Res call(
      {int Id,
      String Summary,
      String AssignedAgent,
      int? TenantFolioId,
      String Label});
}

/// @nodoc
class _$UpdateOverviewParamCopyWithImpl<$Res, $Val extends UpdateOverviewParam>
    implements $UpdateOverviewParamCopyWith<$Res> {
  _$UpdateOverviewParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateOverviewParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Id = null,
    Object? Summary = null,
    Object? AssignedAgent = null,
    Object? TenantFolioId = freezed,
    Object? Label = null,
  }) {
    return _then(_value.copyWith(
      Id: null == Id
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as int,
      Summary: null == Summary
          ? _value.Summary
          : Summary // ignore: cast_nullable_to_non_nullable
              as String,
      AssignedAgent: null == AssignedAgent
          ? _value.AssignedAgent
          : AssignedAgent // ignore: cast_nullable_to_non_nullable
              as String,
      TenantFolioId: freezed == TenantFolioId
          ? _value.TenantFolioId
          : TenantFolioId // ignore: cast_nullable_to_non_nullable
              as int?,
      Label: null == Label
          ? _value.Label
          : Label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateOverviewParamImplCopyWith<$Res>
    implements $UpdateOverviewParamCopyWith<$Res> {
  factory _$$UpdateOverviewParamImplCopyWith(_$UpdateOverviewParamImpl value,
          $Res Function(_$UpdateOverviewParamImpl) then) =
      __$$UpdateOverviewParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int Id,
      String Summary,
      String AssignedAgent,
      int? TenantFolioId,
      String Label});
}

/// @nodoc
class __$$UpdateOverviewParamImplCopyWithImpl<$Res>
    extends _$UpdateOverviewParamCopyWithImpl<$Res, _$UpdateOverviewParamImpl>
    implements _$$UpdateOverviewParamImplCopyWith<$Res> {
  __$$UpdateOverviewParamImplCopyWithImpl(_$UpdateOverviewParamImpl _value,
      $Res Function(_$UpdateOverviewParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateOverviewParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Id = null,
    Object? Summary = null,
    Object? AssignedAgent = null,
    Object? TenantFolioId = freezed,
    Object? Label = null,
  }) {
    return _then(_$UpdateOverviewParamImpl(
      Id: null == Id
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as int,
      Summary: null == Summary
          ? _value.Summary
          : Summary // ignore: cast_nullable_to_non_nullable
              as String,
      AssignedAgent: null == AssignedAgent
          ? _value.AssignedAgent
          : AssignedAgent // ignore: cast_nullable_to_non_nullable
              as String,
      TenantFolioId: freezed == TenantFolioId
          ? _value.TenantFolioId
          : TenantFolioId // ignore: cast_nullable_to_non_nullable
              as int?,
      Label: null == Label
          ? _value.Label
          : Label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateOverviewParamImpl implements _UpdateOverviewParam {
  const _$UpdateOverviewParamImpl(
      {required this.Id,
      this.Summary = "",
      required this.AssignedAgent,
      this.TenantFolioId,
      this.Label = ""});

  factory _$UpdateOverviewParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateOverviewParamImplFromJson(json);

  @override
  final int Id;
  @override
  @JsonKey()
  final String Summary;
  @override
  final String AssignedAgent;
  @override
  final int? TenantFolioId;
  @override
  @JsonKey()
  final String Label;

  @override
  String toString() {
    return 'UpdateOverviewParam(Id: $Id, Summary: $Summary, AssignedAgent: $AssignedAgent, TenantFolioId: $TenantFolioId, Label: $Label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOverviewParamImpl &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.Summary, Summary) || other.Summary == Summary) &&
            (identical(other.AssignedAgent, AssignedAgent) ||
                other.AssignedAgent == AssignedAgent) &&
            (identical(other.TenantFolioId, TenantFolioId) ||
                other.TenantFolioId == TenantFolioId) &&
            (identical(other.Label, Label) || other.Label == Label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, Id, Summary, AssignedAgent, TenantFolioId, Label);

  /// Create a copy of UpdateOverviewParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOverviewParamImplCopyWith<_$UpdateOverviewParamImpl> get copyWith =>
      __$$UpdateOverviewParamImplCopyWithImpl<_$UpdateOverviewParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateOverviewParamImplToJson(
      this,
    );
  }
}

abstract class _UpdateOverviewParam implements UpdateOverviewParam {
  const factory _UpdateOverviewParam(
      {required final int Id,
      final String Summary,
      required final String AssignedAgent,
      final int? TenantFolioId,
      final String Label}) = _$UpdateOverviewParamImpl;

  factory _UpdateOverviewParam.fromJson(Map<String, dynamic> json) =
      _$UpdateOverviewParamImpl.fromJson;

  @override
  int get Id;
  @override
  String get Summary;
  @override
  String get AssignedAgent;
  @override
  int? get TenantFolioId;
  @override
  String get Label;

  /// Create a copy of UpdateOverviewParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateOverviewParamImplCopyWith<_$UpdateOverviewParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
