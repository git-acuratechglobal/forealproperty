// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_inspection_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateInspectionParams _$UpdateInspectionParamsFromJson(
    Map<String, dynamic> json) {
  return _UpdateInspectionParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateInspectionParams {
  int get InspectionId => throw _privateConstructorUsedError;
  int get TemplateId => throw _privateConstructorUsedError;
  List<SelectedAttribute> get SelectedAttributeList =>
      throw _privateConstructorUsedError;
  String get TemplateNotes => throw _privateConstructorUsedError;
  List<dynamic> get AddUpdatePictures => throw _privateConstructorUsedError;

  /// Serializes this UpdateInspectionParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateInspectionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateInspectionParamsCopyWith<UpdateInspectionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateInspectionParamsCopyWith<$Res> {
  factory $UpdateInspectionParamsCopyWith(UpdateInspectionParams value,
          $Res Function(UpdateInspectionParams) then) =
      _$UpdateInspectionParamsCopyWithImpl<$Res, UpdateInspectionParams>;
  @useResult
  $Res call(
      {int InspectionId,
      int TemplateId,
      List<SelectedAttribute> SelectedAttributeList,
      String TemplateNotes,
      List<dynamic> AddUpdatePictures});
}

/// @nodoc
class _$UpdateInspectionParamsCopyWithImpl<$Res,
        $Val extends UpdateInspectionParams>
    implements $UpdateInspectionParamsCopyWith<$Res> {
  _$UpdateInspectionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateInspectionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? InspectionId = null,
    Object? TemplateId = null,
    Object? SelectedAttributeList = null,
    Object? TemplateNotes = null,
    Object? AddUpdatePictures = null,
  }) {
    return _then(_value.copyWith(
      InspectionId: null == InspectionId
          ? _value.InspectionId
          : InspectionId // ignore: cast_nullable_to_non_nullable
              as int,
      TemplateId: null == TemplateId
          ? _value.TemplateId
          : TemplateId // ignore: cast_nullable_to_non_nullable
              as int,
      SelectedAttributeList: null == SelectedAttributeList
          ? _value.SelectedAttributeList
          : SelectedAttributeList // ignore: cast_nullable_to_non_nullable
              as List<SelectedAttribute>,
      TemplateNotes: null == TemplateNotes
          ? _value.TemplateNotes
          : TemplateNotes // ignore: cast_nullable_to_non_nullable
              as String,
      AddUpdatePictures: null == AddUpdatePictures
          ? _value.AddUpdatePictures
          : AddUpdatePictures // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateInspectionParamsImplCopyWith<$Res>
    implements $UpdateInspectionParamsCopyWith<$Res> {
  factory _$$UpdateInspectionParamsImplCopyWith(
          _$UpdateInspectionParamsImpl value,
          $Res Function(_$UpdateInspectionParamsImpl) then) =
      __$$UpdateInspectionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int InspectionId,
      int TemplateId,
      List<SelectedAttribute> SelectedAttributeList,
      String TemplateNotes,
      List<dynamic> AddUpdatePictures});
}

/// @nodoc
class __$$UpdateInspectionParamsImplCopyWithImpl<$Res>
    extends _$UpdateInspectionParamsCopyWithImpl<$Res,
        _$UpdateInspectionParamsImpl>
    implements _$$UpdateInspectionParamsImplCopyWith<$Res> {
  __$$UpdateInspectionParamsImplCopyWithImpl(
      _$UpdateInspectionParamsImpl _value,
      $Res Function(_$UpdateInspectionParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateInspectionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? InspectionId = null,
    Object? TemplateId = null,
    Object? SelectedAttributeList = null,
    Object? TemplateNotes = null,
    Object? AddUpdatePictures = null,
  }) {
    return _then(_$UpdateInspectionParamsImpl(
      InspectionId: null == InspectionId
          ? _value.InspectionId
          : InspectionId // ignore: cast_nullable_to_non_nullable
              as int,
      TemplateId: null == TemplateId
          ? _value.TemplateId
          : TemplateId // ignore: cast_nullable_to_non_nullable
              as int,
      SelectedAttributeList: null == SelectedAttributeList
          ? _value._SelectedAttributeList
          : SelectedAttributeList // ignore: cast_nullable_to_non_nullable
              as List<SelectedAttribute>,
      TemplateNotes: null == TemplateNotes
          ? _value.TemplateNotes
          : TemplateNotes // ignore: cast_nullable_to_non_nullable
              as String,
      AddUpdatePictures: null == AddUpdatePictures
          ? _value._AddUpdatePictures
          : AddUpdatePictures // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateInspectionParamsImpl implements _UpdateInspectionParams {
  const _$UpdateInspectionParamsImpl(
      {required this.InspectionId,
      required this.TemplateId,
      required final List<SelectedAttribute> SelectedAttributeList,
      required this.TemplateNotes,
      required final List<dynamic> AddUpdatePictures})
      : _SelectedAttributeList = SelectedAttributeList,
        _AddUpdatePictures = AddUpdatePictures;

  factory _$UpdateInspectionParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateInspectionParamsImplFromJson(json);

  @override
  final int InspectionId;
  @override
  final int TemplateId;
  final List<SelectedAttribute> _SelectedAttributeList;
  @override
  List<SelectedAttribute> get SelectedAttributeList {
    if (_SelectedAttributeList is EqualUnmodifiableListView)
      return _SelectedAttributeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_SelectedAttributeList);
  }

  @override
  final String TemplateNotes;
  final List<dynamic> _AddUpdatePictures;
  @override
  List<dynamic> get AddUpdatePictures {
    if (_AddUpdatePictures is EqualUnmodifiableListView)
      return _AddUpdatePictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_AddUpdatePictures);
  }

  @override
  String toString() {
    return 'UpdateInspectionParams(InspectionId: $InspectionId, TemplateId: $TemplateId, SelectedAttributeList: $SelectedAttributeList, TemplateNotes: $TemplateNotes, AddUpdatePictures: $AddUpdatePictures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInspectionParamsImpl &&
            (identical(other.InspectionId, InspectionId) ||
                other.InspectionId == InspectionId) &&
            (identical(other.TemplateId, TemplateId) ||
                other.TemplateId == TemplateId) &&
            const DeepCollectionEquality()
                .equals(other._SelectedAttributeList, _SelectedAttributeList) &&
            (identical(other.TemplateNotes, TemplateNotes) ||
                other.TemplateNotes == TemplateNotes) &&
            const DeepCollectionEquality()
                .equals(other._AddUpdatePictures, _AddUpdatePictures));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      InspectionId,
      TemplateId,
      const DeepCollectionEquality().hash(_SelectedAttributeList),
      TemplateNotes,
      const DeepCollectionEquality().hash(_AddUpdatePictures));

  /// Create a copy of UpdateInspectionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInspectionParamsImplCopyWith<_$UpdateInspectionParamsImpl>
      get copyWith => __$$UpdateInspectionParamsImplCopyWithImpl<
          _$UpdateInspectionParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateInspectionParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateInspectionParams implements UpdateInspectionParams {
  const factory _UpdateInspectionParams(
          {required final int InspectionId,
          required final int TemplateId,
          required final List<SelectedAttribute> SelectedAttributeList,
          required final String TemplateNotes,
          required final List<dynamic> AddUpdatePictures}) =
      _$UpdateInspectionParamsImpl;

  factory _UpdateInspectionParams.fromJson(Map<String, dynamic> json) =
      _$UpdateInspectionParamsImpl.fromJson;

  @override
  int get InspectionId;
  @override
  int get TemplateId;
  @override
  List<SelectedAttribute> get SelectedAttributeList;
  @override
  String get TemplateNotes;
  @override
  List<dynamic> get AddUpdatePictures;

  /// Create a copy of UpdateInspectionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInspectionParamsImplCopyWith<_$UpdateInspectionParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SelectedAttribute _$SelectedAttributeFromJson(Map<String, dynamic> json) {
  return _SelectedAttribute.fromJson(json);
}

/// @nodoc
mixin _$SelectedAttribute {
  int get Id => throw _privateConstructorUsedError;
  bool get Cleaned => throw _privateConstructorUsedError;
  bool get Undermanaged => throw _privateConstructorUsedError;
  bool get Working => throw _privateConstructorUsedError;
  dynamic get AgentComment => throw _privateConstructorUsedError;
  dynamic get TenantComment => throw _privateConstructorUsedError;
  dynamic get IsTenantAgree => throw _privateConstructorUsedError;
  dynamic get CleanedByTenant => throw _privateConstructorUsedError;
  dynamic get WorkingByTenant => throw _privateConstructorUsedError;
  dynamic get UndermanagedByTenant => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get AddUpdatePictures =>
      throw _privateConstructorUsedError;

  /// Serializes this SelectedAttribute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelectedAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectedAttributeCopyWith<SelectedAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedAttributeCopyWith<$Res> {
  factory $SelectedAttributeCopyWith(
          SelectedAttribute value, $Res Function(SelectedAttribute) then) =
      _$SelectedAttributeCopyWithImpl<$Res, SelectedAttribute>;
  @useResult
  $Res call(
      {int Id,
      bool Cleaned,
      bool Undermanaged,
      bool Working,
      dynamic AgentComment,
      dynamic TenantComment,
      dynamic IsTenantAgree,
      dynamic CleanedByTenant,
      dynamic WorkingByTenant,
      dynamic UndermanagedByTenant,
      List<Map<String, dynamic>> AddUpdatePictures});
}

/// @nodoc
class _$SelectedAttributeCopyWithImpl<$Res, $Val extends SelectedAttribute>
    implements $SelectedAttributeCopyWith<$Res> {
  _$SelectedAttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Id = null,
    Object? Cleaned = null,
    Object? Undermanaged = null,
    Object? Working = null,
    Object? AgentComment = freezed,
    Object? TenantComment = freezed,
    Object? IsTenantAgree = freezed,
    Object? CleanedByTenant = freezed,
    Object? WorkingByTenant = freezed,
    Object? UndermanagedByTenant = freezed,
    Object? AddUpdatePictures = null,
  }) {
    return _then(_value.copyWith(
      Id: null == Id
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as int,
      Cleaned: null == Cleaned
          ? _value.Cleaned
          : Cleaned // ignore: cast_nullable_to_non_nullable
              as bool,
      Undermanaged: null == Undermanaged
          ? _value.Undermanaged
          : Undermanaged // ignore: cast_nullable_to_non_nullable
              as bool,
      Working: null == Working
          ? _value.Working
          : Working // ignore: cast_nullable_to_non_nullable
              as bool,
      AgentComment: freezed == AgentComment
          ? _value.AgentComment
          : AgentComment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      TenantComment: freezed == TenantComment
          ? _value.TenantComment
          : TenantComment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      IsTenantAgree: freezed == IsTenantAgree
          ? _value.IsTenantAgree
          : IsTenantAgree // ignore: cast_nullable_to_non_nullable
              as dynamic,
      CleanedByTenant: freezed == CleanedByTenant
          ? _value.CleanedByTenant
          : CleanedByTenant // ignore: cast_nullable_to_non_nullable
              as dynamic,
      WorkingByTenant: freezed == WorkingByTenant
          ? _value.WorkingByTenant
          : WorkingByTenant // ignore: cast_nullable_to_non_nullable
              as dynamic,
      UndermanagedByTenant: freezed == UndermanagedByTenant
          ? _value.UndermanagedByTenant
          : UndermanagedByTenant // ignore: cast_nullable_to_non_nullable
              as dynamic,
      AddUpdatePictures: null == AddUpdatePictures
          ? _value.AddUpdatePictures
          : AddUpdatePictures // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedAttributeImplCopyWith<$Res>
    implements $SelectedAttributeCopyWith<$Res> {
  factory _$$SelectedAttributeImplCopyWith(_$SelectedAttributeImpl value,
          $Res Function(_$SelectedAttributeImpl) then) =
      __$$SelectedAttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int Id,
      bool Cleaned,
      bool Undermanaged,
      bool Working,
      dynamic AgentComment,
      dynamic TenantComment,
      dynamic IsTenantAgree,
      dynamic CleanedByTenant,
      dynamic WorkingByTenant,
      dynamic UndermanagedByTenant,
      List<Map<String, dynamic>> AddUpdatePictures});
}

/// @nodoc
class __$$SelectedAttributeImplCopyWithImpl<$Res>
    extends _$SelectedAttributeCopyWithImpl<$Res, _$SelectedAttributeImpl>
    implements _$$SelectedAttributeImplCopyWith<$Res> {
  __$$SelectedAttributeImplCopyWithImpl(_$SelectedAttributeImpl _value,
      $Res Function(_$SelectedAttributeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectedAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Id = null,
    Object? Cleaned = null,
    Object? Undermanaged = null,
    Object? Working = null,
    Object? AgentComment = freezed,
    Object? TenantComment = freezed,
    Object? IsTenantAgree = freezed,
    Object? CleanedByTenant = freezed,
    Object? WorkingByTenant = freezed,
    Object? UndermanagedByTenant = freezed,
    Object? AddUpdatePictures = null,
  }) {
    return _then(_$SelectedAttributeImpl(
      Id: null == Id
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as int,
      Cleaned: null == Cleaned
          ? _value.Cleaned
          : Cleaned // ignore: cast_nullable_to_non_nullable
              as bool,
      Undermanaged: null == Undermanaged
          ? _value.Undermanaged
          : Undermanaged // ignore: cast_nullable_to_non_nullable
              as bool,
      Working: null == Working
          ? _value.Working
          : Working // ignore: cast_nullable_to_non_nullable
              as bool,
      AgentComment: freezed == AgentComment
          ? _value.AgentComment
          : AgentComment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      TenantComment: freezed == TenantComment
          ? _value.TenantComment
          : TenantComment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      IsTenantAgree: freezed == IsTenantAgree
          ? _value.IsTenantAgree
          : IsTenantAgree // ignore: cast_nullable_to_non_nullable
              as dynamic,
      CleanedByTenant: freezed == CleanedByTenant
          ? _value.CleanedByTenant
          : CleanedByTenant // ignore: cast_nullable_to_non_nullable
              as dynamic,
      WorkingByTenant: freezed == WorkingByTenant
          ? _value.WorkingByTenant
          : WorkingByTenant // ignore: cast_nullable_to_non_nullable
              as dynamic,
      UndermanagedByTenant: freezed == UndermanagedByTenant
          ? _value.UndermanagedByTenant
          : UndermanagedByTenant // ignore: cast_nullable_to_non_nullable
              as dynamic,
      AddUpdatePictures: null == AddUpdatePictures
          ? _value._AddUpdatePictures
          : AddUpdatePictures // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedAttributeImpl implements _SelectedAttribute {
  const _$SelectedAttributeImpl(
      {required this.Id,
      required this.Cleaned,
      required this.Undermanaged,
      required this.Working,
      this.AgentComment,
      this.TenantComment,
      this.IsTenantAgree,
      this.CleanedByTenant,
      this.WorkingByTenant,
      this.UndermanagedByTenant,
      required final List<Map<String, dynamic>> AddUpdatePictures})
      : _AddUpdatePictures = AddUpdatePictures;

  factory _$SelectedAttributeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectedAttributeImplFromJson(json);

  @override
  final int Id;
  @override
  final bool Cleaned;
  @override
  final bool Undermanaged;
  @override
  final bool Working;
  @override
  final dynamic AgentComment;
  @override
  final dynamic TenantComment;
  @override
  final dynamic IsTenantAgree;
  @override
  final dynamic CleanedByTenant;
  @override
  final dynamic WorkingByTenant;
  @override
  final dynamic UndermanagedByTenant;
  final List<Map<String, dynamic>> _AddUpdatePictures;
  @override
  List<Map<String, dynamic>> get AddUpdatePictures {
    if (_AddUpdatePictures is EqualUnmodifiableListView)
      return _AddUpdatePictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_AddUpdatePictures);
  }

  @override
  String toString() {
    return 'SelectedAttribute(Id: $Id, Cleaned: $Cleaned, Undermanaged: $Undermanaged, Working: $Working, AgentComment: $AgentComment, TenantComment: $TenantComment, IsTenantAgree: $IsTenantAgree, CleanedByTenant: $CleanedByTenant, WorkingByTenant: $WorkingByTenant, UndermanagedByTenant: $UndermanagedByTenant, AddUpdatePictures: $AddUpdatePictures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedAttributeImpl &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.Cleaned, Cleaned) || other.Cleaned == Cleaned) &&
            (identical(other.Undermanaged, Undermanaged) ||
                other.Undermanaged == Undermanaged) &&
            (identical(other.Working, Working) || other.Working == Working) &&
            const DeepCollectionEquality()
                .equals(other.AgentComment, AgentComment) &&
            const DeepCollectionEquality()
                .equals(other.TenantComment, TenantComment) &&
            const DeepCollectionEquality()
                .equals(other.IsTenantAgree, IsTenantAgree) &&
            const DeepCollectionEquality()
                .equals(other.CleanedByTenant, CleanedByTenant) &&
            const DeepCollectionEquality()
                .equals(other.WorkingByTenant, WorkingByTenant) &&
            const DeepCollectionEquality()
                .equals(other.UndermanagedByTenant, UndermanagedByTenant) &&
            const DeepCollectionEquality()
                .equals(other._AddUpdatePictures, _AddUpdatePictures));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      Id,
      Cleaned,
      Undermanaged,
      Working,
      const DeepCollectionEquality().hash(AgentComment),
      const DeepCollectionEquality().hash(TenantComment),
      const DeepCollectionEquality().hash(IsTenantAgree),
      const DeepCollectionEquality().hash(CleanedByTenant),
      const DeepCollectionEquality().hash(WorkingByTenant),
      const DeepCollectionEquality().hash(UndermanagedByTenant),
      const DeepCollectionEquality().hash(_AddUpdatePictures));

  /// Create a copy of SelectedAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedAttributeImplCopyWith<_$SelectedAttributeImpl> get copyWith =>
      __$$SelectedAttributeImplCopyWithImpl<_$SelectedAttributeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedAttributeImplToJson(
      this,
    );
  }
}

abstract class _SelectedAttribute implements SelectedAttribute {
  const factory _SelectedAttribute(
          {required final int Id,
          required final bool Cleaned,
          required final bool Undermanaged,
          required final bool Working,
          final dynamic AgentComment,
          final dynamic TenantComment,
          final dynamic IsTenantAgree,
          final dynamic CleanedByTenant,
          final dynamic WorkingByTenant,
          final dynamic UndermanagedByTenant,
          required final List<Map<String, dynamic>> AddUpdatePictures}) =
      _$SelectedAttributeImpl;

  factory _SelectedAttribute.fromJson(Map<String, dynamic> json) =
      _$SelectedAttributeImpl.fromJson;

  @override
  int get Id;
  @override
  bool get Cleaned;
  @override
  bool get Undermanaged;
  @override
  bool get Working;
  @override
  dynamic get AgentComment;
  @override
  dynamic get TenantComment;
  @override
  dynamic get IsTenantAgree;
  @override
  dynamic get CleanedByTenant;
  @override
  dynamic get WorkingByTenant;
  @override
  dynamic get UndermanagedByTenant;
  @override
  List<Map<String, dynamic>> get AddUpdatePictures;

  /// Create a copy of SelectedAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedAttributeImplCopyWith<_$SelectedAttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
