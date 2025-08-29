import 'package:foreal_property/features/home_features/models/get_property_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_property_listing.freezed.dart';
part 'add_property_listing.g.dart';

@freezed
class ListingParams with _$ListingParams {
  const factory ListingParams({
    @JsonKey(name: "ListingId") @Default(0) int? listingId,
    @JsonKey(name: "PropertySaleRental") @Default(1) int propertySaleRental,
    @JsonKey(name: "PropertyId") int? propertyId,
    @JsonKey(name: "ListingStatus") @Default(1) int? listingStatus,
    @JsonKey(name: "PropertyAgreementType")@Default(2) int? propertyAgreementType,
    @JsonKey(name: "PropertyPrice") int? propertyPrice,
    @JsonKey(name: "RentPrice") @Default(0) int rentPrice,
    @JsonKey(name: "IsCommercial") @Default(false) bool? isCommercial,
    @JsonKey(name: "IsDualAgent") @Default(false) bool? isDualAgent,
    @JsonKey(name: "IsShowPrice") @Default(true) bool? isShowPrice,
    @JsonKey(name: "ShowText") String? showText,
    @JsonKey(name: "ListingAgentId") @Default(4) int listingAgentId,
    @JsonKey(name: "RentTenure") int? rentTenure,
    @JsonKey(name: "IsNew") @Default(1) int? isNew,
    @JsonKey(name: "ReaUploadId") String? reaUploadId,
    @JsonKey(name: "DateAvailable") String? dateAvailable,
    @JsonKey(name: "UserId") int? userId,
    @JsonKey(name: "LoggedUserId") @Default(2) int? loggedUserId,
  }) = _ListingParams;

  factory ListingParams.fromJson(Map<String, dynamic> json) =>
      _$ListingParamsFromJson(json);
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

  void updateListingParams(PropertyDetailModel? propertyData) {
    if (propertyData != null) {
      state = ListingParams(
        propertyId: propertyData.propertyId,
        propertyPrice: (propertyData.listingDetails != null &&
                propertyData.listingDetails!.isNotEmpty)
            ? propertyData.listingDetails![0].propertyPrice
            : null,

        listingStatus: (propertyData.listingDetails != null &&
                propertyData.listingDetails!.isNotEmpty)
            ? propertyData.listingDetails![0].listingStatus
            : null,

        propertyAgreementType: (propertyData.listingDetails != null &&
                propertyData.listingDetails!.isNotEmpty)
            ? propertyData.listingDetails![0].propertyAgreementType
            : null,
        listingId: (propertyData.listingDetails != null &&
                propertyData.listingDetails!.isNotEmpty)
            ? propertyData.listingDetails![0].listingId
            : 0,

        isCommercial: propertyData.isCommercial,
        isDualAgent: propertyData.isDualAgent,
        isShowPrice: propertyData.isShowPrice,
        showText: propertyData.showText,
        rentTenure: propertyData.rentTenure,
        userId: propertyData.userId,
        reaUploadId: propertyData.reaUploadId,
        // propertySaleRental: propertyData.listingDetails?.isNotEmpty == true
        //     ? propertyData.listingDetails![0].propertySaleRental ?? 0
        //     : 0,

    //   rentPrice: propertyData.listingDetails![0].rent,    
        isNew: propertyData.isNew ?? 1,
      );
    } else {
      state = const ListingParams(
        propertyId: null,
        propertyPrice: null,
        listingStatus: 0,
        propertyAgreementType: 0
      ); // fallback to default values
    }
  }
}
