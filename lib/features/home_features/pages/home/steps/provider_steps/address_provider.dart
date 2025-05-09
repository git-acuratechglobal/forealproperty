import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddressModel {
  String? propertyType;
  String? address;
  String? unitNumber;
  String? streetNumber;
  String? streetName;
  String? suburb;
  String? state;
  String? postcode;
  String? assignedTo;

  AddressModel({
    this.propertyType,
    this.address,
    this.unitNumber,
    this.streetNumber,
    this.streetName,
    this.suburb,
    this.state,
    this.postcode,
    this.assignedTo,
  });

  AddressModel copyWith({
    String? propertyType,
    String? address,
    String? unitNumber,
    String? streetNumber,
    String? streetName,
    String? suburb,
    String? state,
    String? postcode,
    String? assignedTo,
  }) {
    return AddressModel(
      propertyType: propertyType ?? this.propertyType,
      address: address ?? this.address,
      unitNumber: unitNumber ?? this.unitNumber,
      streetNumber: streetNumber ?? this.streetNumber,
      streetName: streetName ?? this.streetName,
      suburb: suburb ?? this.suburb,
      state: state ?? this.state,
      postcode: postcode ?? this.postcode,
      assignedTo: assignedTo ?? this.assignedTo,
    );
  }
}




class AddressNotifier extends StateNotifier<AddressModel> {
  AddressNotifier() : super(AddressModel());

  void updateField(String key, String? value) {
    switch (key) {
      case 'propertyType':
        state = state.copyWith(propertyType: value);
        break;
      case 'address':
        state = state.copyWith(address: value);
        break;
      case 'unitNumber':
        state = state.copyWith(unitNumber: value);
        break;
      case 'streetNumber':
        state = state.copyWith(streetNumber: value);
        break;
      case 'streetName':
        state = state.copyWith(streetName: value);
        break;
      case 'suburb':
        state = state.copyWith(suburb: value);
        break;
      case 'state':
        state = state.copyWith(state: value);
        break;
      case 'postcode':
        state = state.copyWith(postcode: value);
        break;
      case 'assignedTo':
        state = state.copyWith(assignedTo: value);
        break;
    }
  }
}

final addressProvider = StateNotifierProvider<AddressNotifier, AddressModel>((ref) {
  return AddressNotifier();
});
