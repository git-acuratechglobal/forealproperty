import 'package:json_annotation/json_annotation.dart';

part 'get_property_details.g.dart';

@JsonSerializable(createToJson: false)
class PropertyDetailModel {
    PropertyDetailModel({
        required this.viewType,
        required this.propertyUniqueId,
        required this.propertyImageSequence,
        required this.propertyFloorImageSequence,
        required this.uploadDocumentNameArray,
        required this.propertyPics,
        required this.contactsList,
        required this.countofEnquiry,
        required this.countofopenhome,
        required this.countofsaleoffers,
        required this.countofRental,
        required this.openHomeList,
        required this.uploadedImagesName,
        required this.floorPics,
        required this.uploadedFloorImagesName,
        required this.pageMode,
        required this.uploadedDocuments,
        required this.uploadedImages,
        required this.location,
        required this.propertyHeading,
        required this.propertyId,
        required this.agencyId,
        required this.agencyLogo,
        required this.agencyBrandColor,
        required this.agencyUniqueId,
        required this.agencyName,
        required this.address,
        required this.agentId,
        required this.agentPhotoPath,
        required this.agentName,
        required this.agentEmail,
        required this.agentTitle,
        required this.agentUniqueId,
        required this.agentYearsOfExperience,
        required this.agentLicenseExpiry,
        required this.agentEmergencyContactName,
        required this.agentAreaofWorking,
        required this.agentAddress,
        required this.agentContact,
        required this.agentLicenseNumber,
        required this.agentRegistraionExpiry,
        required this.agentEmergencyContactDetails,
        required this.agentDescription,
        required this.agentResidentialAddress,
        required this.appraisalEmailLog,
        required this.userId,
        required this.propertyContactId,
        required this.isPropertyEnlist,
        required this.propertyEnlistDate,
        required this.propertyContactName,
        required this.propertyContactUid,
        required this.hastoDeletePictures,
        required this.hastoDeleteFloorPictures,
        required this.contactCompanyName,
        required this.primaryContactName,
        required this.isLeasedSold,
        required this.suburb,
        required this.ownerAccountFolio,
        required this.propertyName,
        required this.note,
        required this.propertyGooglePlacesLocation,
        required this.propertyGooglePlacesLocationLat,
        required this.propertyGooglePlacesLocationLong,
        required this.getFormatedAddress,
        required this.state,
        required this.postCode,
        required this.propertySaleRental,
        required this.propertyOccupiedTenanted,
        required this.propertySaleRentalList,
        required this.propertyOccupiedTenantedList,
        required this.streetName,
        required this.unitNumber,
        required this.streetNumber,
        required this.propertyDescription,
        required this.propertyReferenceField,
        required this.countBedrooms,
        required this.countCarParking,
        required this.countBathrooms,
        required this.propertyType,
        required this.propertyAgreementType,
        required this.sPropertyType,
        required this.propertyLandAreaL,
        required this.propertyLandAreaTypeList,
        required this.propertyLandAreaW,
        required this.propertyBuildingTypeLotplan,
        required this.propertyBuildingTypeLotplanName,
        required this.propertyBuildingTypeYearBuilt,
        required this.propertyBuildingTypeYearBuiltName,
        required this.propertyBuildingTypeYearBuiltList,
        required this.propertyBuildingTypeZoning,
        required this.propertyBuildingTypeZoningName,
        required this.propertySoldDate,
        required this.propertySoldPrice,
        required this.createdDate,
        required this.isDeleted,
        required this.deletedOn,
        required this.isApproved,
        required this.isPropertyScrap,
        required this.isRemoveFromList,
        required this.isAddedByAffiliate,
        required this.approvedOn,
        required this.propertyPrice,
        required this.propertySellerFirmName,
        required this.propertySellerPrincipalName,
        required this.propertySellerAddress,
        required this.propertySellerEmail,
        required this.propertySellerPhone,
        required this.propertySellerFax,
        required this.propertyBuyerFirmName,
        required this.propertyBuyerPrincipalName,
        required this.propertyBuyerAddress,
        required this.propertyBuyerEmail,
        required this.propertyBuyerPhone,
        required this.propertyBuyerFax,
        required this.propertySellerConvyencor,
        required this.propertyBuyerConvyencor,
        required this.floorPlanByte,
        required this.floorPlanPath,
        required this.listingDetails,
        required this.propertyDocuments,
        required this.agreements,
        required this.saleAgreement,
        required this.managementAgreement,
        required this.tenantAgreement,
        required this.verificationProofs,
        required this.propertyPictures,
        required this.externalId1,
        required this.externalId2,
        required this.externalId3,
        required this.webRootPath,
        required this.propertyLegalDetail,
        required this.purpose,
        required this.ePurpose,
        required this.purposeName,
        required this.energyRating,
        required this.energyRatingName,
        required this.countEnsuites,
        required this.countToilets,
        required this.countGarageSpace,
        required this.countLivingAreas,
        required this.balcony,
        required this.deck,
        required this.outdoorEntertainmentArea,
        required this.remoteGarage,
        required this.shed,
        required this.swimmmingPoolInGround,
        required this.coutryard,
        required this.fullyFenced,
        required this.outsideSpa,
        required this.secureParking,
        required this.swimmmingPoolAboveGround,
        required this.tennisCourt,
        required this.alarmSystem,
        required this.builtInWardrobes,
        required this.ductedVacuumSystem,
        required this.gym,
        required this.intercom,
        required this.rumpusRoom,
        required this.workshop,
        required this.broadbandInternetAvailable,
        required this.dishwasher,
        required this.floorboards,
        required this.insideSpa,
        required this.payTvAccess,
        required this.study,
        required this.airConditioning,
        required this.ductedHeating,
        required this.gasHeating,
        required this.openFireplace,
        required this.splitSystemAirConditioning,
        required this.ductedCooling,
        required this.evaporativeCooling,
        required this.hydraulicHeating,
        required this.reverseCycleAirConditioning,
        required this.splitSystemHeating,
        required this.greyWaterSystem,
        required this.solarPanels,
        required this.solarHotWater,
        required this.waterTank,
        required this.showBasicDetails,
        required this.propertyArea,
        required this.secondaryContacts,
        required this.imagesNameArray,
        required this.floorImagesNameArray,
        required this.propertyNotes,
        required this.cmaReportPath,
        required this.appraisalUniqueId,
        required this.isDraft,
        required this.recommededPriceFrom,
        required this.recommededPriceTo,
        required this.cmaReportPrice,
        required this.propertyStatusStage,
        required this.affiliateId,
        required this.leadOnProgress,
        required this.uploadOnPm,
        required this.inspectionDue,
        required this.inspectionFrequency,
        required this.inspectionFrequencyType,
        required this.listAppraisalNotes,
        required this.listAppraisalFollowup,
        required this.appraisalModel,
        required this.appraisalModellist,
        required this.addUpdateOfferModel,
        required this.userType,
        required this.agentList,
        required this.agentPropertiesModel,
        required this.isWishlist,
        required this.hasSolicitorDetails,
        required this.contactlistModel,
        required this.contactHistoryList,
        required this.hdnPrimaryContact,
        required this.primaryContactEmail,
        required this.propertyEnquiryCount,
        required this.agreementType,
        required this.propertyStatus,
        required this.isNew,
        required this.isDualAgent,
        required this.leadAgent,
        required this.dualAgent,
        required this.dualAgentName,
        required this.showText,
        required this.isShowPrice,
        required this.isOpenHome,
        required this.startTime,
        required this.endTime,
        required this.openHomeuniqueId,
        required this.eventDate,
        required this.openHomeListingModel,
        required this.addUpdatesPropertyOwnersModel,
        required this.addUpdatePropertyAttributesModel,
        required this.addUpdatePropertyAdditionalDetailsModel,
        required this.addUpdatePropertyLegalDetailsModel,
        required this.addUpdatePropertyDocumentModel,
        required this.addContactDetails,
        required this.tenantDetails,
        required this.tenantFolioDetails,
        required this.rentPrice,
        required this.rentTenure,
        required this.reaUploadId,
        required this.domainUploadId,
        required this.listingStatus,
        required this.isCommercial,
        required this.saveUpload,
        required this.isWaitingForApproval,
        required this.waitingOperation,
        required this.waitingPortalsToUpload,
        required this.isPrincipleLogged,
        required this.isAppraisalAdded,
        required this.isAgreementuploaded,
        required this.isCosUploaded,
        required this.isListedProperty,
        required this.saleLeaseAgreementUploaded,
        required this.leasedSoldProperty,
        required this.isPropertyLost,
        required this.followUpDate,
        required this.addContact,
        required this.updateHistories,
        required this.ownerFolioDetails,
        required this.redirectUrl,
    });

    final int? viewType;

    @JsonKey(name: 'propertyUniqueID') 
    final String? propertyUniqueId;
    final dynamic propertyImageSequence;
    final dynamic propertyFloorImageSequence;
    final dynamic uploadDocumentNameArray;
    final dynamic propertyPics;
    final dynamic contactsList;
    final int? countofEnquiry;
    final int? countofopenhome;
    final int? countofsaleoffers;
    final int? countofRental;
    final dynamic openHomeList;
    final dynamic uploadedImagesName;
    final dynamic floorPics;
    final dynamic uploadedFloorImagesName;
    final int? pageMode;
    final dynamic uploadedDocuments;
    final dynamic uploadedImages;
    final dynamic location;
    final String? propertyHeading;
    final int? propertyId;
    final int? agencyId;
    final String? agencyLogo;
    final dynamic agencyBrandColor;
    final dynamic agencyUniqueId;
    final String? agencyName;
    final dynamic address;
    final int? agentId;

    @JsonKey(name: 'agent_Photo_Path') 
    final dynamic agentPhotoPath;

    @JsonKey(name: 'agent_Name') 
    final String? agentName;

    @JsonKey(name: 'agent_Email') 
    final String? agentEmail;

    @JsonKey(name: 'agent_Title') 
    final dynamic agentTitle;
    final String? agentUniqueId;

    @JsonKey(name: 'agent_YearsOfExperience') 
    final int? agentYearsOfExperience;

    @JsonKey(name: 'agent_LicenseExpiry') 
    final DateTime? agentLicenseExpiry;

    @JsonKey(name: 'agent_EmergencyContactName') 
    final dynamic agentEmergencyContactName;

    @JsonKey(name: 'agent_AreaofWorking') 
    final dynamic agentAreaofWorking;

    @JsonKey(name: 'agent_Address') 
    final String? agentAddress;

    @JsonKey(name: 'agent_Contact') 
    final String? agentContact;

    @JsonKey(name: 'agent_LicenseNumber') 
    final String? agentLicenseNumber;

    @JsonKey(name: 'agent_RegistraionExpiry') 
    final dynamic agentRegistraionExpiry;

    @JsonKey(name: 'agent_EmergencyContactDetails') 
    final dynamic agentEmergencyContactDetails;

    @JsonKey(name: 'agent_Description') 
    final String? agentDescription;

    @JsonKey(name: 'agent_ResidentialAddress') 
    final dynamic agentResidentialAddress;
    final dynamic appraisalEmailLog;
    final int? userId;
    final dynamic propertyContactId;
    final bool? isPropertyEnlist;
    final DateTime? propertyEnlistDate;
    final String? propertyContactName;

    @JsonKey(name: 'propertyContactUID') 
    final dynamic propertyContactUid;
    final dynamic hastoDeletePictures;
    final dynamic hastoDeleteFloorPictures;
    final dynamic contactCompanyName;
    final dynamic primaryContactName;
    final bool? isLeasedSold;
    final String? suburb;
    final dynamic ownerAccountFolio;
    final dynamic propertyName;
    final dynamic note;
    final String? propertyGooglePlacesLocation;
    final String? propertyGooglePlacesLocationLat;
    final String? propertyGooglePlacesLocationLong;
    final String? getFormatedAddress;
    final String? state;
    final String? postCode;
    final dynamic propertySaleRental;
    final dynamic propertyOccupiedTenanted;
    final dynamic propertySaleRentalList;
    final dynamic propertyOccupiedTenantedList;
    final String? streetName;
    final String? unitNumber;
    final String? streetNumber;
    final String? propertyDescription;
    final dynamic propertyReferenceField;
    final int? countBedrooms;
    final int? countCarParking;
    final int? countBathrooms;
    final String? propertyType;
    final dynamic propertyAgreementType;
    final String? sPropertyType;
    final dynamic propertyLandAreaL;
    final dynamic propertyLandAreaTypeList;
    final int? propertyLandAreaW;
    final dynamic propertyBuildingTypeLotplan;
    final dynamic propertyBuildingTypeLotplanName;
    final dynamic propertyBuildingTypeYearBuilt;
    final dynamic propertyBuildingTypeYearBuiltName;
    final List<PropertyBuildingTypeYearBuiltList>? propertyBuildingTypeYearBuiltList;
    final String? propertyBuildingTypeZoning;
    final dynamic propertyBuildingTypeZoningName;
    final dynamic propertySoldDate;
    final dynamic propertySoldPrice;
    final DateTime? createdDate;
    final dynamic isDeleted;
    final dynamic deletedOn;
    final dynamic isApproved;
    final dynamic isPropertyScrap;
    final dynamic isRemoveFromList;
    final bool? isAddedByAffiliate;
    final dynamic approvedOn;
    final dynamic propertyPrice;
    final dynamic propertySellerFirmName;
    final dynamic propertySellerPrincipalName;
    final dynamic propertySellerAddress;
    final dynamic propertySellerEmail;
    final dynamic propertySellerPhone;
    final dynamic propertySellerFax;
    final dynamic propertyBuyerFirmName;
    final dynamic propertyBuyerPrincipalName;
    final dynamic propertyBuyerAddress;
    final dynamic propertyBuyerEmail;
    final dynamic propertyBuyerPhone;
    final dynamic propertyBuyerFax;
    final PropertyErConvyencor? propertySellerConvyencor;
    final PropertyErConvyencor? propertyBuyerConvyencor;

    @JsonKey(name: 'floorPlan_Byte') 
    final dynamic floorPlanByte;

    @JsonKey(name: 'floorPlan_Path') 
    final dynamic floorPlanPath;
    final List<ListingDetail>? listingDetails;
    final List<dynamic>? propertyDocuments;
    final dynamic agreements;
    final dynamic saleAgreement;
    final dynamic managementAgreement;
    final dynamic tenantAgreement;
    final dynamic verificationProofs;
    final List<PropertyPicture>? propertyPictures;
    final dynamic externalId1;
    final dynamic externalId2;
    final dynamic externalId3;
    final dynamic webRootPath;
    final dynamic propertyLegalDetail;
    final String? purpose;
    final int? ePurpose;
    final dynamic purposeName;
    final dynamic energyRating;
    final dynamic energyRatingName;
    final int? countEnsuites;
    final int? countToilets;
    final int? countGarageSpace;
    final int? countLivingAreas;
    final bool? balcony;
    final bool? deck;
    final bool? outdoorEntertainmentArea;
    final bool? remoteGarage;
    final bool? shed;
    final bool? swimmmingPoolInGround;
    final bool? coutryard;
    final bool? fullyFenced;
    final bool? outsideSpa;
    final bool? secureParking;
    final bool? swimmmingPoolAboveGround;
    final bool? tennisCourt;
    final bool? alarmSystem;
    final bool? builtInWardrobes;
    final bool? ductedVacuumSystem;
    final bool? gym;
    final bool? intercom;
    final bool? rumpusRoom;
    final bool? workshop;
    final bool? broadbandInternetAvailable;
    final bool? dishwasher;
    final bool? floorboards;
    final bool? insideSpa;

    @JsonKey(name: 'payTVAccess') 
    final bool? payTvAccess;
    final bool? study;
    final bool? airConditioning;
    final bool? ductedHeating;
    final bool? gasHeating;
    final bool? openFireplace;
    final bool? splitSystemAirConditioning;
    final bool? ductedCooling;
    final bool? evaporativeCooling;
    final bool? hydraulicHeating;
    final bool? reverseCycleAirConditioning;
    final bool? splitSystemHeating;
    final bool? greyWaterSystem;
    final bool? solarPanels;
    final bool? solarHotWater;
    final bool? waterTank;
    final bool? showBasicDetails;
    final dynamic propertyArea;
    final dynamic secondaryContacts;
    final dynamic imagesNameArray;
    final dynamic floorImagesNameArray;
    final List<dynamic>? propertyNotes;
    final dynamic cmaReportPath;
    final dynamic appraisalUniqueId;
    final dynamic isDraft;
    final dynamic recommededPriceFrom;
    final dynamic recommededPriceTo;
    final dynamic cmaReportPrice;
    final int? propertyStatusStage;
    final dynamic affiliateId;
    final bool? leadOnProgress;

    @JsonKey(name: 'uploadOnPM') 
    final bool? uploadOnPm;
    final dynamic inspectionDue;
    final dynamic inspectionFrequency;
    final dynamic inspectionFrequencyType;
    final dynamic listAppraisalNotes;
    final dynamic listAppraisalFollowup;
    final dynamic appraisalModel;
    final dynamic appraisalModellist;
    final dynamic addUpdateOfferModel;
    final dynamic userType;
    final dynamic agentList;
    final List<AgentPropertiesModel>? agentPropertiesModel;
    final bool? isWishlist;
    final bool? hasSolicitorDetails;
    final dynamic contactlistModel;
    final dynamic contactHistoryList;
    final dynamic hdnPrimaryContact;
    final dynamic primaryContactEmail;
    final dynamic propertyEnquiryCount;
    final dynamic agreementType;
    final dynamic propertyStatus;
    final int? isNew;
    final bool? isDualAgent;
    final dynamic leadAgent;
    final dynamic dualAgent;
    final String? dualAgentName;
    final dynamic showText;
    final bool? isShowPrice;
    final dynamic isOpenHome;
    final dynamic startTime;
    final dynamic endTime;
    final dynamic openHomeuniqueId;
    final dynamic eventDate;
    final dynamic openHomeListingModel;
    final dynamic addUpdatesPropertyOwnersModel;
    final dynamic addUpdatePropertyAttributesModel;
    final dynamic addUpdatePropertyAdditionalDetailsModel;
    final dynamic addUpdatePropertyLegalDetailsModel;
    final dynamic addUpdatePropertyDocumentModel;
    final dynamic addContactDetails;
    final dynamic tenantDetails;
    final dynamic tenantFolioDetails;
    final int? rentPrice;
    final int? rentTenure;
    final dynamic reaUploadId;
    final dynamic domainUploadId;
    final dynamic listingStatus;
    final bool? isCommercial;
    final dynamic saveUpload;
    final bool? isWaitingForApproval;
    final dynamic waitingOperation;
    final dynamic waitingPortalsToUpload;
    final bool? isPrincipleLogged;
    final bool? isAppraisalAdded;
    final bool? isAgreementuploaded;

    @JsonKey(name: 'isCOSUploaded') 
    final bool? isCosUploaded;
    final bool? isListedProperty;
    final bool? saleLeaseAgreementUploaded;
    final bool? leasedSoldProperty;
    final bool? isPropertyLost;
    final dynamic followUpDate;
    final bool? addContact;
    final dynamic updateHistories;
    final dynamic ownerFolioDetails;
    final dynamic redirectUrl;

    factory PropertyDetailModel.fromJson(Map<String, dynamic> json) => _$PropertyDetailModelFromJson(json);

}

@JsonSerializable(createToJson: false)
class AgentPropertiesModel {
    AgentPropertiesModel({
        required this.propertyUniqueId,
        required this.propertyImage,
        required this.propertyPrice,
        required this.enlistDate,
        required this.isWishlist,
    });

    final String? propertyUniqueId;
    final String? propertyImage;
    final dynamic propertyPrice;
    final DateTime? enlistDate;
    final bool? isWishlist;

    factory AgentPropertiesModel.fromJson(Map<String, dynamic> json) => _$AgentPropertiesModelFromJson(json);

}

@JsonSerializable(createToJson: false)
class ListingDetail {
    ListingDetail({
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
    final dynamic domainUploadId;
    final int? listingStatus;
    final dynamic propertyPrice;
    final bool? isCommercial;
    final dynamic propertyAgreementType;
    final int? isNew;
    final dynamic dualAgent;
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
    final DateTime? dateAvailable;
    final int? listingAgentId;
    final String? listingAgentName;
    final int? enquiryCount;
    final DateTime? createdAt;
    final DateTime? reaUploadedDate;
    final dynamic domainUploadedDate;

    factory ListingDetail.fromJson(Map<String, dynamic> json) => _$ListingDetailFromJson(json);

}

@JsonSerializable(createToJson: false)
class PropertyBuildingTypeYearBuiltList {
    PropertyBuildingTypeYearBuiltList({
        required this.disabled,
        required this.group,
        required this.selected,
        required this.text,
        required this.value,
    });

    final bool? disabled;
    final dynamic group;
    final bool? selected;
    final String? text;
    final String? value;

    factory PropertyBuildingTypeYearBuiltList.fromJson(Map<String, dynamic> json) => _$PropertyBuildingTypeYearBuiltListFromJson(json);

}

@JsonSerializable(createToJson: false)
class PropertyErConvyencor {
    PropertyErConvyencor({
        required this.convyencorId,
        required this.firmName,
        required this.principalName,
        required this.address,
        required this.email,
        required this.phone,
        required this.fax,
    });

    final int? convyencorId;
    final dynamic firmName;
    final dynamic principalName;
    final dynamic address;
    final dynamic email;
    final dynamic phone;
    final dynamic fax;

    factory PropertyErConvyencor.fromJson(Map<String, dynamic> json) => _$PropertyErConvyencorFromJson(json);

}

@JsonSerializable(createToJson: false)
class PropertyPicture {
    PropertyPicture({
        required this.picId,
        required this.picPath,
        required this.createdDate,
        required this.propertyId,
        required this.isEnabled,
        required this.picName,
        required this.picDesc,
        required this.picAltText,
        required this.isDeleted,
        required this.deletedOn,
        required this.type,
        required this.picNum,
    });

    final int? picId;
    final String? picPath;
    final DateTime? createdDate;
    final int? propertyId;
    final dynamic isEnabled;
    final dynamic picName;
    final dynamic picDesc;
    final dynamic picAltText;
    final dynamic isDeleted;
    final dynamic deletedOn;
    final int? type;
    final int? picNum;

    factory PropertyPicture.fromJson(Map<String, dynamic> json) => _$PropertyPictureFromJson(json);

}
