// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_property_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddPropertyState {
  AddPropertyEvent get addPropertyEvent => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;

  /// Create a copy of AddPropertyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddPropertyStateCopyWith<AddPropertyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPropertyStateCopyWith<$Res> {
  factory $AddPropertyStateCopyWith(
          AddPropertyState value, $Res Function(AddPropertyState) then) =
      _$AddPropertyStateCopyWithImpl<$Res, AddPropertyState>;
  @useResult
  $Res call({AddPropertyEvent addPropertyEvent, String? response});
}

/// @nodoc
class _$AddPropertyStateCopyWithImpl<$Res, $Val extends AddPropertyState>
    implements $AddPropertyStateCopyWith<$Res> {
  _$AddPropertyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddPropertyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addPropertyEvent = null,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      addPropertyEvent: null == addPropertyEvent
          ? _value.addPropertyEvent
          : addPropertyEvent // ignore: cast_nullable_to_non_nullable
              as AddPropertyEvent,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddPropertyStateImplCopyWith<$Res>
    implements $AddPropertyStateCopyWith<$Res> {
  factory _$$AddPropertyStateImplCopyWith(_$AddPropertyStateImpl value,
          $Res Function(_$AddPropertyStateImpl) then) =
      __$$AddPropertyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddPropertyEvent addPropertyEvent, String? response});
}

/// @nodoc
class __$$AddPropertyStateImplCopyWithImpl<$Res>
    extends _$AddPropertyStateCopyWithImpl<$Res, _$AddPropertyStateImpl>
    implements _$$AddPropertyStateImplCopyWith<$Res> {
  __$$AddPropertyStateImplCopyWithImpl(_$AddPropertyStateImpl _value,
      $Res Function(_$AddPropertyStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddPropertyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addPropertyEvent = null,
    Object? response = freezed,
  }) {
    return _then(_$AddPropertyStateImpl(
      addPropertyEvent: null == addPropertyEvent
          ? _value.addPropertyEvent
          : addPropertyEvent // ignore: cast_nullable_to_non_nullable
              as AddPropertyEvent,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddPropertyStateImpl implements _AddPropertyState {
  const _$AddPropertyStateImpl({required this.addPropertyEvent, this.response});

  @override
  final AddPropertyEvent addPropertyEvent;
  @override
  final String? response;

  @override
  String toString() {
    return 'AddPropertyState(addPropertyEvent: $addPropertyEvent, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPropertyStateImpl &&
            (identical(other.addPropertyEvent, addPropertyEvent) ||
                other.addPropertyEvent == addPropertyEvent) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addPropertyEvent, response);

  /// Create a copy of AddPropertyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPropertyStateImplCopyWith<_$AddPropertyStateImpl> get copyWith =>
      __$$AddPropertyStateImplCopyWithImpl<_$AddPropertyStateImpl>(
          this, _$identity);
}

abstract class _AddPropertyState implements AddPropertyState {
  const factory _AddPropertyState(
      {required final AddPropertyEvent addPropertyEvent,
      final String? response}) = _$AddPropertyStateImpl;

  @override
  AddPropertyEvent get addPropertyEvent;
  @override
  String? get response;

  /// Create a copy of AddPropertyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPropertyStateImplCopyWith<_$AddPropertyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
