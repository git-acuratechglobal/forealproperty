import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_property_listing.freezed.dart';
part 'add_property_listing.g.dart';

@freezed
class ListingParams with _$ListingParams {
  const factory ListingParams({
    @JsonKey(name: "ListingId") @Default(0) int listingId,
    @JsonKey(name: "PropertySaleRental") @Default(1) int propertySaleRental,
    @JsonKey(name: "PropertyId")  int?  propertyId,
    @JsonKey(name: "ListingStatus")  int? listingStatus,
    @JsonKey(name: "PropertyAgreementType")  int? propertyAgreementType,
    @JsonKey(name: "PropertyPrice")  int? propertyPrice,
    @JsonKey(name: "RentPrice") @Default(0) int rentPrice,
    @JsonKey(name: "IsCommercial")  bool? isCommercial,
    @JsonKey(name: "IsDualAgent") bool? isDualAgent,
    @JsonKey(name: "IsShowPrice") bool? isShowPrice,
    @JsonKey(name: "ListingAgentId") @Default(4) int listingAgentId,
  }) = _ListingParams;

  factory ListingParams.fromJson(Map<String, dynamic> json) => _$ListingParamsFromJson(json);
}

@Riverpod(keepAlive: true)
class ListingParamsData extends _$ListingParamsData {
  @override
  ListingParams build() {
    return const ListingParams();
  }

  void update(ListingParams Function(ListingParams state) updateFn) {
    state = updateFn(state);
  }
}
