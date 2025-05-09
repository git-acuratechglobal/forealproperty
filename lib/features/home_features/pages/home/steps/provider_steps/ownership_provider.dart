import 'package:flutter_riverpod/flutter_riverpod.dart';

class OwnershipModel {
  int? contact; // For dropdown selection (Agent/Owner)
  String? type;
  String? title;
  String? firstName;
  String? lastName;
  String? phone;
  String? email;
  String? address;
  String? abn;
  String? companyName;
  bool isPrimary; // For "Set as Primary"

  OwnershipModel({
    this.contact,
    this.type,
    this.title,
    this.firstName,
    this.lastName,
    this.phone,
    this.email,
    this.address,
    this.abn,
    this.companyName,
    this.isPrimary = false,
  });

  OwnershipModel copyWith({
    int? contact,
    String? type,
    String? title,
    String? firstName,
    String? lastName,
    String? phone,
    String? email,
    String? address,
    String? abn,
    String? companyName,
    bool? isPrimary,
  }) {
    return OwnershipModel(
      contact: contact ?? this.contact,
      type: type ?? this.type,
      title: title ?? this.title,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      address: address ?? this.address,
      abn: abn ?? this.abn,
      companyName: companyName ?? this.companyName,
      isPrimary: isPrimary ?? this.isPrimary,
    );
  }
}


class OwnershipNotifier extends StateNotifier<OwnershipModel> {
  OwnershipNotifier() : super(OwnershipModel());

  void updateField(String key, dynamic value) {
    switch (key) {
      case 'contact':
        state = state.copyWith(contact: value as int?);
        break;
        case 'type':
        state = state.copyWith(type: value as String?);
        break;
         case 'title':
        state = state.copyWith(title: value as String?);
        break;
      case 'firstName':
        state = state.copyWith(firstName: value as String?);
        break;
      case 'lastName':
        state = state.copyWith(lastName: value as String?);
        break;
      case 'phone':
        state = state.copyWith(phone: value as String?);
        break;
      case 'email':
        state = state.copyWith(email: value as String?);
        break;
      case 'address':
        state = state.copyWith(address: value as String?);
        break;
      case 'abn':
        state = state.copyWith(abn: value as String?);
        break;
      case 'companyName':
        state = state.copyWith(companyName: value as String?);
        break;
      case 'isPrimary':
        state = state.copyWith(isPrimary: value as bool);
        break;
    }
  }
}


final ownershipProvider = StateNotifierProvider<OwnershipNotifier, OwnershipModel>((ref) {
  return OwnershipNotifier();
});

