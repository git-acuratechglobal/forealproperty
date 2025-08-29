import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'add_multiple_owner.freezed.dart';
part 'add_multiple_owner.g.dart';

/// Contact model
@freezed
class Contact with _$Contact {
  const factory Contact({
    @JsonKey(name: 'Address') String? address,
    @JsonKey(name: 'FirstName') String? firstName,
    @JsonKey(name: 'LastName') String? lastName,
    @JsonKey(name: 'Email') String? email,
    @JsonKey(name: 'MobileNumber') String? mobileNumber,
    @JsonKey(name: 'ContactType') int? contactType,
    @JsonKey(name: 'Title') String? title,
    @JsonKey(name: 'IsPrimary') @Default(false) bool isPrimary,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);
}

/// MultipleContact model
@freezed
class MultipleContact with _$MultipleContact {
  const factory MultipleContact({
    @JsonKey(name: "AgencyId") @Default(1) int agencyId,
    @JsonKey(name: "AgentId") @Default(2) int agentId,
    @JsonKey(name: "PropertyUniqueId") String? propertyUniqueId,
    @JsonKey(name: "UserId") @Default(2) int userId,
    @JsonKey(name: "Contacts") List<Contact>? contacts,
  }) = _MultipleContact; // ✅ FIXED HERE

  factory MultipleContact.fromJson(Map<String, dynamic> json) =>
      _$MultipleContactFromJson(json);
}

/// Riverpod state notifier
@Riverpod(keepAlive: true)
class MultipleContactData extends _$MultipleContactData {
  @override
  MultipleContact build() => const MultipleContact();

  void update(MultipleContact Function(MultipleContact) updateFn) {
    state = updateFn(state);
  }

  void addContact(Contact contact) {
    final updatedContacts = [...?state.contacts, contact];
    state = state.copyWith(contacts: updatedContacts);
  }

  void clearContacts() {
    state = state.copyWith(contacts: []);
  }
}
