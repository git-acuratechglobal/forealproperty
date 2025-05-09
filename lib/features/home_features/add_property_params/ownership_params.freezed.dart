// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ownership_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OwnershipParams _$OwnershipParamsFromJson(Map<String, dynamic> json) {
  return _OwnershipParams.fromJson(json);
}

/// @nodoc
mixin _$OwnershipParams {
  @JsonKey(name: "AgentId")
  int get agentId => throw _privateConstructorUsedError;
  @JsonKey(name: "AgencyId")
  int get agencyId => throw _privateConstructorUsedError;
  @JsonKey(name: "Address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "UserRoleID")
  int get userRoleID => throw _privateConstructorUsedError;
  @JsonKey(name: "PropertyUniqueId")
  String? get propertyUniqueId => throw _privateConstructorUsedError;
  @JsonKey(name: "FirstName")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "LastName")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "Email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "MobileNumber")
  String? get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "ContactType")
  int get contactType => throw _privateConstructorUsedError;
  @JsonKey(name: "Title")
  int get title => throw _privateConstructorUsedError;
  @JsonKey(name: "ContactUniqueId")
  String? get contactUniqueId => throw _privateConstructorUsedError;

  /// Serializes this OwnershipParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OwnershipParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnershipParamsCopyWith<OwnershipParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnershipParamsCopyWith<$Res> {
  factory $OwnershipParamsCopyWith(
          OwnershipParams value, $Res Function(OwnershipParams) then) =
      _$OwnershipParamsCopyWithImpl<$Res, OwnershipParams>;
  @useResult
  $Res call(
      {@JsonKey(name: "AgentId") int agentId,
      @JsonKey(name: "AgencyId") int agencyId,
      @JsonKey(name: "Address") String? address,
      @JsonKey(name: "UserRoleID") int userRoleID,
      @JsonKey(name: "PropertyUniqueId") String? propertyUniqueId,
      @JsonKey(name: "FirstName") String? firstName,
      @JsonKey(name: "LastName") String? lastName,
      @JsonKey(name: "Email") String? email,
      @JsonKey(name: "MobileNumber") String? mobileNumber,
      @JsonKey(name: "ContactType") int contactType,
      @JsonKey(name: "Title") int title,
      @JsonKey(name: "ContactUniqueId") String? contactUniqueId});
}

/// @nodoc
class _$OwnershipParamsCopyWithImpl<$Res, $Val extends OwnershipParams>
    implements $OwnershipParamsCopyWith<$Res> {
  _$OwnershipParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OwnershipParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentId = null,
    Object? agencyId = null,
    Object? address = freezed,
    Object? userRoleID = null,
    Object? propertyUniqueId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? mobileNumber = freezed,
    Object? contactType = null,
    Object? title = null,
    Object? contactUniqueId = freezed,
  }) {
    return _then(_value.copyWith(
      agentId: null == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int,
      agencyId: null == agencyId
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as int,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      userRoleID: null == userRoleID
          ? _value.userRoleID
          : userRoleID // ignore: cast_nullable_to_non_nullable
              as int,
      propertyUniqueId: freezed == propertyUniqueId
          ? _value.propertyUniqueId
          : propertyUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      contactType: null == contactType
          ? _value.contactType
          : contactType // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as int,
      contactUniqueId: freezed == contactUniqueId
          ? _value.contactUniqueId
          : contactUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnershipParamsImplCopyWith<$Res>
    implements $OwnershipParamsCopyWith<$Res> {
  factory _$$OwnershipParamsImplCopyWith(_$OwnershipParamsImpl value,
          $Res Function(_$OwnershipParamsImpl) then) =
      __$$OwnershipParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "AgentId") int agentId,
      @JsonKey(name: "AgencyId") int agencyId,
      @JsonKey(name: "Address") String? address,
      @JsonKey(name: "UserRoleID") int userRoleID,
      @JsonKey(name: "PropertyUniqueId") String? propertyUniqueId,
      @JsonKey(name: "FirstName") String? firstName,
      @JsonKey(name: "LastName") String? lastName,
      @JsonKey(name: "Email") String? email,
      @JsonKey(name: "MobileNumber") String? mobileNumber,
      @JsonKey(name: "ContactType") int contactType,
      @JsonKey(name: "Title") int title,
      @JsonKey(name: "ContactUniqueId") String? contactUniqueId});
}

/// @nodoc
class __$$OwnershipParamsImplCopyWithImpl<$Res>
    extends _$OwnershipParamsCopyWithImpl<$Res, _$OwnershipParamsImpl>
    implements _$$OwnershipParamsImplCopyWith<$Res> {
  __$$OwnershipParamsImplCopyWithImpl(
      _$OwnershipParamsImpl _value, $Res Function(_$OwnershipParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnershipParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentId = null,
    Object? agencyId = null,
    Object? address = freezed,
    Object? userRoleID = null,
    Object? propertyUniqueId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? mobileNumber = freezed,
    Object? contactType = null,
    Object? title = null,
    Object? contactUniqueId = freezed,
  }) {
    return _then(_$OwnershipParamsImpl(
      agentId: null == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int,
      agencyId: null == agencyId
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as int,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      userRoleID: null == userRoleID
          ? _value.userRoleID
          : userRoleID // ignore: cast_nullable_to_non_nullable
              as int,
      propertyUniqueId: freezed == propertyUniqueId
          ? _value.propertyUniqueId
          : propertyUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      contactType: null == contactType
          ? _value.contactType
          : contactType // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as int,
      contactUniqueId: freezed == contactUniqueId
          ? _value.contactUniqueId
          : contactUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnershipParamsImpl implements _OwnershipParams {
  const _$OwnershipParamsImpl(
      {@JsonKey(name: "AgentId") this.agentId = 2,
      @JsonKey(name: "AgencyId") this.agencyId = 1,
      @JsonKey(name: "Address") this.address,
      @JsonKey(name: "UserRoleID") this.userRoleID = 10,
      @JsonKey(name: "PropertyUniqueId") this.propertyUniqueId,
      @JsonKey(name: "FirstName") this.firstName,
      @JsonKey(name: "LastName") this.lastName,
      @JsonKey(name: "Email") this.email,
      @JsonKey(name: "MobileNumber") this.mobileNumber,
      @JsonKey(name: "ContactType") this.contactType = 1,
      @JsonKey(name: "Title") this.title = 2,
      @JsonKey(name: "ContactUniqueId") this.contactUniqueId});

  factory _$OwnershipParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnershipParamsImplFromJson(json);

  @override
  @JsonKey(name: "AgentId")
  final int agentId;
  @override
  @JsonKey(name: "AgencyId")
  final int agencyId;
  @override
  @JsonKey(name: "Address")
  final String? address;
  @override
  @JsonKey(name: "UserRoleID")
  final int userRoleID;
  @override
  @JsonKey(name: "PropertyUniqueId")
  final String? propertyUniqueId;
  @override
  @JsonKey(name: "FirstName")
  final String? firstName;
  @override
  @JsonKey(name: "LastName")
  final String? lastName;
  @override
  @JsonKey(name: "Email")
  final String? email;
  @override
  @JsonKey(name: "MobileNumber")
  final String? mobileNumber;
  @override
  @JsonKey(name: "ContactType")
  final int contactType;
  @override
  @JsonKey(name: "Title")
  final int title;
  @override
  @JsonKey(name: "ContactUniqueId")
  final String? contactUniqueId;

  @override
  String toString() {
    return 'OwnershipParams(agentId: $agentId, agencyId: $agencyId, address: $address, userRoleID: $userRoleID, propertyUniqueId: $propertyUniqueId, firstName: $firstName, lastName: $lastName, email: $email, mobileNumber: $mobileNumber, contactType: $contactType, title: $title, contactUniqueId: $contactUniqueId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnershipParamsImpl &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            (identical(other.agencyId, agencyId) ||
                other.agencyId == agencyId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.userRoleID, userRoleID) ||
                other.userRoleID == userRoleID) &&
            (identical(other.propertyUniqueId, propertyUniqueId) ||
                other.propertyUniqueId == propertyUniqueId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.contactType, contactType) ||
                other.contactType == contactType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.contactUniqueId, contactUniqueId) ||
                other.contactUniqueId == contactUniqueId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      agentId,
      agencyId,
      address,
      userRoleID,
      propertyUniqueId,
      firstName,
      lastName,
      email,
      mobileNumber,
      contactType,
      title,
      contactUniqueId);

  /// Create a copy of OwnershipParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnershipParamsImplCopyWith<_$OwnershipParamsImpl> get copyWith =>
      __$$OwnershipParamsImplCopyWithImpl<_$OwnershipParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnershipParamsImplToJson(
      this,
    );
  }
}

abstract class _OwnershipParams implements OwnershipParams {
  const factory _OwnershipParams(
          {@JsonKey(name: "AgentId") final int agentId,
          @JsonKey(name: "AgencyId") final int agencyId,
          @JsonKey(name: "Address") final String? address,
          @JsonKey(name: "UserRoleID") final int userRoleID,
          @JsonKey(name: "PropertyUniqueId") final String? propertyUniqueId,
          @JsonKey(name: "FirstName") final String? firstName,
          @JsonKey(name: "LastName") final String? lastName,
          @JsonKey(name: "Email") final String? email,
          @JsonKey(name: "MobileNumber") final String? mobileNumber,
          @JsonKey(name: "ContactType") final int contactType,
          @JsonKey(name: "Title") final int title,
          @JsonKey(name: "ContactUniqueId") final String? contactUniqueId}) =
      _$OwnershipParamsImpl;

  factory _OwnershipParams.fromJson(Map<String, dynamic> json) =
      _$OwnershipParamsImpl.fromJson;

  @override
  @JsonKey(name: "AgentId")
  int get agentId;
  @override
  @JsonKey(name: "AgencyId")
  int get agencyId;
  @override
  @JsonKey(name: "Address")
  String? get address;
  @override
  @JsonKey(name: "UserRoleID")
  int get userRoleID;
  @override
  @JsonKey(name: "PropertyUniqueId")
  String? get propertyUniqueId;
  @override
  @JsonKey(name: "FirstName")
  String? get firstName;
  @override
  @JsonKey(name: "LastName")
  String? get lastName;
  @override
  @JsonKey(name: "Email")
  String? get email;
  @override
  @JsonKey(name: "MobileNumber")
  String? get mobileNumber;
  @override
  @JsonKey(name: "ContactType")
  int get contactType;
  @override
  @JsonKey(name: "Title")
  int get title;
  @override
  @JsonKey(name: "ContactUniqueId")
  String? get contactUniqueId;

  /// Create a copy of OwnershipParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnershipParamsImplCopyWith<_$OwnershipParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
