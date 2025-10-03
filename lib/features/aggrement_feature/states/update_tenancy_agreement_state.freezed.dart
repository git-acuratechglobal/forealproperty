// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_tenancy_agreement_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateTenancyAgreementState {
  String? get response => throw _privateConstructorUsedError;
  TenancyEventType get event => throw _privateConstructorUsedError;
  String? get propertyId => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTenancyAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTenancyAgreementStateCopyWith<UpdateTenancyAgreementState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTenancyAgreementStateCopyWith<$Res> {
  factory $UpdateTenancyAgreementStateCopyWith(
          UpdateTenancyAgreementState value,
          $Res Function(UpdateTenancyAgreementState) then) =
      _$UpdateTenancyAgreementStateCopyWithImpl<$Res,
          UpdateTenancyAgreementState>;
  @useResult
  $Res call({String? response, TenancyEventType event, String? propertyId});
}

/// @nodoc
class _$UpdateTenancyAgreementStateCopyWithImpl<$Res,
        $Val extends UpdateTenancyAgreementState>
    implements $UpdateTenancyAgreementStateCopyWith<$Res> {
  _$UpdateTenancyAgreementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTenancyAgreementState
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
              as TenancyEventType,
      propertyId: freezed == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTenancyAgreementStateImplCopyWith<$Res>
    implements $UpdateTenancyAgreementStateCopyWith<$Res> {
  factory _$$UpdateTenancyAgreementStateImplCopyWith(
          _$UpdateTenancyAgreementStateImpl value,
          $Res Function(_$UpdateTenancyAgreementStateImpl) then) =
      __$$UpdateTenancyAgreementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? response, TenancyEventType event, String? propertyId});
}

/// @nodoc
class __$$UpdateTenancyAgreementStateImplCopyWithImpl<$Res>
    extends _$UpdateTenancyAgreementStateCopyWithImpl<$Res,
        _$UpdateTenancyAgreementStateImpl>
    implements _$$UpdateTenancyAgreementStateImplCopyWith<$Res> {
  __$$UpdateTenancyAgreementStateImplCopyWithImpl(
      _$UpdateTenancyAgreementStateImpl _value,
      $Res Function(_$UpdateTenancyAgreementStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateTenancyAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? event = null,
    Object? propertyId = freezed,
  }) {
    return _then(_$UpdateTenancyAgreementStateImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as TenancyEventType,
      propertyId: freezed == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateTenancyAgreementStateImpl
    implements _UpdateTenancyAgreementState {
  const _$UpdateTenancyAgreementStateImpl(
      {this.response, required this.event, this.propertyId});

  @override
  final String? response;
  @override
  final TenancyEventType event;
  @override
  final String? propertyId;

  @override
  String toString() {
    return 'UpdateTenancyAgreementState(response: $response, event: $event, propertyId: $propertyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTenancyAgreementStateImpl &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response, event, propertyId);

  /// Create a copy of UpdateTenancyAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTenancyAgreementStateImplCopyWith<_$UpdateTenancyAgreementStateImpl>
      get copyWith => __$$UpdateTenancyAgreementStateImplCopyWithImpl<
          _$UpdateTenancyAgreementStateImpl>(this, _$identity);
}

abstract class _UpdateTenancyAgreementState
    implements UpdateTenancyAgreementState {
  const factory _UpdateTenancyAgreementState(
      {final String? response,
      required final TenancyEventType event,
      final String? propertyId}) = _$UpdateTenancyAgreementStateImpl;

  @override
  String? get response;
  @override
  TenancyEventType get event;
  @override
  String? get propertyId;

  /// Create a copy of UpdateTenancyAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTenancyAgreementStateImplCopyWith<_$UpdateTenancyAgreementStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
