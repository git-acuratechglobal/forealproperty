

import 'package:flutter_riverpod/flutter_riverpod.dart';


class LegalModel {

  String? sellerFirm;
  String? sellerFirmType; 
  String? sellerPrincipalName;
  String? sellerEmail;
  String? sellerPhone;
  String? sellerFax;
  String? sellerAddress;


  String? buyerFirm;
  String? buyerFirmType; 
  String? buyerPrincipalName;
  String? buyerEmail;
  String? buyerPhone;
  String? buyerFax;
  String? buyerAddress;

  LegalModel({
    this.sellerFirm,
    this.sellerFirmType,
    this.sellerPrincipalName,
    this.sellerEmail,
    this.sellerPhone,
    this.sellerFax,
    this.sellerAddress,
    this.buyerFirm,
    this.buyerFirmType,
    this.buyerPrincipalName,
    this.buyerEmail,
    this.buyerPhone,
    this.buyerFax,
    this.buyerAddress,
  });

  LegalModel copyWith({
    String? sellerFirm,
    String? sellerFirmType,
    String? sellerPrincipalName,
    String? sellerEmail,
    String? sellerPhone,
    String? sellerFax,
    String? sellerAddress,
    String? buyerFirm,
    String? buyerFirmType,
    String? buyerPrincipalName,
    String? buyerEmail,
    String? buyerPhone,
    String? buyerFax,
    String? buyerAddress,
  }) {
    return LegalModel(
      sellerFirm: sellerFirm ?? this.sellerFirm,
      sellerFirmType: sellerFirmType ?? this.sellerFirmType,
      sellerPrincipalName: sellerPrincipalName ?? this.sellerPrincipalName,
      sellerEmail: sellerEmail ?? this.sellerEmail,
      sellerPhone: sellerPhone ?? this.sellerPhone,
      sellerFax: sellerFax ?? this.sellerFax,
      sellerAddress: sellerAddress ?? this.sellerAddress,
      buyerFirm: buyerFirm ?? this.buyerFirm,
      buyerFirmType: buyerFirmType ?? this.buyerFirmType,
      buyerPrincipalName: buyerPrincipalName ?? this.buyerPrincipalName,
      buyerEmail: buyerEmail ?? this.buyerEmail,
      buyerPhone: buyerPhone ?? this.buyerPhone,
      buyerFax: buyerFax ?? this.buyerFax,
      buyerAddress: buyerAddress ?? this.buyerAddress,
    );
  }
}


class LegalNotifier extends StateNotifier<LegalModel> {
  LegalNotifier() : super(LegalModel());

  void updateField(String key, dynamic value) {
    switch (key) {
      case 'sellerFirm':
        state = state.copyWith(sellerFirm: value as String?);
        break;
      case 'sellerFirmType':
        state = state.copyWith(sellerFirmType: value as String?);
        break;
      case 'sellerPrincipalName':
        state = state.copyWith(sellerPrincipalName: value as String?);
        break;
      case 'sellerEmail':
        state = state.copyWith(sellerEmail: value as String?);
        break;
      case 'sellerPhone':
        state = state.copyWith(sellerPhone: value as String?);
        break;
      case 'sellerFax':
        state = state.copyWith(sellerFax: value as String?);
        break;
      case 'sellerAddress':
        state = state.copyWith(sellerAddress: value as String?);
        break;
      case 'buyerFirm':
        state = state.copyWith(buyerFirm: value as String?);
        break;
      case 'buyerFirmType':
        state = state.copyWith(buyerFirmType: value as String?);
        break;
      case 'buyerPrincipalName':
        state = state.copyWith(buyerPrincipalName: value as String?);
        break;
      case 'buyerEmail':
        state = state.copyWith(buyerEmail: value as String?);
        break;
      case 'buyerPhone':
        state = state.copyWith(buyerPhone: value as String?);
        break;
      case 'buyerFax':
        state = state.copyWith(buyerFax: value as String?);
        break;
      case 'buyerAddress':
        state = state.copyWith(buyerAddress: value as String?);
        break;
    }
  }
}

final legalProvider = StateNotifierProvider<LegalNotifier, LegalModel>((ref) {
  return LegalNotifier();
});
