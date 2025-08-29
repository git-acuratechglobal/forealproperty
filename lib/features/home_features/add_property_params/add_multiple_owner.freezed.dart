// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_multiple_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return _Contact.fromJson(json);
}

/// @nodoc
mixin _$Contact {
  @JsonKey(name: 'Address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'FirstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'LastName')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'MobileNumber')
  String? get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'ContactType')
  int? get contactType => throw _privateConstructorUsedError;
  @JsonKey(name: 'Title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsPrimary')
  bool get isPrimary => throw _privateConstructorUsedError;

  /// Serializes this Contact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Address') String? address,
      @JsonKey(name: 'FirstName') String? firstName,
      @JsonKey(name: 'LastName') String? lastName,
      @JsonKey(name: 'Email') String? email,
      @JsonKey(name: 'MobileNumber') String? mobileNumber,
      @JsonKey(name: 'ContactType') int? contactType,
      @JsonKey(name: 'Title') String? title,
      @JsonKey(name: 'IsPrimary') bool isPrimary});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res, $Val extends Contact>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? mobileNumber = freezed,
    Object? contactType = freezed,
    Object? title = freezed,
    Object? isPrimary = null,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
      contactType: freezed == contactType
          ? _value.contactType
          : contactType // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactImplCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$ContactImplCopyWith(
          _$ContactImpl value, $Res Function(_$ContactImpl) then) =
      __$$ContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Address') String? address,
      @JsonKey(name: 'FirstName') String? firstName,
      @JsonKey(name: 'LastName') String? lastName,
      @JsonKey(name: 'Email') String? email,
      @JsonKey(name: 'MobileNumber') String? mobileNumber,
      @JsonKey(name: 'ContactType') int? contactType,
      @JsonKey(name: 'Title') String? title,
      @JsonKey(name: 'IsPrimary') bool isPrimary});
}

/// @nodoc
class __$$ContactImplCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$ContactImpl>
    implements _$$ContactImplCopyWith<$Res> {
  __$$ContactImplCopyWithImpl(
      _$ContactImpl _value, $Res Function(_$ContactImpl) _then)
      : super(_value, _then);

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? mobileNumber = freezed,
    Object? contactType = freezed,
    Object? title = freezed,
    Object? isPrimary = null,
  }) {
    return _then(_$ContactImpl(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
      contactType: freezed == contactType
          ? _value.contactType
          : contactType // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactImpl implements _Contact {
  const _$ContactImpl(
      {@JsonKey(name: 'Address') this.address,
      @JsonKey(name: 'FirstName') this.firstName,
      @JsonKey(name: 'LastName') this.lastName,
      @JsonKey(name: 'Email') this.email,
      @JsonKey(name: 'MobileNumber') this.mobileNumber,
      @JsonKey(name: 'ContactType') this.contactType,
      @JsonKey(name: 'Title') this.title,
      @JsonKey(name: 'IsPrimary') this.isPrimary = false});

  factory _$ContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactImplFromJson(json);

  @override
  @JsonKey(name: 'Address')
  final String? address;
  @override
  @JsonKey(name: 'FirstName')
  final String? firstName;
  @override
  @JsonKey(name: 'LastName')
  final String? lastName;
  @override
  @JsonKey(name: 'Email')
  final String? email;
  @override
  @JsonKey(name: 'MobileNumber')
  final String? mobileNumber;
  @override
  @JsonKey(name: 'ContactType')
  final int? contactType;
  @override
  @JsonKey(name: 'Title')
  final String? title;
  @override
  @JsonKey(name: 'IsPrimary')
  final bool isPrimary;

  @override
  String toString() {
    return 'Contact(address: $address, firstName: $firstName, lastName: $lastName, email: $email, mobileNumber: $mobileNumber, contactType: $contactType, title: $title, isPrimary: $isPrimary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactImpl &&
            (identical(other.address, address) || other.address == address) &&
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
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address, firstName, lastName,
      email, mobileNumber, contactType, title, isPrimary);

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      __$$ContactImplCopyWithImpl<_$ContactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactImplToJson(
      this,
    );
  }
}

abstract class _Contact implements Contact {
  const factory _Contact(
      {@JsonKey(name: 'Address') final String? address,
      @JsonKey(name: 'FirstName') final String? firstName,
      @JsonKey(name: 'LastName') final String? lastName,
      @JsonKey(name: 'Email') final String? email,
      @JsonKey(name: 'MobileNumber') final String? mobileNumber,
      @JsonKey(name: 'ContactType') final int? contactType,
      @JsonKey(name: 'Title') final String? title,
      @JsonKey(name: 'IsPrimary') final bool isPrimary}) = _$ContactImpl;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$ContactImpl.fromJson;

  @override
  @JsonKey(name: 'Address')
  String? get address;
  @override
  @JsonKey(name: 'FirstName')
  String? get firstName;
  @override
  @JsonKey(name: 'LastName')
  String? get lastName;
  @override
  @JsonKey(name: 'Email')
  String? get email;
  @override
  @JsonKey(name: 'MobileNumber')
  String? get mobileNumber;
  @override
  @JsonKey(name: 'ContactType')
  int? get contactType;
  @override
  @JsonKey(name: 'Title')
  String? get title;
  @override
  @JsonKey(name: 'IsPrimary')
  bool get isPrimary;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MultipleContact _$MultipleContactFromJson(Map<String, dynamic> json) {
  return _MultipleContact.fromJson(json);
}

/// @nodoc
mixin _$MultipleContact {
  @JsonKey(name: "AgencyId")
  int get agencyId => throw _privateConstructorUsedError;
  @JsonKey(name: "AgentId")
  int get agentId => throw _privateConstructorUsedError;
  @JsonKey(name: "PropertyUniqueId")
  String? get propertyUniqueId => throw _privateConstructorUsedError;
  @JsonKey(name: "UserId")
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "Contacts")
  List<Contact>? get contacts => throw _privateConstructorUsedError;

  /// Serializes this MultipleContact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MultipleContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MultipleContactCopyWith<MultipleContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleContactCopyWith<$Res> {
  factory $MultipleContactCopyWith(
          MultipleContact value, $Res Function(MultipleContact) then) =
      _$MultipleContactCopyWithImpl<$Res, MultipleContact>;
  @useResult
  $Res call(
      {@JsonKey(name: "AgencyId") int agencyId,
      @JsonKey(name: "AgentId") int agentId,
      @JsonKey(name: "PropertyUniqueId") String? propertyUniqueId,
      @JsonKey(name: "UserId") int userId,
      @JsonKey(name: "Contacts") List<Contact>? contacts});
}

/// @nodoc
class _$MultipleContactCopyWithImpl<$Res, $Val extends MultipleContact>
    implements $MultipleContactCopyWith<$Res> {
  _$MultipleContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MultipleContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agencyId = null,
    Object? agentId = null,
    Object? propertyUniqueId = freezed,
    Object? userId = null,
    Object? contacts = freezed,
  }) {
    return _then(_value.copyWith(
      agencyId: null == agencyId
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as int,
      agentId: null == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int,
      propertyUniqueId: freezed == propertyUniqueId
          ? _value.propertyUniqueId
          : propertyUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      contacts: freezed == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MultipleContactImplCopyWith<$Res>
    implements $MultipleContactCopyWith<$Res> {
  factory _$$MultipleContactImplCopyWith(_$MultipleContactImpl value,
          $Res Function(_$MultipleContactImpl) then) =
      __$$MultipleContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "AgencyId") int agencyId,
      @JsonKey(name: "AgentId") int agentId,
      @JsonKey(name: "PropertyUniqueId") String? propertyUniqueId,
      @JsonKey(name: "UserId") int userId,
      @JsonKey(name: "Contacts") List<Contact>? contacts});
}

/// @nodoc
class __$$MultipleContactImplCopyWithImpl<$Res>
    extends _$MultipleContactCopyWithImpl<$Res, _$MultipleContactImpl>
    implements _$$MultipleContactImplCopyWith<$Res> {
  __$$MultipleContactImplCopyWithImpl(
      _$MultipleContactImpl _value, $Res Function(_$MultipleContactImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultipleContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agencyId = null,
    Object? agentId = null,
    Object? propertyUniqueId = freezed,
    Object? userId = null,
    Object? contacts = freezed,
  }) {
    return _then(_$MultipleContactImpl(
      agencyId: null == agencyId
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as int,
      agentId: null == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int,
      propertyUniqueId: freezed == propertyUniqueId
          ? _value.propertyUniqueId
          : propertyUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      contacts: freezed == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultipleContactImpl implements _MultipleContact {
  const _$MultipleContactImpl(
      {@JsonKey(name: "AgencyId") this.agencyId = 1,
      @JsonKey(name: "AgentId") this.agentId = 2,
      @JsonKey(name: "PropertyUniqueId") this.propertyUniqueId,
      @JsonKey(name: "UserId") this.userId = 2,
      @JsonKey(name: "Contacts") final List<Contact>? contacts})
      : _contacts = contacts;

  factory _$MultipleContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultipleContactImplFromJson(json);

  @override
  @JsonKey(name: "AgencyId")
  final int agencyId;
  @override
  @JsonKey(name: "AgentId")
  final int agentId;
  @override
  @JsonKey(name: "PropertyUniqueId")
  final String? propertyUniqueId;
  @override
  @JsonKey(name: "UserId")
  final int userId;
  final List<Contact>? _contacts;
  @override
  @JsonKey(name: "Contacts")
  List<Contact>? get contacts {
    final value = _contacts;
    if (value == null) return null;
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MultipleContact(agencyId: $agencyId, agentId: $agentId, propertyUniqueId: $propertyUniqueId, userId: $userId, contacts: $contacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultipleContactImpl &&
            (identical(other.agencyId, agencyId) ||
                other.agencyId == agencyId) &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            (identical(other.propertyUniqueId, propertyUniqueId) ||
                other.propertyUniqueId == propertyUniqueId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, agencyId, agentId,
      propertyUniqueId, userId, const DeepCollectionEquality().hash(_contacts));

  /// Create a copy of MultipleContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultipleContactImplCopyWith<_$MultipleContactImpl> get copyWith =>
      __$$MultipleContactImplCopyWithImpl<_$MultipleContactImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MultipleContactImplToJson(
      this,
    );
  }
}

abstract class _MultipleContact implements MultipleContact {
  const factory _MultipleContact(
          {@JsonKey(name: "AgencyId") final int agencyId,
          @JsonKey(name: "AgentId") final int agentId,
          @JsonKey(name: "PropertyUniqueId") final String? propertyUniqueId,
          @JsonKey(name: "UserId") final int userId,
          @JsonKey(name: "Contacts") final List<Contact>? contacts}) =
      _$MultipleContactImpl;

  factory _MultipleContact.fromJson(Map<String, dynamic> json) =
      _$MultipleContactImpl.fromJson;

  @override
  @JsonKey(name: "AgencyId")
  int get agencyId;
  @override
  @JsonKey(name: "AgentId")
  int get agentId;
  @override
  @JsonKey(name: "PropertyUniqueId")
  String? get propertyUniqueId;
  @override
  @JsonKey(name: "UserId")
  int get userId;
  @override
  @JsonKey(name: "Contacts")
  List<Contact>? get contacts;

  /// Create a copy of MultipleContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultipleContactImplCopyWith<_$MultipleContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
