import 'package:foreal_property/features/home_features/models/get_property_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'address_params.freezed.dart';
part 'address_params.g.dart';

@freezed
class AddressParams with _$AddressParams {
  const factory AddressParams({
    @JsonKey(name: "PropertyId") @Default(0) int propertyId,
    @JsonKey(name: "PropertySaleRental")  int? propertySaleRental,
    @JsonKey(name: "PropertyType") int? propertyType,
    @JsonKey(name: "AgentId") @Default(2)  int? agentId,
    @JsonKey(name: "AgencyId") @Default(1)  int? agencyId,
    @JsonKey(name: "PropertyGooglePlacesLocation") String? propertyGooglePlacesLocation,
    @JsonKey(name: "State") String? state,
    @JsonKey(name: "Suburb") String? suburb,
    @JsonKey(name: "PostCode") String? postCode,
    @JsonKey(name: "UnitNumber") String? unitNumber,
    @JsonKey(name: "StreetNumber") String? streetNumber,
    @JsonKey(name: "StreetName") String? streetName,
    @JsonKey(name: "UserId")  @Default(2) int? userId,
  }) = _AddressParams;

  factory AddressParams.fromJson(Map<String, dynamic> json) => _$AddressParamsFromJson(json);
}
@Riverpod(keepAlive: true)
class AddressParamsData extends _$AddressParamsData {
  @override
  AddressParams build() {
    return const AddressParams();
  }

  void update(AddressParams Function(AddressParams? p) updateParam) {
    state = updateParam(state);
  }
    void updateAddressParam(PropertyDetailModel? addressData){
    state=AddressParams(
     propertyGooglePlacesLocation:addressData?.propertyGooglePlacesLocation,
     propertyType: int.parse(addressData!.propertyType!),
     propertyId:  addressData.propertyId!,
     unitNumber: addressData.unitNumber,
     streetName: addressData.streetName,
     streetNumber: addressData.streetNumber,
     suburb: addressData.suburb,
     state: addressData.state,
     postCode: addressData.postCode,
     //propertySaleRental: addressData.propertySaleRental,
     userId: addressData.userId
     //propertySaleRental: int.parse(addressData.propertySaleRental)
    );
   }
   
}
