// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_sales_agreement_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateSalesAgreementState {
  String? get response => throw _privateConstructorUsedError;
  SalesEventType get event => throw _privateConstructorUsedError;
  String? get propertyId => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSalesAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSalesAgreementStateCopyWith<UpdateSalesAgreementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSalesAgreementStateCopyWith<$Res> {
  factory $UpdateSalesAgreementStateCopyWith(UpdateSalesAgreementState value,
          $Res Function(UpdateSalesAgreementState) then) =
      _$UpdateSalesAgreementStateCopyWithImpl<$Res, UpdateSalesAgreementState>;
  @useResult
  $Res call({String? response, SalesEventType event, String? propertyId});
}

/// @nodoc
class _$UpdateSalesAgreementStateCopyWithImpl<$Res,
        $Val extends UpdateSalesAgreementState>
    implements $UpdateSalesAgreementStateCopyWith<$Res> {
  _$UpdateSalesAgreementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSalesAgreementState
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
              as SalesEventType,
      propertyId: freezed == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSalesAgreementStateImplCopyWith<$Res>
    implements $UpdateSalesAgreementStateCopyWith<$Res> {
  factory _$$UpdateSalesAgreementStateImplCopyWith(
          _$UpdateSalesAgreementStateImpl value,
          $Res Function(_$UpdateSalesAgreementStateImpl) then) =
      __$$UpdateSalesAgreementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? response, SalesEventType event, String? propertyId});
}

/// @nodoc
class __$$UpdateSalesAgreementStateImplCopyWithImpl<$Res>
    extends _$UpdateSalesAgreementStateCopyWithImpl<$Res,
        _$UpdateSalesAgreementStateImpl>
    implements _$$UpdateSalesAgreementStateImplCopyWith<$Res> {
  __$$UpdateSalesAgreementStateImplCopyWithImpl(
      _$UpdateSalesAgreementStateImpl _value,
      $Res Function(_$UpdateSalesAgreementStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSalesAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? event = null,
    Object? propertyId = freezed,
  }) {
    return _then(_$UpdateSalesAgreementStateImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as SalesEventType,
      propertyId: freezed == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateSalesAgreementStateImpl implements _UpdateSalesAgreementState {
  const _$UpdateSalesAgreementStateImpl(
      {this.response, required this.event, this.propertyId});

  @override
  final String? response;
  @override
  final SalesEventType event;
  @override
  final String? propertyId;

  @override
  String toString() {
    return 'UpdateSalesAgreementState(response: $response, event: $event, propertyId: $propertyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSalesAgreementStateImpl &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response, event, propertyId);

  /// Create a copy of UpdateSalesAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSalesAgreementStateImplCopyWith<_$UpdateSalesAgreementStateImpl>
      get copyWith => __$$UpdateSalesAgreementStateImplCopyWithImpl<
          _$UpdateSalesAgreementStateImpl>(this, _$identity);
}

abstract class _UpdateSalesAgreementState implements UpdateSalesAgreementState {
  const factory _UpdateSalesAgreementState(
      {final String? response,
      required final SalesEventType event,
      final String? propertyId}) = _$UpdateSalesAgreementStateImpl;

  @override
  String? get response;
  @override
  SalesEventType get event;
  @override
  String? get propertyId;

  /// Create a copy of UpdateSalesAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSalesAgreementStateImplCopyWith<_$UpdateSalesAgreementStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
