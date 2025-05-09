import 'package:json_annotation/json_annotation.dart';

part 'get_property_listing_model.g.dart';

@JsonSerializable(createToJson: false)
class PropertyListingModel {
    PropertyListingModel({
        required this.countAll,
        required this.countSaleListing,
        required this.countRentalListing,
        required this.countSold,
        required this.countLeased,
        required this.countOffMarket,
        required this.propertyListingList,
    });

    final int? countAll;
    final int? countSaleListing;
    final int? countRentalListing;
    final int? countSold;
    final int? countLeased;
    final int? countOffMarket;
    final List<PropertyListingList>? propertyListingList;

    factory PropertyListingModel.fromJson(Map<String, dynamic> json) => _$PropertyListingModelFromJson(json);

}

@JsonSerializable(createToJson: false)
class PropertyListingList {
    PropertyListingList({
        required this.listingId,
        required this.propertySaleRental,
        required this.propertyId,
        required this.reaUploadId,
        required this.domainUploadId,
        required this.listingStatus,
        required this.propertyPrice,
        required this.isCommercial,
        required this.propertyAgreementType,
        required this.isNew,
        required this.dualAgent,
        required this.isDualAgent,
        required this.isShowPrice,
        required this.showText,
        required this.address,
        required this.propertyUId,
        required this.agentName,
        required this.dualAgentName,
        required this.sListingStatus,
        required this.sAgreementType,
        required this.rent,
        required this.dateAvailable,
        required this.listingAgentId,
        required this.listingAgentName,
        required this.enquiryCount,
        required this.createdAt,
        required this.reaUploadedDate,
        required this.domainUploadedDate,
    });

    final int? listingId;
    final int? propertySaleRental;
    final int? propertyId;
    final String? reaUploadId;
    final String? domainUploadId;
    final int? listingStatus;
    final int? propertyPrice;
    final bool? isCommercial;
    final int? propertyAgreementType;
    final int? isNew;
    final int? dualAgent;
    final bool? isDualAgent;
    final bool? isShowPrice;
    final String? showText;
    final String? address;
    final String? propertyUId;
    final String? agentName;
    final String? dualAgentName;
    final String? sListingStatus;
    final String? sAgreementType;
    final int? rent;
    final dynamic dateAvailable;
    final int? listingAgentId;
    final String? listingAgentName;
    final int? enquiryCount;
    final DateTime? createdAt;
    final DateTime? reaUploadedDate;
    final DateTime? domainUploadedDate;

    factory PropertyListingList.fromJson(Map<String, dynamic> json) => _$PropertyListingListFromJson(json);

}
