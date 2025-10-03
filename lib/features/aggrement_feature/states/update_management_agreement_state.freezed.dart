// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_management_agreement_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateManagementAgreementState {
  String? get response => throw _privateConstructorUsedError;
  EventType get event => throw _privateConstructorUsedError;
  String? get propertyId => throw _privateConstructorUsedError;

  /// Create a copy of UpdateManagementAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateManagementAgreementStateCopyWith<UpdateManagementAgreementState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateManagementAgreementStateCopyWith<$Res> {
  factory $UpdateManagementAgreementStateCopyWith(
          UpdateManagementAgreementState value,
          $Res Function(UpdateManagementAgreementState) then) =
      _$UpdateManagementAgreementStateCopyWithImpl<$Res,
          UpdateManagementAgreementState>;
  @useResult
  $Res call({String? response, EventType event, String? propertyId});
}

/// @nodoc
class _$UpdateManagementAgreementStateCopyWithImpl<$Res,
        $Val extends UpdateManagementAgreementState>
    implements $UpdateManagementAgreementStateCopyWith<$Res> {
  _$UpdateManagementAgreementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateManagementAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? event = null,
    Object? propertyId = freezed,
  }) {
    return _then(_value.copyWith(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventType,
      propertyId: freezed == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateManagementAgreementStateImplCopyWith<$Res>
    implements $UpdateManagementAgreementStateCopyWith<$Res> {
  factory _$$UpdateManagementAgreementStateImplCopyWith(
          _$UpdateManagementAgreementStateImpl value,
          $Res Function(_$UpdateManagementAgreementStateImpl) then) =
      __$$UpdateManagementAgreementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? response, EventType event, String? propertyId});
}

/// @nodoc
class __$$UpdateManagementAgreementStateImplCopyWithImpl<$Res>
    extends _$UpdateManagementAgreementStateCopyWithImpl<$Res,
        _$UpdateManagementAgreementStateImpl>
    implements _$$UpdateManagementAgreementStateImplCopyWith<$Res> {
  __$$UpdateManagementAgreementStateImplCopyWithImpl(
      _$UpdateManagementAgreementStateImpl _value,
      $Res Function(_$UpdateManagementAgreementStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateManagementAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? event = null,
    Object? propertyId = freezed,
  }) {
    return _then(_$UpdateManagementAgreementStateImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventType,
      propertyId: freezed == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateManagementAgreementStateImpl
    implements _UpdateManagementAgreementState {
  const _$UpdateManagementAgreementStateImpl(
      {this.response, required this.event, this.propertyId});

  @override
  final String? response;
  @override
  final EventType event;
  @override
  final String? propertyId;

  @override
  String toString() {
    return 'UpdateManagementAgreementState(response: $response, event: $event, propertyId: $propertyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateManagementAgreementStateImpl &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response, event, propertyId);

  /// Create a copy of UpdateManagementAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateManagementAgreementStateImplCopyWith<
          _$UpdateManagementAgreementStateImpl>
      get copyWith => __$$UpdateManagementAgreementStateImplCopyWithImpl<
          _$UpdateManagementAgreementStateImpl>(this, _$identity);
}

abstract class _UpdateManagementAgreementState
    implements UpdateManagementAgreementState {
  const factory _UpdateManagementAgreementState(
      {final String? response,
      required final EventType event,
      final String? propertyId}) = _$UpdateManagementAgreementStateImpl;

  @override
  String? get response;
  @override
  EventType get event;
  @override
  String? get propertyId;

  /// Create a copy of UpdateManagementAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateManagementAgreementStateImplCopyWith<
          _$UpdateManagementAgreementStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
