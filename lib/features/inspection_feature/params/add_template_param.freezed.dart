// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_template_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddTemplateParams _$AddTemplateParamsFromJson(Map<String, dynamic> json) {
  return _AddTemplateParams.fromJson(json);
}

/// @nodoc
mixin _$AddTemplateParams {
  String get Attribute => throw _privateConstructorUsedError;
  String get AttributeLabel => throw _privateConstructorUsedError;

  /// Serializes this AddTemplateParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddTemplateParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddTemplateParamsCopyWith<AddTemplateParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTemplateParamsCopyWith<$Res> {
  factory $AddTemplateParamsCopyWith(
          AddTemplateParams value, $Res Function(AddTemplateParams) then) =
      _$AddTemplateParamsCopyWithImpl<$Res, AddTemplateParams>;
  @useResult
  $Res call({String Attribute, String AttributeLabel});
}

/// @nodoc
class _$AddTemplateParamsCopyWithImpl<$Res, $Val extends AddTemplateParams>
    implements $AddTemplateParamsCopyWith<$Res> {
  _$AddTemplateParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddTemplateParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Attribute = null,
    Object? AttributeLabel = null,
  }) {
    return _then(_value.copyWith(
      Attribute: null == Attribute
          ? _value.Attribute
          : Attribute // ignore: cast_nullable_to_non_nullable
              as String,
      AttributeLabel: null == AttributeLabel
          ? _value.AttributeLabel
          : AttributeLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTemplateParamsImplCopyWith<$Res>
    implements $AddTemplateParamsCopyWith<$Res> {
  factory _$$AddTemplateParamsImplCopyWith(_$AddTemplateParamsImpl value,
          $Res Function(_$AddTemplateParamsImpl) then) =
      __$$AddTemplateParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String Attribute, String AttributeLabel});
}

/// @nodoc
class __$$AddTemplateParamsImplCopyWithImpl<$Res>
    extends _$AddTemplateParamsCopyWithImpl<$Res, _$AddTemplateParamsImpl>
    implements _$$AddTemplateParamsImplCopyWith<$Res> {
  __$$AddTemplateParamsImplCopyWithImpl(_$AddTemplateParamsImpl _value,
      $Res Function(_$AddTemplateParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddTemplateParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Attribute = null,
    Object? AttributeLabel = null,
  }) {
    return _then(_$AddTemplateParamsImpl(
      Attribute: null == Attribute
          ? _value.Attribute
          : Attribute // ignore: cast_nullable_to_non_nullable
              as String,
      AttributeLabel: null == AttributeLabel
          ? _value.AttributeLabel
          : AttributeLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddTemplateParamsImpl implements _AddTemplateParams {
  const _$AddTemplateParamsImpl(
      {required this.Attribute, required this.AttributeLabel});

  factory _$AddTemplateParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddTemplateParamsImplFromJson(json);

  @override
  final String Attribute;
  @override
  final String AttributeLabel;

  @override
  String toString() {
    return 'AddTemplateParams(Attribute: $Attribute, AttributeLabel: $AttributeLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTemplateParamsImpl &&
            (identical(other.Attribute, Attribute) ||
                other.Attribute == Attribute) &&
            (identical(other.AttributeLabel, AttributeLabel) ||
                other.AttributeLabel == AttributeLabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, Attribute, AttributeLabel);

  /// Create a copy of AddTemplateParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTemplateParamsImplCopyWith<_$AddTemplateParamsImpl> get copyWith =>
      __$$AddTemplateParamsImplCopyWithImpl<_$AddTemplateParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddTemplateParamsImplToJson(
      this,
    );
  }
}

abstract class _AddTemplateParams implements AddTemplateParams {
  const factory _AddTemplateParams(
      {required final String Attribute,
      required final String AttributeLabel}) = _$AddTemplateParamsImpl;

  factory _AddTemplateParams.fromJson(Map<String, dynamic> json) =
      _$AddTemplateParamsImpl.fromJson;

  @override
  String get Attribute;
  @override
  String get AttributeLabel;

  /// Create a copy of AddTemplateParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTemplateParamsImplCopyWith<_$AddTemplateParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TemplateState {
  String? get response => throw _privateConstructorUsedError;
  TemplateEvent get event => throw _privateConstructorUsedError;

  /// Create a copy of TemplateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemplateStateCopyWith<TemplateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateStateCopyWith<$Res> {
  factory $TemplateStateCopyWith(
          TemplateState value, $Res Function(TemplateState) then) =
      _$TemplateStateCopyWithImpl<$Res, TemplateState>;
  @useResult
  $Res call({String? response, TemplateEvent event});
}

/// @nodoc
class _$TemplateStateCopyWithImpl<$Res, $Val extends TemplateState>
    implements $TemplateStateCopyWith<$Res> {
  _$TemplateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TemplateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? event = null,
  }) {
    return _then(_value.copyWith(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as TemplateEvent,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemplateStateImplCopyWith<$Res>
    implements $TemplateStateCopyWith<$Res> {
  factory _$$TemplateStateImplCopyWith(
          _$TemplateStateImpl value, $Res Function(_$TemplateStateImpl) then) =
      __$$TemplateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? response, TemplateEvent event});
}

/// @nodoc
class __$$TemplateStateImplCopyWithImpl<$Res>
    extends _$TemplateStateCopyWithImpl<$Res, _$TemplateStateImpl>
    implements _$$TemplateStateImplCopyWith<$Res> {
  __$$TemplateStateImplCopyWithImpl(
      _$TemplateStateImpl _value, $Res Function(_$TemplateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TemplateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? event = null,
  }) {
    return _then(_$TemplateStateImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as TemplateEvent,
    ));
  }
}

/// @nodoc

class _$TemplateStateImpl implements _TemplateState {
  const _$TemplateStateImpl({this.response, required this.event});

  @override
  final String? response;
  @override
  final TemplateEvent event;

  @override
  String toString() {
    return 'TemplateState(response: $response, event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateStateImpl &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response, event);

  /// Create a copy of TemplateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateStateImplCopyWith<_$TemplateStateImpl> get copyWith =>
      __$$TemplateStateImplCopyWithImpl<_$TemplateStateImpl>(this, _$identity);
}

abstract class _TemplateState implements TemplateState {
  const factory _TemplateState(
      {final String? response,
      required final TemplateEvent event}) = _$TemplateStateImpl;

  @override
  String? get response;
  @override
  TemplateEvent get event;

  /// Create a copy of TemplateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemplateStateImplCopyWith<_$TemplateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubTemplateState {
  String? get response => throw _privateConstructorUsedError;
  SubTemplateEvent get event => throw _privateConstructorUsedError;

  /// Create a copy of SubTemplateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubTemplateStateCopyWith<SubTemplateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubTemplateStateCopyWith<$Res> {
  factory $SubTemplateStateCopyWith(
          SubTemplateState value, $Res Function(SubTemplateState) then) =
      _$SubTemplateStateCopyWithImpl<$Res, SubTemplateState>;
  @useResult
  $Res call({String? response, SubTemplateEvent event});
}

/// @nodoc
class _$SubTemplateStateCopyWithImpl<$Res, $Val extends SubTemplateState>
    implements $SubTemplateStateCopyWith<$Res> {
  _$SubTemplateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubTemplateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? event = null,
  }) {
    return _then(_value.copyWith(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as SubTemplateEvent,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubTemplateStateImplCopyWith<$Res>
    implements $SubTemplateStateCopyWith<$Res> {
  factory _$$SubTemplateStateImplCopyWith(_$SubTemplateStateImpl value,
          $Res Function(_$SubTemplateStateImpl) then) =
      __$$SubTemplateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? response, SubTemplateEvent event});
}

/// @nodoc
class __$$SubTemplateStateImplCopyWithImpl<$Res>
    extends _$SubTemplateStateCopyWithImpl<$Res, _$SubTemplateStateImpl>
    implements _$$SubTemplateStateImplCopyWith<$Res> {
  __$$SubTemplateStateImplCopyWithImpl(_$SubTemplateStateImpl _value,
      $Res Function(_$SubTemplateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubTemplateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? event = null,
  }) {
    return _then(_$SubTemplateStateImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as SubTemplateEvent,
    ));
  }
}

/// @nodoc

class _$SubTemplateStateImpl implements _SubTemplateState {
  const _$SubTemplateStateImpl({this.response, required this.event});

  @override
  final String? response;
  @override
  final SubTemplateEvent event;

  @override
  String toString() {
    return 'SubTemplateState(response: $response, event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubTemplateStateImpl &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response, event);

  /// Create a copy of SubTemplateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubTemplateStateImplCopyWith<_$SubTemplateStateImpl> get copyWith =>
      __$$SubTemplateStateImplCopyWithImpl<_$SubTemplateStateImpl>(
          this, _$identity);
}

abstract class _SubTemplateState implements SubTemplateState {
  const factory _SubTemplateState(
      {final String? response,
      required final SubTemplateEvent event}) = _$SubTemplateStateImpl;

  @override
  String? get response;
  @override
  SubTemplateEvent get event;

  /// Create a copy of SubTemplateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubTemplateStateImplCopyWith<_$SubTemplateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
