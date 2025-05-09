import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'address_params.freezed.dart';
part 'address_params.g.dart';

@freezed
class AddressParams with _$AddressParams {
  const factory AddressParams({
    @JsonKey(name: "PropertyId") @Default(0) int propertyId,
    @JsonKey(name: "PropertySaleRental")  @Default(1) int? propertySaleRental,
    @JsonKey(name: "PropertyType") String? propertyType,
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
}
