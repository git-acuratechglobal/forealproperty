import 'package:flutter_riverpod/flutter_riverpod.dart';

class PropertyListingListModel {
  String currentOption;
  int? listingStatus;
  int? listingStatus2;
  int? agreementType;
  int? agreementType2;
  int? propertyPrice;
  bool? isCommercial;
  bool? isCommercial2;
  String? newOrEstablished;
  String? newOrEstablished2;
  int? listingAgent;
  int? listingAgent2;
  bool? dualAgent;
  bool? dualAgent2;
  bool? showPrice;
  bool? showPrice2;
  String? showText;
  String? showText2;
  int? rentalPrice;
  int? rentalPrice2;
  String? rentalIntervals;
  String? dateAvailable;

  PropertyListingListModel({
    this.currentOption = 'Sell',
    this.listingStatus,
    this.agreementType,
    this.propertyPrice,
    this.isCommercial,
    this.newOrEstablished,
    this.listingAgent,
    this.dualAgent,
    this.showPrice,
    this.showText,
    this.rentalPrice,
    this.rentalIntervals,
    this.dateAvailable,
    this.listingStatus2,
    this.agreementType2,
    this.isCommercial2,
    this.newOrEstablished2,
    this.listingAgent2,
    this.dualAgent2,
    this.showText2,
    this.showPrice2,
    this.rentalPrice2,
  });

  PropertyListingListModel copyWith({
    String? currentOption,
    int? listingStatus,
    int? listingStatus2,
    int? agreementType,
    int? agreementType2,
    int? propertyPrice,
    bool? isCommercial,
    bool? isCommercial2,
    String? newOrEstablished,
    String? newOrEstablished2,
    int? listingAgent,
    int? listingAgent2,
    bool? dualAgent,
    bool? dualAgent2,
    bool? showPrice,
    bool? showPrice2,
    String? showText,
    String? showText2,
    int? rentalPrice,
    int? rentalPrice2,
    String? rentalIntervals,
    String? dateAvailable,
  }) {
    return PropertyListingListModel(
      currentOption: currentOption ?? this.currentOption,
      listingStatus: listingStatus ?? this.listingStatus,
      listingStatus2: listingStatus2 ?? this.listingStatus2,
      agreementType: agreementType ?? this.agreementType,
      agreementType2: agreementType2 ?? this.agreementType2,
      propertyPrice: propertyPrice ?? this.propertyPrice,
      isCommercial: isCommercial ?? this.isCommercial,
      isCommercial2: isCommercial2 ?? this.isCommercial2,
      newOrEstablished: newOrEstablished ?? this.newOrEstablished,
      newOrEstablished2: newOrEstablished2 ?? this.newOrEstablished2,
      listingAgent: listingAgent ?? this.listingAgent,
      listingAgent2: listingAgent2 ?? this.listingAgent2,
      dualAgent: dualAgent ?? this.dualAgent,
      dualAgent2: dualAgent2 ?? this.dualAgent2,
      showPrice: showPrice ?? this.showPrice,
      showPrice2: showPrice2 ?? this.showPrice2,
      showText: showText ?? this.showText,
      showText2: showText2 ?? this.showText2,
      rentalPrice: rentalPrice ?? this.rentalPrice,
      rentalPrice2: rentalPrice2 ?? this.rentalPrice2,
      rentalIntervals: rentalIntervals ?? this.rentalIntervals,
      dateAvailable: dateAvailable ?? this.dateAvailable,
    );
  }
}

class PropertyListingNotifier extends StateNotifier<PropertyListingListModel> {
  PropertyListingNotifier() : super(PropertyListingListModel());

  void updateField(String key, dynamic value) {
    switch (key) {
      case 'currentOption':
        state = state.copyWith(currentOption: value);
        break;
      case 'listingStatus':
        state = state.copyWith(listingStatus: value);
        break;
      case 'listingStatus2':
        state = state.copyWith(listingStatus2: value);
        break;
      case 'agreementType':
        state = state.copyWith(agreementType: value);
        break;
      case 'agreementType2':
        state = state.copyWith(agreementType2: value);
        break;
      case 'propertyPrice':
        state = state.copyWith(propertyPrice: int.parse(value));
        break;
      case 'isCommercial':
        state = state.copyWith(isCommercial: value);
        break;
      case 'isCommercial2':
        state = state.copyWith(isCommercial2: value);
        break;
      case 'newOrEstablished':
        state = state.copyWith(newOrEstablished: value);
        break;
      case 'newOrEstablished2':
        state = state.copyWith(newOrEstablished2: value);
        break;
      case 'listingAgent':
        state = state.copyWith(listingAgent: value);
        break;
      case 'listingAgent2':
        state = state.copyWith(listingAgent2: value);
        break;
      case 'dualAgent':
        state = state.copyWith(dualAgent: value);
        break;
      case 'dualAgent2':
        state = state.copyWith(dualAgent2: value);
        break;
      case 'showPrice':
        state = state.copyWith(showPrice: value);
        break;
      case 'showPrice2':
        state = state.copyWith(showPrice2: value);
        break;
      case 'showText':
        state = state.copyWith(showText: value);
        break;
      case 'showText2':
        state = state.copyWith(showText2: value);
        break;
      case 'rentalPrice':
        state = state.copyWith(rentalPrice: value);
        break;
      case 'rentalPrice2':
        state = state.copyWith(rentalPrice2: value);
        break;
      case 'rentalIntervals':
        state = state.copyWith(rentalIntervals: value);
        break;
      case 'dateAvailable':
        state = state.copyWith(dateAvailable: value);
        break;
    }
  }
}

final propertyListingProvider =
    StateNotifierProvider<PropertyListingNotifier, PropertyListingListModel>((ref) {
  return PropertyListingNotifier();
});
