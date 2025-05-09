import 'package:json_annotation/json_annotation.dart';

part 'get_property_list_model.g.dart';


@JsonSerializable(createToJson: false)
class GetPropertyList {
    GetPropertyList({
        required this.propertyId,
        required this.propertyUniqueId,
        required this.agencyId,
        required this.agentId,
        required this.agentUniqueId,
        required this.agentName,
        required this.agentProfilePic,
        required this.agentContact,
        required this.agentEmail,
        required this.propertyContactId,
        required this.propertyName,
        required this.agencyUniqueId,
        required this.agencyName,
        required this.agencyLogo,
        required this.agencyBrandColor,
        required this.postCode,
        required this.primaryContactUniqueId,
        required this.propertyPic,
        required this.primaryContactName,
        required this.getFormatedAddress,
        required this.propertyGooglePlacesLocation,
        required this.propertyGooglePlacesLocationLat,
        required this.propertyGooglePlacesLocationLong,
        required this.propertySaleRental,
        required this.propertyDescription,
        required this.propertyReferenceField,
        required this.countBedrooms,
        required this.countBathrooms,
        required this.countRooms,
        required this.countCarParking,
        required this.countServantQuarters,
        required this.countAttic,
        required this.countAnnexes,
        required this.countKitchen,
        required this.countDrawingRooms,
        required this.countStorageRooms,
        required this.propertySellerConvyencorId,
        required this.propertyBuyerConvyencorId,
        required this.propertyType,
        required this.propertyBuildingTypeLotplan,
        required this.propertyBuildingTypeYearBuilt,
        required this.propertyBuildingTypeZoning,
        required this.propertySoldDate,
        required this.propertySoldPrice,
        required this.propertyPrice,
        required this.createdDate,
        required this.isDeleted,
        required this.deletedOn,
        required this.isApproved,
        required this.approvedOn,
        required this.isPropertyEnlist,
        required this.propertyEnlistDate,
        required this.isAgent,
        required this.isWishlist,
        required this.isPropertyScrap,
        required this.sPropertyType,
        required this.purpose,
        required this.showText,
        required this.isRemoveFromList,
        required this.leasedSoldProperty,
        required this.isPropertyLost,
        required this.shareStatus,
        required this.listingStatus,
        required this.sharedAgents,
        required this.propertyPics,
        required this.additionalFeatures,
        required this.createdBy,
        required this.sPropertyStatus,
        required this.propertyStatusColor,
        required this.propertyHeading,
        required this.propertyLandAreaL,
        required this.propertyLandAreaW,
        required this.state,
        required this.suburb,
        required this.streetName,
        required this.unitNumber,
        required this.streetNumber,
    });

    final int? propertyId;

    @JsonKey(name: 'propertyUniqueID') 
    final String? propertyUniqueId;
    final int? agencyId;
    final int? agentId;
    final dynamic agentUniqueId;
    final String? agentName;
    final String? agentProfilePic;
    final String? agentContact;
    final String? agentEmail;
    final dynamic propertyContactId;
    final dynamic propertyName;
    final dynamic agencyUniqueId;
    final String? agencyName;
    final String? agencyLogo;
    final String? agencyBrandColor;
    final String? postCode;

    @JsonKey(name: 'primaryContactUniqueID') 
    final String? primaryContactUniqueId;
    final String? propertyPic;
    final dynamic primaryContactName;
    final String? getFormatedAddress;
    final String? propertyGooglePlacesLocation;
    final dynamic propertyGooglePlacesLocationLat;
    final dynamic propertyGooglePlacesLocationLong;
    final dynamic propertySaleRental;
    final dynamic propertyDescription;
    final dynamic propertyReferenceField;
    final int? countBedrooms;
    final int? countBathrooms;
    final dynamic countRooms;
    final int? countCarParking;
    final dynamic countServantQuarters;
    final dynamic countAttic;
    final dynamic countAnnexes;
    final dynamic countKitchen;
    final dynamic countDrawingRooms;
    final dynamic countStorageRooms;
    final dynamic propertySellerConvyencorId;
    final dynamic propertyBuyerConvyencorId;
    final String? propertyType;
    final dynamic propertyBuildingTypeLotplan;
    final dynamic propertyBuildingTypeYearBuilt;
    final dynamic propertyBuildingTypeZoning;
    final dynamic propertySoldDate;
    final dynamic propertySoldPrice;
    final dynamic propertyPrice;
    final DateTime? createdDate;
    final dynamic isDeleted;
    final dynamic deletedOn;
    final dynamic isApproved;
    final dynamic approvedOn;
    final dynamic isPropertyEnlist;
    final dynamic propertyEnlistDate;
    final dynamic isAgent;
    final bool? isWishlist;
    final dynamic isPropertyScrap;
    final String? sPropertyType;
    final int? purpose;
    final dynamic showText;
    final dynamic isRemoveFromList;
    final bool? leasedSoldProperty;
    final bool? isPropertyLost;
    final int? shareStatus;
    final dynamic listingStatus;
    final dynamic sharedAgents;
    final List<dynamic>? propertyPics;
    final dynamic additionalFeatures;
    final String? createdBy;
    final String? sPropertyStatus;
    final String? propertyStatusColor;
    final dynamic propertyHeading;
    final dynamic propertyLandAreaL;
    final dynamic propertyLandAreaW;
    final String? state;
    final String? suburb;
    final String? streetName;
    final String? unitNumber;
    final String? streetNumber;

    factory GetPropertyList.fromJson(Map<String, dynamic> json) => _$GetPropertyListFromJson(json);

}
