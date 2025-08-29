import 'package:foreal_property/features/home_features/models/get_property_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ownership_params.freezed.dart';
part 'ownership_params.g.dart';

@freezed
class OwnershipParams with _$OwnershipParams {
  const factory OwnershipParams({
    @JsonKey(name: "AgentId") @Default(2) int agentId,
    @JsonKey(name: "AgencyID") @Default(1) int agencyId,
    @JsonKey(name: "Address") String? address,
    @JsonKey(name: "userRoleID")  @Default(10) userRoleID,
    @JsonKey(name: "PropertyUniqueId") String? propertyUniqueId,
    @JsonKey(name: "FirstName") String? firstName,
    @JsonKey(name: "LastName") String? lastName,
    @JsonKey(name: "Email") String? email,
    @JsonKey(name: "MobileNumber") String? mobileNumber,
    @JsonKey(name: "ContactType") @Default(1) int? contactType,
    @JsonKey(name: "Title") int? title,
    @JsonKey(name: "ContactUniqueId") String? contactUniqueId,
    @JsonKey(name: "TypeIAM") @Default(1)int? typeIAM,
   // @JsonKey(name: "isPhone") @Default(true) bool isPhone,
   // @JsonKey(name: "isEmail") @Default(true) bool isEmail,
   // @JsonKey(name: "isNotice") @Default(false) bool isNotice,
  }) = _OwnershipParams;

  factory OwnershipParams.fromJson(Map<String, dynamic> json) =>
      _$OwnershipParamsFromJson(json);
}

@Riverpod(keepAlive: true)
class OwnershipParamsData extends _$OwnershipParamsData {
  @override
  OwnershipParams build() {
    return const OwnershipParams(); // Provide default values for ContactParams
  }

  void update(OwnershipParams Function(OwnershipParams? p) updateParam) {
    state = updateParam(state); // Update state based on the function provided
  }

 void updateOwnership(PropertyDetailModel? ownerdata) {
  final contactList = ownerdata?.contactlistModel;

  if (contactList != null && contactList.isNotEmpty) {
    final contact = contactList[0];

    state = OwnershipParams(
      contactType: contact.contactType,
      title: contact.title,
      firstName: contact.firstName,
      lastName: contact.lastName,
      mobileNumber: contact.phone,
      email: contact.contactEmail,
      propertyUniqueId: ownerdata?.propertyUniqueId,
      contactUniqueId: contact.contactUId,
      address: contact.address,
      //typeIAM: contact.t
    );
  } else {
    // If contactList is null or empty, return empty/default model
    state = const OwnershipParams(
      contactType: null,
      title: null,
      firstName: null,
      lastName: null,
      mobileNumber: null,
      email: null,
      propertyUniqueId: null,
      contactUniqueId: null,
      address: null,
    );
  }
}
}


