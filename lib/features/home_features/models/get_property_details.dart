import 'package:json_annotation/json_annotation.dart';

part 'get_property_details.g.dart';


@JsonSerializable()




@JsonSerializable()
class PropertyDetailModel {
    @JsonKey(name: "viewType")
    int? viewType;
    @JsonKey(name: "propertyUniqueID")
    String? propertyUniqueId;
    @JsonKey(name: "propertyImageSequence")
    dynamic propertyImageSequence;
    @JsonKey(name: "propertyFloorImageSequence")
    dynamic propertyFloorImageSequence;
    @JsonKey(name: "uploadDocumentNameArray")
    dynamic uploadDocumentNameArray;
    @JsonKey(name: "propertyPics")
    List<String>? propertyPics;
    @JsonKey(name: "contactsList")
    List<ContactsList>? contactsList;
    @JsonKey(name: "countofEnquiry")
    int? countofEnquiry;
    @JsonKey(name: "countofopenhome")
    int? countofopenhome;
    @JsonKey(name: "countofsaleoffers")
    int? countofsaleoffers;
    @JsonKey(name: "countofRental")
    int? countofRental;
    @JsonKey(name: "openHomeList")
    List<dynamic>? openHomeList;
    @JsonKey(name: "uploadedImagesName")
    dynamic uploadedImagesName;
    @JsonKey(name: "floorPics")
    List<dynamic>? floorPics;
    @JsonKey(name: "uploadedFloorImagesName")
    dynamic uploadedFloorImagesName;
    @JsonKey(name: "pageMode")
    int? pageMode;
    @JsonKey(name: "uploadedDocuments")
    dynamic uploadedDocuments;
    @JsonKey(name: "uploadedImages")
    dynamic uploadedImages;
    @JsonKey(name: "location")
    dynamic location;
    @JsonKey(name: "propertyHeading")
    String? propertyHeading;
    @JsonKey(name: "propertyId")
    int? propertyId;
    @JsonKey(name: "agencyId")
    int? agencyId;
    @JsonKey(name: "agencyLogo")
    String? agencyLogo;
    @JsonKey(name: "agencyBrandColor")
    dynamic agencyBrandColor;
    @JsonKey(name: "agencyUniqueId")
    dynamic agencyUniqueId;
    @JsonKey(name: "agencyName")
    String? agencyName;
    @JsonKey(name: "address")
    dynamic address;
    @JsonKey(name: "agentId")
    int? agentId;
    @JsonKey(name: "agent_Photo_Path")
    dynamic agentPhotoPath;
    @JsonKey(name: "agent_Name")
    String? agentName;
    @JsonKey(name: "agent_Email")
    dynamic agentEmail;
    @JsonKey(name: "agent_Title")
    dynamic agentTitle;
    @JsonKey(name: "agentUniqueId")
    String? agentUniqueId;
    @JsonKey(name: "agent_YearsOfExperience")
    int? agentYearsOfExperience;
    @JsonKey(name: "agent_LicenseExpiry")
    String? agentLicenseExpiry;
    @JsonKey(name: "agent_EmergencyContactName")
    String? agentEmergencyContactName;
    @JsonKey(name: "agent_AreaofWorking")
    dynamic agentAreaofWorking;
    @JsonKey(name: "agent_Address")
    String? agentAddress;
    @JsonKey(name: "agent_Contact")
    String? agentContact;
    @JsonKey(name: "agent_LicenseNumber")
    String? agentLicenseNumber;
    @JsonKey(name: "agent_RegistraionExpiry")
    dynamic agentRegistraionExpiry;
    @JsonKey(name: "agent_EmergencyContactDetails")
    String? agentEmergencyContactDetails;
    @JsonKey(name: "agent_Description")
    String? agentDescription;
    @JsonKey(name: "agent_ResidentialAddress")
    String? agentResidentialAddress;
    @JsonKey(name: "appraisalEmailLog")
    dynamic appraisalEmailLog;
    @JsonKey(name: "userId")
    int? userId;
    @JsonKey(name: "propertyContactId")
    int? propertyContactId;
    @JsonKey(name: "isPropertyEnlist")
    dynamic isPropertyEnlist;
    @JsonKey(name: "propertyEnlistDate")
    dynamic propertyEnlistDate;
    @JsonKey(name: "propertyContactName")
    String? propertyContactName;
    @JsonKey(name: "propertyContactUID")
    String? propertyContactUid;
    @JsonKey(name: "hastoDeletePictures")
    dynamic hastoDeletePictures;
    @JsonKey(name: "hastoDeleteFloorPictures")
    dynamic hastoDeleteFloorPictures;
    @JsonKey(name: "contactCompanyName")
    dynamic contactCompanyName;
    @JsonKey(name: "primaryContactName")
    String? primaryContactName;
    @JsonKey(name: "isLeasedSold")
    bool? isLeasedSold;
    @JsonKey(name: "suburb")
    String? suburb;
    @JsonKey(name: "ownerAccountFolio")
    String? ownerAccountFolio;
    @JsonKey(name: "propertyName")
    dynamic propertyName;
    @JsonKey(name: "note")
    dynamic note;
    @JsonKey(name: "propertyGooglePlacesLocation")
    String? propertyGooglePlacesLocation;
    @JsonKey(name: "propertyGooglePlacesLocationLat")
    dynamic propertyGooglePlacesLocationLat;
    @JsonKey(name: "propertyGooglePlacesLocationLong")
    dynamic propertyGooglePlacesLocationLong;
    @JsonKey(name: "getFormatedAddress")
    String? getFormatedAddress;
    @JsonKey(name: "state")
    String? state;
    @JsonKey(name: "postCode")
    String? postCode;
    @JsonKey(name: "propertySaleRental")
    dynamic propertySaleRental;
    @JsonKey(name: "propertyOccupiedTenanted")
    dynamic propertyOccupiedTenanted;
    @JsonKey(name: "propertySaleRentalList")
    dynamic propertySaleRentalList;
    @JsonKey(name: "propertyOccupiedTenantedList")
    dynamic propertyOccupiedTenantedList;
    @JsonKey(name: "streetName")
    String? streetName;
    @JsonKey(name: "unitNumber")
    String? unitNumber;
    @JsonKey(name: "streetNumber")
    String? streetNumber;
    @JsonKey(name: "propertyDescription")
    String? propertyDescription;
    @JsonKey(name: "propertyReferenceField")
    dynamic propertyReferenceField;
    @JsonKey(name: "countBedrooms")
    dynamic countBedrooms;
    @JsonKey(name: "countCarParking")
    int? countCarParking;
    @JsonKey(name: "countBathrooms")
    dynamic countBathrooms;
    @JsonKey(name: "propertyType")
    String? propertyType;
    @JsonKey(name: "propertyAgreementType")
    dynamic propertyAgreementType;
    @JsonKey(name: "sPropertyType")
    String? sPropertyType;
    @JsonKey(name: "propertyLandAreaL")
    int? propertyLandAreaL;
    @JsonKey(name: "propertyLandAreaTypeList")
    dynamic propertyLandAreaTypeList;
    @JsonKey(name: "propertyLandAreaW")
    int? propertyLandAreaW;
    @JsonKey(name: "propertyBuildingTypeLotplan")
    dynamic propertyBuildingTypeLotplan;
    @JsonKey(name: "propertyBuildingTypeLotplanName")
    dynamic propertyBuildingTypeLotplanName;
    @JsonKey(name: "propertyBuildingTypeYearBuilt")
    dynamic propertyBuildingTypeYearBuilt;
    @JsonKey(name: "propertyBuildingTypeYearBuiltName")
    dynamic propertyBuildingTypeYearBuiltName;
    @JsonKey(name: "propertyBuildingTypeYearBuiltList")
    List<PropertyBuildingTypeYearBuiltList>? propertyBuildingTypeYearBuiltList;
    @JsonKey(name: "propertyBuildingTypeZoning")
    String? propertyBuildingTypeZoning;
    @JsonKey(name: "propertyBuildingTypeZoningName")
    dynamic propertyBuildingTypeZoningName;
    @JsonKey(name: "propertySoldDate")
    dynamic propertySoldDate;
    @JsonKey(name: "propertySoldPrice")
    dynamic propertySoldPrice;
    @JsonKey(name: "createdDate")
    String? createdDate;
    @JsonKey(name: "isDeleted")
    dynamic isDeleted;
    @JsonKey(name: "deletedOn")
    dynamic deletedOn;
    @JsonKey(name: "isApproved")
    dynamic isApproved;
    @JsonKey(name: "isPropertyScrap")
    dynamic isPropertyScrap;
    @JsonKey(name: "isRemoveFromList")
    dynamic isRemoveFromList;
    @JsonKey(name: "isAddedByAffiliate")
    bool? isAddedByAffiliate;
    @JsonKey(name: "approvedOn")
    dynamic approvedOn;
    @JsonKey(name: "propertyPrice")
    dynamic propertyPrice;
    @JsonKey(name: "propertySellerFirmName")
    dynamic propertySellerFirmName;
    @JsonKey(name: "propertySellerPrincipalName")
    dynamic propertySellerPrincipalName;
    @JsonKey(name: "propertySellerAddress")
    dynamic propertySellerAddress;
    @JsonKey(name: "propertySellerEmail")
    dynamic propertySellerEmail;
    @JsonKey(name: "propertySellerPhone")
    dynamic propertySellerPhone;
    @JsonKey(name: "propertySellerFax")
    dynamic propertySellerFax;
    @JsonKey(name: "propertyBuyerFirmName")
    dynamic propertyBuyerFirmName;
    @JsonKey(name: "propertyBuyerPrincipalName")
    dynamic propertyBuyerPrincipalName;
    @JsonKey(name: "propertyBuyerAddress")
    dynamic propertyBuyerAddress;
    @JsonKey(name: "propertyBuyerEmail")
    dynamic propertyBuyerEmail;
    @JsonKey(name: "propertyBuyerPhone")
    dynamic propertyBuyerPhone;
    @JsonKey(name: "propertyBuyerFax")
    dynamic propertyBuyerFax;
    @JsonKey(name: "propertyFor")
    dynamic propertyFor;
    @JsonKey(name: "propertySellerConvyencor")
    dynamic propertySellerConvyencor;
    @JsonKey(name: "propertyBuyerConvyencor")
    dynamic propertyBuyerConvyencor;
    @JsonKey(name: "floorPlan_Byte")
    dynamic floorPlanByte;
    @JsonKey(name: "floorPlan_Path")
    dynamic floorPlanPath;
    @JsonKey(name: "listingDetails")
    List<ListingDetail>? listingDetails;
    @JsonKey(name: "propertyDocuments")
    List<dynamic>? propertyDocuments;
    @JsonKey(name: "agreements")
    List<dynamic>? agreements;
    @JsonKey(name: "saleAgreement")
    dynamic saleAgreement;
    @JsonKey(name: "managementAgreement")
    dynamic managementAgreement;
    @JsonKey(name: "tenantAgreement")
    dynamic tenantAgreement;
    @JsonKey(name: "verificationProofs")
    dynamic verificationProofs;
    @JsonKey(name: "propertyPictures")
    List<PropertyPicture>? propertyPictures;
    @JsonKey(name: "externalId1")
    dynamic externalId1;
    @JsonKey(name: "externalId2")
    dynamic externalId2;
    @JsonKey(name: "externalId3")
    dynamic externalId3;
    @JsonKey(name: "webRootPath")
    dynamic webRootPath;
    @JsonKey(name: "propertyLegalDetail")
    dynamic propertyLegalDetail;
    @JsonKey(name: "purpose")
    String? purpose;
    @JsonKey(name: "ePurpose")
    int? ePurpose;
    @JsonKey(name: "purposeName")
    dynamic purposeName;
    @JsonKey(name: "energyRating")
    dynamic energyRating;
    @JsonKey(name: "energyRatingName")
    dynamic energyRatingName;
    @JsonKey(name: "countEnsuites")
    int? countEnsuites;
    @JsonKey(name: "countToilets")
    int? countToilets;
    @JsonKey(name: "countGarageSpace")
    int? countGarageSpace;
    @JsonKey(name: "countLivingAreas")
    int? countLivingAreas;
    @JsonKey(name: "balcony")
    bool? balcony;
    @JsonKey(name: "deck")
    bool? deck;
    @JsonKey(name: "outdoorEntertainmentArea")
    bool? outdoorEntertainmentArea;
    @JsonKey(name: "remoteGarage")
    bool? remoteGarage;
    @JsonKey(name: "shed")
    bool? shed;
    @JsonKey(name: "swimmmingPoolInGround")
    bool? swimmmingPoolInGround;
    @JsonKey(name: "coutryard")
    bool? coutryard;
    @JsonKey(name: "fullyFenced")
    bool? fullyFenced;
    @JsonKey(name: "outsideSpa")
    bool? outsideSpa;
    @JsonKey(name: "secureParking")
    bool? secureParking;
    @JsonKey(name: "swimmmingPoolAboveGround")
    bool? swimmmingPoolAboveGround;
    @JsonKey(name: "tennisCourt")
    bool? tennisCourt;
    @JsonKey(name: "alarmSystem")
    bool? alarmSystem;
    @JsonKey(name: "builtInWardrobes")
    bool? builtInWardrobes;
    @JsonKey(name: "ductedVacuumSystem")
    bool? ductedVacuumSystem;
    @JsonKey(name: "gym")
    bool? gym;
    @JsonKey(name: "intercom")
    bool? intercom;
    @JsonKey(name: "rumpusRoom")
    bool? rumpusRoom;
    @JsonKey(name: "workshop")
    bool? workshop;
    @JsonKey(name: "broadbandInternetAvailable")
    bool? broadbandInternetAvailable;
    @JsonKey(name: "dishwasher")
    bool? dishwasher;
    @JsonKey(name: "floorboards")
    bool? floorboards;
    @JsonKey(name: "insideSpa")
    bool? insideSpa;
    @JsonKey(name: "payTVAccess")
    bool? payTvAccess;
    @JsonKey(name: "study")
    bool? study;
    @JsonKey(name: "airConditioning")
    bool? airConditioning;
    @JsonKey(name: "ductedHeating")
    bool? ductedHeating;
    @JsonKey(name: "gasHeating")
    bool? gasHeating;
    @JsonKey(name: "openFireplace")
    bool? openFireplace;
    @JsonKey(name: "splitSystemAirConditioning")
    bool? splitSystemAirConditioning;
    @JsonKey(name: "ductedCooling")
    bool? ductedCooling;
    @JsonKey(name: "evaporativeCooling")
    bool? evaporativeCooling;
    @JsonKey(name: "hydraulicHeating")
    bool? hydraulicHeating;
    @JsonKey(name: "reverseCycleAirConditioning")
    bool? reverseCycleAirConditioning;
    @JsonKey(name: "splitSystemHeating")
    bool? splitSystemHeating;
    @JsonKey(name: "greyWaterSystem")
    bool? greyWaterSystem;
    @JsonKey(name: "solarPanels")
    bool? solarPanels;
    @JsonKey(name: "solarHotWater")
    bool? solarHotWater;
    @JsonKey(name: "waterTank")
    bool? waterTank;
    @JsonKey(name: "showBasicDetails")
    bool? showBasicDetails;
    @JsonKey(name: "propertyArea")
    dynamic propertyArea;
    @JsonKey(name: "secondaryContacts")
    dynamic secondaryContacts;
    @JsonKey(name: "imagesNameArray")
    dynamic imagesNameArray;
    @JsonKey(name: "floorImagesNameArray")
    dynamic floorImagesNameArray;
    @JsonKey(name: "propertyNotes")
    List<dynamic>? propertyNotes;
    @JsonKey(name: "cmaReportPath")
    dynamic cmaReportPath;
    @JsonKey(name: "appraisalUniqueId")
    dynamic appraisalUniqueId;
    @JsonKey(name: "isDraft")
    dynamic isDraft;
    @JsonKey(name: "recommededPriceFrom")
    dynamic recommededPriceFrom;
    @JsonKey(name: "recommededPriceTo")
    dynamic recommededPriceTo;
    @JsonKey(name: "cmaReportPrice")
    dynamic cmaReportPrice;
    @JsonKey(name: "propertyStatusStage")
    int? propertyStatusStage;
    @JsonKey(name: "affiliateId")
    dynamic affiliateId;
    @JsonKey(name: "leadOnProgress")
    bool? leadOnProgress;
    @JsonKey(name: "uploadOnPM")
    bool? uploadOnPm;
    @JsonKey(name: "inspectionDue")
    dynamic inspectionDue;
    @JsonKey(name: "inspectionFrequency")
    dynamic inspectionFrequency;
    @JsonKey(name: "inspectionFrequencyType")
    dynamic inspectionFrequencyType;
    @JsonKey(name: "listAppraisalNotes")
    dynamic listAppraisalNotes;
    @JsonKey(name: "listAppraisalFollowup")
    dynamic listAppraisalFollowup;
    @JsonKey(name: "appraisalModel")
    dynamic appraisalModel;
    @JsonKey(name: "appraisalModellist")
    List<dynamic>? appraisalModellist;
    @JsonKey(name: "addUpdateOfferModel")
    dynamic addUpdateOfferModel;
    @JsonKey(name: "userType")
    dynamic userType;
    @JsonKey(name: "agentList")
    dynamic agentList;
    @JsonKey(name: "agentPropertiesModel")
    List<dynamic>? agentPropertiesModel;
    @JsonKey(name: "isWishlist")
    bool? isWishlist;
    @JsonKey(name: "hasSolicitorDetails")
    bool? hasSolicitorDetails;
    @JsonKey(name: "contactlistModel")
    List<ContactlistModel>? contactlistModel;
    @JsonKey(name: "contactHistoryList")
    List<dynamic>? contactHistoryList;
    @JsonKey(name: "hdnPrimaryContact")
    dynamic hdnPrimaryContact;
    @JsonKey(name: "primaryContactEmail")
    String? primaryContactEmail;
    @JsonKey(name: "propertyEnquiryCount")
    int? propertyEnquiryCount;
    @JsonKey(name: "agreementType")
    dynamic agreementType;
    @JsonKey(name: "propertyStatus")
    dynamic propertyStatus;
    @JsonKey(name: "isNew")
    int? isNew;
    @JsonKey(name: "isDualAgent")
    bool? isDualAgent;
    @JsonKey(name: "leadAgent")
    dynamic leadAgent;
    @JsonKey(name: "dualAgent")
    dynamic dualAgent;
    @JsonKey(name: "dualAgentName")
    String? dualAgentName;
    @JsonKey(name: "showText")
    dynamic showText;
    @JsonKey(name: "isShowPrice")
    bool? isShowPrice;
    @JsonKey(name: "isOpenHome")
    dynamic isOpenHome;
    @JsonKey(name: "startTime")
    dynamic startTime;
    @JsonKey(name: "endTime")
    dynamic endTime;
    @JsonKey(name: "openHomeuniqueId")
    dynamic openHomeuniqueId;
    @JsonKey(name: "eventDate")
    dynamic eventDate;
    @JsonKey(name: "openHomeListingModel")
    dynamic openHomeListingModel;
    @JsonKey(name: "addUpdatesPropertyOwnersModel")
    AddUpdatesPropertyOwnersModel? addUpdatesPropertyOwnersModel;
    @JsonKey(name: "addUpdatePropertyAttributesModel")
    AddUpdatePropertyAttributesModel? addUpdatePropertyAttributesModel;
    @JsonKey(name: "addUpdatePropertyAdditionalDetailsModel")
    AddUpdatePropertyAdditionalDetailsModel? addUpdatePropertyAdditionalDetailsModel;
    @JsonKey(name: "addUpdatePropertyLegalDetailsModel")
    AddUpdatePropertyLegalDetailsModel? addUpdatePropertyLegalDetailsModel;
    @JsonKey(name: "addUpdatePropertyDocumentModel")
    AddUpdatePropertyDocumentModel? addUpdatePropertyDocumentModel;
    @JsonKey(name: "addContactDetails")
    dynamic addContactDetails;
    @JsonKey(name: "tenantDetails")
    List<TenantDetail>? tenantDetails;
    @JsonKey(name: "tenantFolioDetails")
    TenantFolioDetails? tenantFolioDetails;
    @JsonKey(name: "rentPrice")
    dynamic rentPrice;
    @JsonKey(name: "rentTenure")
    dynamic rentTenure;
    @JsonKey(name: "reaUploadId")
    dynamic reaUploadId;
    @JsonKey(name: "domainUploadId")
    dynamic domainUploadId;
    @JsonKey(name: "listingStatus")
    dynamic listingStatus;
    @JsonKey(name: "isCommercial")
    bool? isCommercial;
    @JsonKey(name: "saveUpload")
    dynamic saveUpload;
    @JsonKey(name: "isWaitingForApproval")
    bool? isWaitingForApproval;
    @JsonKey(name: "waitingOperation")
    dynamic waitingOperation;
    @JsonKey(name: "waitingPortalsToUpload")
    dynamic waitingPortalsToUpload;
    @JsonKey(name: "isPrincipleLogged")
    bool? isPrincipleLogged;
    @JsonKey(name: "isAppraisalAdded")
    bool? isAppraisalAdded;
    @JsonKey(name: "isAgreementuploaded")
    bool? isAgreementuploaded;
    @JsonKey(name: "isCOSUploaded")
    bool? isCosUploaded;
    @JsonKey(name: "isListedProperty")
    bool? isListedProperty;
    @JsonKey(name: "saleLeaseAgreementUploaded")
    bool? saleLeaseAgreementUploaded;
    @JsonKey(name: "leasedSoldProperty")
    bool? leasedSoldProperty;
    @JsonKey(name: "isPropertyLost")
    bool? isPropertyLost;
    @JsonKey(name: "followUpDate")
    dynamic followUpDate;
    @JsonKey(name: "addContact")
    bool? addContact;
    @JsonKey(name: "updateHistories")
    List<UpdateHistory>? updateHistories;
    @JsonKey(name: "ownerFolioDetails")
    OwnerFolioDetails? ownerFolioDetails;
    @JsonKey(name: "redirectUrl")
    dynamic redirectUrl;

    PropertyDetailModel({
        this.viewType,
        this.propertyUniqueId,
        this.propertyImageSequence,
        this.propertyFloorImageSequence,
        this.uploadDocumentNameArray,
        this.propertyPics,
        this.contactsList,
        this.countofEnquiry,
        this.countofopenhome,
        this.countofsaleoffers,
        this.countofRental,
        this.openHomeList,
        this.uploadedImagesName,
        this.floorPics,
        this.uploadedFloorImagesName,
        this.pageMode,
        this.uploadedDocuments,
        this.uploadedImages,
        this.location,
        this.propertyHeading,
        this.propertyId,
        this.agencyId,
        this.agencyLogo,
        this.agencyBrandColor,
        this.agencyUniqueId,
        this.agencyName,
        this.address,
        this.agentId,
        this.agentPhotoPath,
        this.agentName,
        this.agentEmail,
        this.agentTitle,
        this.agentUniqueId,
        this.agentYearsOfExperience,
        this.agentLicenseExpiry,
        this.agentEmergencyContactName,
        this.agentAreaofWorking,
        this.agentAddress,
        this.agentContact,
        this.agentLicenseNumber,
        this.agentRegistraionExpiry,
        this.agentEmergencyContactDetails,
        this.agentDescription,
        this.agentResidentialAddress,
        this.appraisalEmailLog,
        this.userId,
        this.propertyContactId,
        this.isPropertyEnlist,
        this.propertyEnlistDate,
        this.propertyContactName,
        this.propertyContactUid,
        this.hastoDeletePictures,
        this.hastoDeleteFloorPictures,
        this.contactCompanyName,
        this.primaryContactName,
        this.isLeasedSold,
        this.suburb,
        this.ownerAccountFolio,
        this.propertyName,
        this.note,
        this.propertyGooglePlacesLocation,
        this.propertyGooglePlacesLocationLat,
        this.propertyGooglePlacesLocationLong,
        this.getFormatedAddress,
        this.state,
        this.postCode,
        this.propertySaleRental,
        this.propertyOccupiedTenanted,
        this.propertySaleRentalList,
        this.propertyOccupiedTenantedList,
        this.streetName,
        this.unitNumber,
        this.streetNumber,
        this.propertyDescription,
        this.propertyReferenceField,
        this.countBedrooms,
        this.countCarParking,
        this.countBathrooms,
        this.propertyType,
        this.propertyAgreementType,
        this.sPropertyType,
        this.propertyLandAreaL,
        this.propertyLandAreaTypeList,
        this.propertyLandAreaW,
        this.propertyBuildingTypeLotplan,
        this.propertyBuildingTypeLotplanName,
        this.propertyBuildingTypeYearBuilt,
        this.propertyBuildingTypeYearBuiltName,
        this.propertyBuildingTypeYearBuiltList,
        this.propertyBuildingTypeZoning,
        this.propertyBuildingTypeZoningName,
        this.propertySoldDate,
        this.propertySoldPrice,
        this.createdDate,
        this.isDeleted,
        this.deletedOn,
        this.isApproved,
        this.isPropertyScrap,
        this.isRemoveFromList,
        this.isAddedByAffiliate,
        this.approvedOn,
        this.propertyPrice,
        this.propertySellerFirmName,
        this.propertySellerPrincipalName,
        this.propertySellerAddress,
        this.propertySellerEmail,
        this.propertySellerPhone,
        this.propertySellerFax,
        this.propertyBuyerFirmName,
        this.propertyBuyerPrincipalName,
        this.propertyBuyerAddress,
        this.propertyBuyerEmail,
        this.propertyBuyerPhone,
        this.propertyBuyerFax,
        this.propertyFor,
        this.propertySellerConvyencor,
        this.propertyBuyerConvyencor,
        this.floorPlanByte,
        this.floorPlanPath,
        this.listingDetails,
        this.propertyDocuments,
        this.agreements,
        this.saleAgreement,
        this.managementAgreement,
        this.tenantAgreement,
        this.verificationProofs,
        this.propertyPictures,
        this.externalId1,
        this.externalId2,
        this.externalId3,
        this.webRootPath,
        this.propertyLegalDetail,
        this.purpose,
        this.ePurpose,
        this.purposeName,
        this.energyRating,
        this.energyRatingName,
        this.countEnsuites,
        this.countToilets,
        this.countGarageSpace,
        this.countLivingAreas,
        this.balcony,
        this.deck,
        this.outdoorEntertainmentArea,
        this.remoteGarage,
        this.shed,
        this.swimmmingPoolInGround,
        this.coutryard,
        this.fullyFenced,
        this.outsideSpa,
        this.secureParking,
        this.swimmmingPoolAboveGround,
        this.tennisCourt,
        this.alarmSystem,
        this.builtInWardrobes,
        this.ductedVacuumSystem,
        this.gym,
        this.intercom,
        this.rumpusRoom,
        this.workshop,
        this.broadbandInternetAvailable,
        this.dishwasher,
        this.floorboards,
        this.insideSpa,
        this.payTvAccess,
        this.study,
        this.airConditioning,
        this.ductedHeating,
        this.gasHeating,
        this.openFireplace,
        this.splitSystemAirConditioning,
        this.ductedCooling,
        this.evaporativeCooling,
        this.hydraulicHeating,
        this.reverseCycleAirConditioning,
        this.splitSystemHeating,
        this.greyWaterSystem,
        this.solarPanels,
        this.solarHotWater,
        this.waterTank,
        this.showBasicDetails,
        this.propertyArea,
        this.secondaryContacts,
        this.imagesNameArray,
        this.floorImagesNameArray,
        this.propertyNotes,
        this.cmaReportPath,
        this.appraisalUniqueId,
        this.isDraft,
        this.recommededPriceFrom,
        this.recommededPriceTo,
        this.cmaReportPrice,
        this.propertyStatusStage,
        this.affiliateId,
        this.leadOnProgress,
        this.uploadOnPm,
        this.inspectionDue,
        this.inspectionFrequency,
        this.inspectionFrequencyType,
        this.listAppraisalNotes,
        this.listAppraisalFollowup,
        this.appraisalModel,
        this.appraisalModellist,
        this.addUpdateOfferModel,
        this.userType,
        this.agentList,
        this.agentPropertiesModel,
        this.isWishlist,
        this.hasSolicitorDetails,
        this.contactlistModel,
        this.contactHistoryList,
        this.hdnPrimaryContact,
        this.primaryContactEmail,
        this.propertyEnquiryCount,
        this.agreementType,
        this.propertyStatus,
        this.isNew,
        this.isDualAgent,
        this.leadAgent,
        this.dualAgent,
        this.dualAgentName,
        this.showText,
        this.isShowPrice,
        this.isOpenHome,
        this.startTime,
        this.endTime,
        this.openHomeuniqueId,
        this.eventDate,
        this.openHomeListingModel,
        this.addUpdatesPropertyOwnersModel,
        this.addUpdatePropertyAttributesModel,
        this.addUpdatePropertyAdditionalDetailsModel,
        this.addUpdatePropertyLegalDetailsModel,
        this.addUpdatePropertyDocumentModel,
        this.addContactDetails,
        this.tenantDetails,
        this.tenantFolioDetails,
        this.rentPrice,
        this.rentTenure,
        this.reaUploadId,
        this.domainUploadId,
        this.listingStatus,
        this.isCommercial,
        this.saveUpload,
        this.isWaitingForApproval,
        this.waitingOperation,
        this.waitingPortalsToUpload,
        this.isPrincipleLogged,
        this.isAppraisalAdded,
        this.isAgreementuploaded,
        this.isCosUploaded,
        this.isListedProperty,
        this.saleLeaseAgreementUploaded,
        this.leasedSoldProperty,
        this.isPropertyLost,
        this.followUpDate,
        this.addContact,
        this.updateHistories,
        this.ownerFolioDetails,
        this.redirectUrl,
    });

    factory PropertyDetailModel.fromJson(Map<String, dynamic> json) => _$PropertyDetailModelFromJson(json);

    Map<String, dynamic> toJson() => _$PropertyDetailModelToJson(this);
}

@JsonSerializable()
class AddUpdatePropertyAdditionalDetailsModel {
    @JsonKey(name: "propertyImageSequence")
    dynamic propertyImageSequence;
    @JsonKey(name: "propertyFloorImageSequence")
    dynamic propertyFloorImageSequence;
    @JsonKey(name: "propertyUniqueID")
    String? propertyUniqueId;
    @JsonKey(name: "propertyHeading")
    String? propertyHeading;
    @JsonKey(name: "propertyBuildingTypeZoning")
    String? propertyBuildingTypeZoning;
    @JsonKey(name: "propertyLandAreaL")
    int? propertyLandAreaL;
    @JsonKey(name: "propertyLandAreaW")
    int? propertyLandAreaW;
    @JsonKey(name: "propertyLandAreaTypeList")
    dynamic propertyLandAreaTypeList;
    @JsonKey(name: "propertyDescription")
    String? propertyDescription;
    @JsonKey(name: "propertyPics")
    List<String>? propertyPics;
    @JsonKey(name: "floorPics")
    List<String>? floorPics;
    @JsonKey(name: "hastoDeletePictures")
    dynamic hastoDeletePictures;
    @JsonKey(name: "hastoDeleteFloorPictures")
    dynamic hastoDeleteFloorPictures;
    @JsonKey(name: "uploadedImages")
    dynamic uploadedImages;
    @JsonKey(name: "imagesNameArray")
    dynamic imagesNameArray;
    @JsonKey(name: "floorImagesNameArray")
    dynamic floorImagesNameArray;
    @JsonKey(name: "uploadedFloorImagesName")
    dynamic uploadedFloorImagesName;
    @JsonKey(name: "uploadedImagesName")
    dynamic uploadedImagesName;

    AddUpdatePropertyAdditionalDetailsModel({
        this.propertyImageSequence,
        this.propertyFloorImageSequence,
        this.propertyUniqueId,
        this.propertyHeading,
        this.propertyBuildingTypeZoning,
        this.propertyLandAreaL,
        this.propertyLandAreaW,
        this.propertyLandAreaTypeList,
        this.propertyDescription,
        this.propertyPics,
        this.floorPics,
        this.hastoDeletePictures,
        this.hastoDeleteFloorPictures,
        this.uploadedImages,
        this.imagesNameArray,
        this.floorImagesNameArray,
        this.uploadedFloorImagesName,
        this.uploadedImagesName,
    });

    factory AddUpdatePropertyAdditionalDetailsModel.fromJson(Map<String, dynamic> json) => _$AddUpdatePropertyAdditionalDetailsModelFromJson(json);

    Map<String, dynamic> toJson() => _$AddUpdatePropertyAdditionalDetailsModelToJson(this);
}

@JsonSerializable()
class AddUpdatePropertyAttributesModel {
    @JsonKey(name: "propertyUniqueID")
    String? propertyUniqueId;
    @JsonKey(name: "countBedrooms")
    dynamic countBedrooms;
    @JsonKey(name: "countCarParking")
    int? countCarParking;
    @JsonKey(name: "countBathrooms")
    dynamic countBathrooms;
    @JsonKey(name: "countEnsuites")
    int? countEnsuites;
    @JsonKey(name: "countToilets")
    int? countToilets;
    @JsonKey(name: "countGarageSpace")
    int? countGarageSpace;
    @JsonKey(name: "countLivingAreas")
    int? countLivingAreas;
    @JsonKey(name: "balcony")
    bool? balcony;
    @JsonKey(name: "deck")
    bool? deck;
    @JsonKey(name: "outdoorEntertainmentArea")
    bool? outdoorEntertainmentArea;
    @JsonKey(name: "remoteGarage")
    bool? remoteGarage;
    @JsonKey(name: "shed")
    bool? shed;
    @JsonKey(name: "swimmmingPoolInGround")
    bool? swimmmingPoolInGround;
    @JsonKey(name: "coutryard")
    bool? coutryard;
    @JsonKey(name: "fullyFenced")
    bool? fullyFenced;
    @JsonKey(name: "outsideSpa")
    bool? outsideSpa;
    @JsonKey(name: "secureParking")
    bool? secureParking;
    @JsonKey(name: "swimmmingPoolAboveGround")
    bool? swimmmingPoolAboveGround;
    @JsonKey(name: "tennisCourt")
    bool? tennisCourt;
    @JsonKey(name: "alarmSystem")
    bool? alarmSystem;
    @JsonKey(name: "builtInWardrobes")
    bool? builtInWardrobes;
    @JsonKey(name: "ductedVacuumSystem")
    bool? ductedVacuumSystem;
    @JsonKey(name: "gym")
    bool? gym;
    @JsonKey(name: "intercom")
    bool? intercom;
    @JsonKey(name: "rumpusRoom")
    bool? rumpusRoom;
    @JsonKey(name: "workshop")
    bool? workshop;
    @JsonKey(name: "broadbandInternetAvailable")
    bool? broadbandInternetAvailable;
    @JsonKey(name: "dishwasher")
    bool? dishwasher;
    @JsonKey(name: "floorboards")
    bool? floorboards;
    @JsonKey(name: "insideSpa")
    bool? insideSpa;
    @JsonKey(name: "payTVAccess")
    bool? payTvAccess;
    @JsonKey(name: "study")
    bool? study;
    @JsonKey(name: "airConditioning")
    bool? airConditioning;
    @JsonKey(name: "ductedHeating")
    bool? ductedHeating;
    @JsonKey(name: "gasHeating")
    bool? gasHeating;
    @JsonKey(name: "openFireplace")
    bool? openFireplace;
    @JsonKey(name: "splitSystemAirConditioning")
    bool? splitSystemAirConditioning;
    @JsonKey(name: "ductedCooling")
    bool? ductedCooling;
    @JsonKey(name: "evaporativeCooling")
    bool? evaporativeCooling;
    @JsonKey(name: "hydraulicHeating")
    bool? hydraulicHeating;
    @JsonKey(name: "reverseCycleAirConditioning")
    bool? reverseCycleAirConditioning;
    @JsonKey(name: "splitSystemHeating")
    bool? splitSystemHeating;
    @JsonKey(name: "greyWaterSystem")
    bool? greyWaterSystem;
    @JsonKey(name: "solarPanels")
    bool? solarPanels;
    @JsonKey(name: "solarHotWater")
    bool? solarHotWater;
    @JsonKey(name: "waterTank")
    bool? waterTank;
    @JsonKey(name: "showBasicDetails")
    bool? showBasicDetails;

    AddUpdatePropertyAttributesModel({
        this.propertyUniqueId,
        this.countBedrooms,
        this.countCarParking,
        this.countBathrooms,
        this.countEnsuites,
        this.countToilets,
        this.countGarageSpace,
        this.countLivingAreas,
        this.balcony,
        this.deck,
        this.outdoorEntertainmentArea,
        this.remoteGarage,
        this.shed,
        this.swimmmingPoolInGround,
        this.coutryard,
        this.fullyFenced,
        this.outsideSpa,
        this.secureParking,
        this.swimmmingPoolAboveGround,
        this.tennisCourt,
        this.alarmSystem,
        this.builtInWardrobes,
        this.ductedVacuumSystem,
        this.gym,
        this.intercom,
        this.rumpusRoom,
        this.workshop,
        this.broadbandInternetAvailable,
        this.dishwasher,
        this.floorboards,
        this.insideSpa,
        this.payTvAccess,
        this.study,
        this.airConditioning,
        this.ductedHeating,
        this.gasHeating,
        this.openFireplace,
        this.splitSystemAirConditioning,
        this.ductedCooling,
        this.evaporativeCooling,
        this.hydraulicHeating,
        this.reverseCycleAirConditioning,
        this.splitSystemHeating,
        this.greyWaterSystem,
        this.solarPanels,
        this.solarHotWater,
        this.waterTank,
        this.showBasicDetails,
    });

    factory AddUpdatePropertyAttributesModel.fromJson(Map<String, dynamic> json) => _$AddUpdatePropertyAttributesModelFromJson(json);

    Map<String, dynamic> toJson() => _$AddUpdatePropertyAttributesModelToJson(this);
}

@JsonSerializable()
class AddUpdatePropertyDocumentModel {
    @JsonKey(name: "propertyId")
    int? propertyId;
    @JsonKey(name: "propertyDocuments")
    List<dynamic>? propertyDocuments;

    AddUpdatePropertyDocumentModel({
        this.propertyId,
        this.propertyDocuments,
    });

    factory AddUpdatePropertyDocumentModel.fromJson(Map<String, dynamic> json) => _$AddUpdatePropertyDocumentModelFromJson(json);

    Map<String, dynamic> toJson() => _$AddUpdatePropertyDocumentModelToJson(this);
}

@JsonSerializable()
class AddUpdatePropertyLegalDetailsModel {
    @JsonKey(name: "propertyUniqueID")
    String? propertyUniqueId;
    @JsonKey(name: "propertySellerFirmName")
    dynamic propertySellerFirmName;
    @JsonKey(name: "propertySellerPrincipalName")
    dynamic propertySellerPrincipalName;
    @JsonKey(name: "propertySellerEmail")
    dynamic propertySellerEmail;
    @JsonKey(name: "propertySellerPhone")
    dynamic propertySellerPhone;
    @JsonKey(name: "propertySellerFax")
    dynamic propertySellerFax;
    @JsonKey(name: "propertySellerAddress")
    dynamic propertySellerAddress;
    @JsonKey(name: "propertyBuyerFirmName")
    dynamic propertyBuyerFirmName;
    @JsonKey(name: "propertyBuyerPrincipalName")
    dynamic propertyBuyerPrincipalName;
    @JsonKey(name: "propertyBuyerEmail")
    dynamic propertyBuyerEmail;
    @JsonKey(name: "propertyBuyerPhone")
    dynamic propertyBuyerPhone;
    @JsonKey(name: "propertyBuyerFax")
    dynamic propertyBuyerFax;
    @JsonKey(name: "propertyBuyerAddress")
    dynamic propertyBuyerAddress;
    @JsonKey(name: "propertySoldDate")
    dynamic propertySoldDate;
    @JsonKey(name: "propertySoldPrice")
    dynamic propertySoldPrice;

    AddUpdatePropertyLegalDetailsModel({
        this.propertyUniqueId,
        this.propertySellerFirmName,
        this.propertySellerPrincipalName,
        this.propertySellerEmail,
        this.propertySellerPhone,
        this.propertySellerFax,
        this.propertySellerAddress,
        this.propertyBuyerFirmName,
        this.propertyBuyerPrincipalName,
        this.propertyBuyerEmail,
        this.propertyBuyerPhone,
        this.propertyBuyerFax,
        this.propertyBuyerAddress,
        this.propertySoldDate,
        this.propertySoldPrice,
    });

    factory AddUpdatePropertyLegalDetailsModel.fromJson(Map<String, dynamic> json) => _$AddUpdatePropertyLegalDetailsModelFromJson(json);

    Map<String, dynamic> toJson() => _$AddUpdatePropertyLegalDetailsModelToJson(this);
}

@JsonSerializable()
class AddUpdatesPropertyOwnersModel {
    @JsonKey(name: "propertyUniqueID")
    String? propertyUniqueId;
    @JsonKey(name: "propertyContactName")
    dynamic propertyContactName;
    @JsonKey(name: "hdnPrimaryContact")
    dynamic hdnPrimaryContact;
    @JsonKey(name: "contactlistModel")
    List<dynamic>? contactlistModel;
    @JsonKey(name: "contactlistModelView")
    List<ContactlistModelView>? contactlistModelView;
    @JsonKey(name: "contactHistoryList")
    List<dynamic>? contactHistoryList;
    @JsonKey(name: "isUpdateOwner")
    bool? isUpdateOwner;
    @JsonKey(name: "ismanageOwnership")
    bool? ismanageOwnership;

    AddUpdatesPropertyOwnersModel({
        this.propertyUniqueId,
        this.propertyContactName,
        this.hdnPrimaryContact,
        this.contactlistModel,
        this.contactlistModelView,
        this.contactHistoryList,
        this.isUpdateOwner,
        this.ismanageOwnership,
    });

    factory AddUpdatesPropertyOwnersModel.fromJson(Map<String, dynamic> json) => _$AddUpdatesPropertyOwnersModelFromJson(json);

    Map<String, dynamic> toJson() => _$AddUpdatesPropertyOwnersModelToJson(this);
}

@JsonSerializable()
class ContactlistModelView {
    @JsonKey(name: "ownerId")
    int? ownerId;
    @JsonKey(name: "contactId")
    int? contactId;
    @JsonKey(name: "contactUId")
    dynamic contactUId;
    @JsonKey(name: "isPrimary")
    bool? isPrimary;
    @JsonKey(name: "contactName")
    String? contactName;
    @JsonKey(name: "contactEmail")
    String? contactEmail;
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "firstName")
    dynamic firstName;
    @JsonKey(name: "lastName")
    dynamic lastName;
    @JsonKey(name: "phone")
    String? phone;
    @JsonKey(name: "fromDate")
    String? fromDate;
    @JsonKey(name: "toDate")
    dynamic toDate;
    @JsonKey(name: "title")
    dynamic title;
    @JsonKey(name: "contactType")
    dynamic contactType;
    @JsonKey(name: "address")
    dynamic address;
    @JsonKey(name: "isVerificationLinkSend")
    bool? isVerificationLinkSend;
    @JsonKey(name: "abn")
    dynamic abn;
    @JsonKey(name: "companyName")
    dynamic companyName;
    @JsonKey(name: "typeIAM")
    String? typeIam;
    @JsonKey(name: "verificationProofs")
    dynamic verificationProofs;

    ContactlistModelView({
        this.ownerId,
        this.contactId,
        this.contactUId,
        this.isPrimary,
        this.contactName,
        this.contactEmail,
        this.name,
        this.firstName,
        this.lastName,
        this.phone,
        this.fromDate,
        this.toDate,
        this.title,
        this.contactType,
        this.address,
        this.isVerificationLinkSend,
        this.abn,
        this.companyName,
        this.typeIam,
        this.verificationProofs,
    });

    factory ContactlistModelView.fromJson(Map<String, dynamic> json) => _$ContactlistModelViewFromJson(json);

    Map<String, dynamic> toJson() => _$ContactlistModelViewToJson(this);
}

@JsonSerializable()
class ContactlistModel {
    @JsonKey(name: "ownerId")
    int? ownerId;
    @JsonKey(name: "contactId")
    int? contactId;
    @JsonKey(name: "contactUId")
    String? contactUId;
    @JsonKey(name: "isPrimary")
    bool? isPrimary;
    @JsonKey(name: "contactName")
    String? contactName;
    @JsonKey(name: "contactEmail")
    String? contactEmail;
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "firstName")
    String? firstName;
    @JsonKey(name: "lastName")
    String? lastName;
    @JsonKey(name: "phone")
    String? phone;
    @JsonKey(name: "fromDate")
    dynamic fromDate;
    @JsonKey(name: "toDate")
    dynamic toDate;
    @JsonKey(name: "title")
    int? title;
    @JsonKey(name: "contactType")
    int? contactType;
    @JsonKey(name: "address")
    dynamic address;
    @JsonKey(name: "isVerificationLinkSend")
    bool? isVerificationLinkSend;
    @JsonKey(name: "abn")
    dynamic abn;
    @JsonKey(name: "companyName")
    dynamic companyName;
    @JsonKey(name: "typeIAM")
    String? typeIam;
    @JsonKey(name: "verificationProofs")
    dynamic verificationProofs;

    ContactlistModel({
        this.ownerId,
        this.contactId,
        this.contactUId,
        this.isPrimary,
        this.contactName,
        this.contactEmail,
        this.name,
        this.firstName,
        this.lastName,
        this.phone,
        this.fromDate,
        this.toDate,
        this.title,
        this.contactType,
        this.address,
        this.isVerificationLinkSend,
        this.abn,
        this.companyName,
        this.typeIam,
        this.verificationProofs,
    });

    factory ContactlistModel.fromJson(Map<String, dynamic> json) => _$ContactlistModelFromJson(json);

    Map<String, dynamic> toJson() => _$ContactlistModelToJson(this);
}

@JsonSerializable()
class ContactsList {
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "uniqueID")
    String? uniqueId;

    ContactsList({
        this.name,
        this.uniqueId,
    });

    factory ContactsList.fromJson(Map<String, dynamic> json) => _$ContactsListFromJson(json);

    Map<String, dynamic> toJson() => _$ContactsListToJson(this);
}

@JsonSerializable()
class ListingDetail {
    @JsonKey(name: "listingId")
    int? listingId;
    @JsonKey(name: "propertySaleRental")
    int? propertySaleRental;
    @JsonKey(name: "propertyId")
    int? propertyId;
    @JsonKey(name: "reaUploadId")
    dynamic reaUploadId;
    @JsonKey(name: "domainUploadId")
    dynamic domainUploadId;
    @JsonKey(name: "listingStatus")
    dynamic listingStatus;
    @JsonKey(name: "propertyPrice")
    int? propertyPrice;
    @JsonKey(name: "isCommercial")
    bool? isCommercial;
    @JsonKey(name: "propertyAgreementType")
    dynamic propertyAgreementType;
    @JsonKey(name: "isNew")
    int? isNew;
    @JsonKey(name: "dualAgent")
    dynamic dualAgent;
    @JsonKey(name: "isDualAgent")
    bool? isDualAgent;
    @JsonKey(name: "isShowPrice")
    bool? isShowPrice;
    @JsonKey(name: "showText")
    dynamic showText;
    @JsonKey(name: "address")
    String? address;
    @JsonKey(name: "propertyUId")
    String? propertyUId;
    @JsonKey(name: "agentName")
    String? agentName;
    @JsonKey(name: "dualAgentName")
    String? dualAgentName;
    @JsonKey(name: "sListingStatus")
    String? sListingStatus;
    @JsonKey(name: "sAgreementType")
    String? sAgreementType;
    @JsonKey(name: "rent")
    dynamic rent;
    @JsonKey(name: "dateAvailable")
    dynamic dateAvailable;
    @JsonKey(name: "listingAgentId")
    int? listingAgentId;
    @JsonKey(name: "listingAgentName")
    String? listingAgentName;
    @JsonKey(name: "enquiryCount")
    int? enquiryCount;
    @JsonKey(name: "createdAt")
    String? createdAt;
    @JsonKey(name: "reaUploadedDate")
    dynamic reaUploadedDate;
    @JsonKey(name: "domainUploadedDate")
    dynamic domainUploadedDate;
    @JsonKey(name: "heading")
    String? heading;
    @JsonKey(name: "propertyPic")
    String? propertyPic;

    ListingDetail({
        this.listingId,
        this.propertySaleRental,
        this.propertyId,
        this.reaUploadId,
        this.domainUploadId,
        this.listingStatus,
        this.propertyPrice,
        this.isCommercial,
        this.propertyAgreementType,
        this.isNew,
        this.dualAgent,
        this.isDualAgent,
        this.isShowPrice,
        this.showText,
        this.address,
        this.propertyUId,
        this.agentName,
        this.dualAgentName,
        this.sListingStatus,
        this.sAgreementType,
        this.rent,
        this.dateAvailable,
        this.listingAgentId,
        this.listingAgentName,
        this.enquiryCount,
        this.createdAt,
        this.reaUploadedDate,
        this.domainUploadedDate,
        this.heading,
        this.propertyPic,
    });

    factory ListingDetail.fromJson(Map<String, dynamic> json) => _$ListingDetailFromJson(json);

    Map<String, dynamic> toJson() => _$ListingDetailToJson(this);
}

@JsonSerializable()
class OwnerFolioDetails {
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "ownerAccountFolio")
    String? ownerAccountFolio;
    @JsonKey(name: "isActive")
    bool? isActive;
    @JsonKey(name: "propertyId")
    int? propertyId;
    @JsonKey(name: "withholdAmount")
    int? withholdAmount;
    @JsonKey(name: "withholdReason")
    dynamic withholdReason;
    @JsonKey(name: "disbursementIntervel")
    int? disbursementIntervel;
    @JsonKey(name: "totalMoneyLimit")
    dynamic totalMoneyLimit;
    @JsonKey(name: "balanceLimit")
    dynamic balanceLimit;
    @JsonKey(name: "lastPaymentDate")
    dynamic lastPaymentDate;
    @JsonKey(name: "nextDisbursementDate")
    dynamic nextDisbursementDate;
    @JsonKey(name: "clientAccess")
    bool? clientAccess;
    @JsonKey(name: "balance")
    int? balance;
    @JsonKey(name: "fees")
    List<dynamic>? fees;
    @JsonKey(name: "paymentMethods")
    List<dynamic>? paymentMethods;

    OwnerFolioDetails({
        this.id,
        this.ownerAccountFolio,
        this.isActive,
        this.propertyId,
        this.withholdAmount,
        this.withholdReason,
        this.disbursementIntervel,
        this.totalMoneyLimit,
        this.balanceLimit,
        this.lastPaymentDate,
        this.nextDisbursementDate,
        this.clientAccess,
        this.balance,
        this.fees,
        this.paymentMethods,
    });

    factory OwnerFolioDetails.fromJson(Map<String, dynamic> json) => _$OwnerFolioDetailsFromJson(json);

    Map<String, dynamic> toJson() => _$OwnerFolioDetailsToJson(this);
}

@JsonSerializable()
class PropertyBuildingTypeYearBuiltList {
    @JsonKey(name: "disabled")
    bool? disabled;
    @JsonKey(name: "group")
    dynamic group;
    @JsonKey(name: "selected")
    bool? selected;
    @JsonKey(name: "text")
    String? text;
    @JsonKey(name: "value")
    String? value;

    PropertyBuildingTypeYearBuiltList({
        this.disabled,
        this.group,
        this.selected,
        this.text,
        this.value,
    });

    factory PropertyBuildingTypeYearBuiltList.fromJson(Map<String, dynamic> json) => _$PropertyBuildingTypeYearBuiltListFromJson(json);

    Map<String, dynamic> toJson() => _$PropertyBuildingTypeYearBuiltListToJson(this);
}

@JsonSerializable()
class PropertyPicture {
    @JsonKey(name: "picId")
    int? picId;
    @JsonKey(name: "picPath")
    String? picPath;
    @JsonKey(name: "createdDate")
    String? createdDate;
    @JsonKey(name: "propertyId")
    int? propertyId;
    @JsonKey(name: "isEnabled")
    dynamic isEnabled;
    @JsonKey(name: "picName")
    dynamic picName;
    @JsonKey(name: "picDesc")
    dynamic picDesc;
    @JsonKey(name: "picAltText")
    dynamic picAltText;
    @JsonKey(name: "isDeleted")
    dynamic isDeleted;
    @JsonKey(name: "deletedOn")
    dynamic deletedOn;
    @JsonKey(name: "type")
    int? type;
    @JsonKey(name: "picNum")
    int? picNum;

    PropertyPicture({
        this.picId,
        this.picPath,
        this.createdDate,
        this.propertyId,
        this.isEnabled,
        this.picName,
        this.picDesc,
        this.picAltText,
        this.isDeleted,
        this.deletedOn,
        this.type,
        this.picNum,
    });

    factory PropertyPicture.fromJson(Map<String, dynamic> json) => _$PropertyPictureFromJson(json);

    Map<String, dynamic> toJson() => _$PropertyPictureToJson(this);
}

@JsonSerializable()
class TenantDetail {
    @JsonKey(name: "tenantId")
    int? tenantId;
    @JsonKey(name: "primaryTenant")
    bool? primaryTenant;
    @JsonKey(name: "userId")
    int? userId;
    @JsonKey(name: "applicantUniqueId")
    dynamic applicantUniqueId;
    @JsonKey(name: "rentApplicationId")
    dynamic rentApplicationId;
    @JsonKey(name: "propertyId")
    int? propertyId;
    @JsonKey(name: "contactId")
    int? contactId;
    @JsonKey(name: "isUserverified")
    bool? isUserverified;
    @JsonKey(name: "contactUId")
    String? contactUId;
    @JsonKey(name: "tenantFname")
    String? tenantFname;
    @JsonKey(name: "tenantLname")
    String? tenantLname;
    @JsonKey(name: "tenantAddress")
    dynamic tenantAddress;
    @JsonKey(name: "tenantMobile")
    String? tenantMobile;
    @JsonKey(name: "tenantEmail")
    String? tenantEmail;
    @JsonKey(name: "getFullName")
    String? getFullName;
    @JsonKey(name: "viewType")
    int? viewType;
    @JsonKey(name: "agencyId")
    dynamic agencyId;
    @JsonKey(name: "agentId")
    dynamic agentId;
    @JsonKey(name: "tenantFolioDetails")
    TenantFolioDetails? tenantFolioDetails;

    TenantDetail({
        this.tenantId,
        this.primaryTenant,
        this.userId,
        this.applicantUniqueId,
        this.rentApplicationId,
        this.propertyId,
        this.contactId,
        this.isUserverified,
        this.contactUId,
        this.tenantFname,
        this.tenantLname,
        this.tenantAddress,
        this.tenantMobile,
        this.tenantEmail,
        this.getFullName,
        this.viewType,
        this.agencyId,
        this.agentId,
        this.tenantFolioDetails,
    });

    factory TenantDetail.fromJson(Map<String, dynamic> json) => _$TenantDetailFromJson(json);

    Map<String, dynamic> toJson() => _$TenantDetailToJson(this);
}

@JsonSerializable()
class TenantFolioDetails {
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "propertyAddress")
    dynamic propertyAddress;
    @JsonKey(name: "propertyId")
    int? propertyId;
    @JsonKey(name: "tenantChecksum")
    int? tenantChecksum;
    @JsonKey(name: "rent")
    int? rent;
    @JsonKey(name: "period")
    dynamic period;
    @JsonKey(name: "rentIncludeTax")
    bool? rentIncludeTax;
    @JsonKey(name: "bondAmount")
    int? bondAmount;
    @JsonKey(name: "bondInTrust")
    int? bondInTrust;
    @JsonKey(name: "moveIn")
    dynamic moveIn;
    @JsonKey(name: "moveOut")
    dynamic moveOut;
    @JsonKey(name: "agreementStart")
    dynamic agreementStart;
    @JsonKey(name: "agreementEnd")
    dynamic agreementEnd;
    @JsonKey(name: "datePaidFrom")
    dynamic datePaidFrom;
    @JsonKey(name: "datePaidTo")
    dynamic datePaidTo;
    @JsonKey(name: "deposited")
    int? deposited;
    @JsonKey(name: "balance")
    int? balance;
    @JsonKey(name: "agreementTerm")
    dynamic agreementTerm;
    @JsonKey(name: "isExtenant")
    bool? isExtenant;
    @JsonKey(name: "vacatedDate")
    dynamic vacatedDate;
    @JsonKey(name: "rentReviewFrequency")
    dynamic rentReviewFrequency;
    @JsonKey(name: "isCommercial")
    bool? isCommercial;
    @JsonKey(name: "abn")
    dynamic abn;
    @JsonKey(name: "tenantAccountFolio")
    String? tenantAccountFolio;
    @JsonKey(name: "tenancyType")
    dynamic tenancyType;
    @JsonKey(name: "rentInvoice")
    bool? rentInvoice;
    @JsonKey(name: "invoiceDaysInAdvance")
    dynamic invoiceDaysInAdvance;
    @JsonKey(name: "partPayment")
    int? partPayment;
    @JsonKey(name: "newTenant")
    dynamic newTenant;
    @JsonKey(name: "nextRentDate")
    dynamic nextRentDate;
    @JsonKey(name: "nextRent")
    dynamic nextRent;
    @JsonKey(name: "nextRentNoticePeriod")
    dynamic nextRentNoticePeriod;
    @JsonKey(name: "getRentToVacate")
    dynamic getRentToVacate;
    @JsonKey(name: "paymentMethods")
    List<dynamic>? paymentMethods;
    @JsonKey(name: "nextPeriodList")
    dynamic nextPeriodList;
    @JsonKey(name: "getDailyRent")
    dynamic getDailyRent;

    TenantFolioDetails({
        this.id,
        this.propertyAddress,
        this.propertyId,
        this.tenantChecksum,
        this.rent,
        this.period,
        this.rentIncludeTax,
        this.bondAmount,
        this.bondInTrust,
        this.moveIn,
        this.moveOut,
        this.agreementStart,
        this.agreementEnd,
        this.datePaidFrom,
        this.datePaidTo,
        this.deposited,
        this.balance,
        this.agreementTerm,
        this.isExtenant,
        this.vacatedDate,
        this.rentReviewFrequency,
        this.isCommercial,
        this.abn,
        this.tenantAccountFolio,
        this.tenancyType,
        this.rentInvoice,
        this.invoiceDaysInAdvance,
        this.partPayment,
        this.newTenant,
        this.nextRentDate,
        this.nextRent,
        this.nextRentNoticePeriod,
        this.getRentToVacate,
        this.paymentMethods,
        this.nextPeriodList,
        this.getDailyRent,
    });

    factory TenantFolioDetails.fromJson(Map<String, dynamic> json) => _$TenantFolioDetailsFromJson(json);

    Map<String, dynamic> toJson() => _$TenantFolioDetailsToJson(this);
}

@JsonSerializable()
class UpdateHistory {
    @JsonKey(name: "userId")
    int? userId;
    @JsonKey(name: "createdOn")
    String? createdOn;
    @JsonKey(name: "recordType")
    int? recordType;
    @JsonKey(name: "referenceId")
    int? referenceId;
    @JsonKey(name: "fieldModified")
    String? fieldModified;
    @JsonKey(name: "beforeValue")
    String? beforeValue;
    @JsonKey(name: "afterValue")
    String? afterValue;
    @JsonKey(name: "displayName")
    String? displayName;
    @JsonKey(name: "dataTypes")
    dynamic dataTypes;
    @JsonKey(name: "userName")
    String? userName;

    UpdateHistory({
        this.userId,
        this.createdOn,
        this.recordType,
        this.referenceId,
        this.fieldModified,
        this.beforeValue,
        this.afterValue,
        this.displayName,
        this.dataTypes,
        this.userName,
    });

    factory UpdateHistory.fromJson(Map<String, dynamic> json) => _$UpdateHistoryFromJson(json);

    Map<String, dynamic> toJson() => _$UpdateHistoryToJson(this);
}

// class PropertyDetailModel {
//     @JsonKey(name: "viewType")
//     int? viewType;
//     @JsonKey(name: "propertyUniqueID")
//     String? propertyUniqueId;
//     @JsonKey(name: "propertyImageSequence")
//     dynamic propertyImageSequence;
//     @JsonKey(name: "propertyFloorImageSequence")
//     dynamic propertyFloorImageSequence;
//     @JsonKey(name: "uploadDocumentNameArray")
//     dynamic uploadDocumentNameArray;
//     @JsonKey(name: "propertyPics")
//     List<String>? propertyPics;
//     @JsonKey(name: "contactsList")
//     List<ContactsList>? contactsList;
//     @JsonKey(name: "countofEnquiry")
//     int? countofEnquiry;
//     @JsonKey(name: "countofopenhome")
//     int? countofopenhome;
//     @JsonKey(name: "countofsaleoffers")
//     int? countofsaleoffers;
//     @JsonKey(name: "countofRental")
//     int? countofRental;
//     @JsonKey(name: "openHomeList")
//     List<dynamic>? openHomeList;
//     @JsonKey(name: "uploadedImagesName")
//     dynamic uploadedImagesName;
//     @JsonKey(name: "floorPics")
//     List<String>? floorPics;
//     @JsonKey(name: "uploadedFloorImagesName")
//     dynamic uploadedFloorImagesName;
//     @JsonKey(name: "pageMode")
//     int? pageMode;
//     @JsonKey(name: "uploadedDocuments")
//     dynamic uploadedDocuments;
//     @JsonKey(name: "uploadedImages")
//     dynamic uploadedImages;
//     @JsonKey(name: "location")
//     dynamic location;
//     @JsonKey(name: "propertyHeading")
//     String? propertyHeading;
//     @JsonKey(name: "propertyId")
//     int? propertyId;
//     @JsonKey(name: "agencyId")
//     int? agencyId;
//     @JsonKey(name: "agencyLogo")
//     String? agencyLogo;
//     @JsonKey(name: "agencyBrandColor")
//     dynamic agencyBrandColor;
//     @JsonKey(name: "agencyUniqueId")
//     dynamic agencyUniqueId;
//     @JsonKey(name: "agencyName")
//     String? agencyName;
//     @JsonKey(name: "address")
//     dynamic address;
//     @JsonKey(name: "agentId")
//     int? agentId;
//     @JsonKey(name: "agent_Photo_Path")
//     dynamic agentPhotoPath;
//     @JsonKey(name: "agent_Name")
//     String? agentName;
//     @JsonKey(name: "agent_Email")
//     dynamic agentEmail;
//     @JsonKey(name: "agent_Title")
//     dynamic agentTitle;
//     @JsonKey(name: "agentUniqueId")
//     String? agentUniqueId;
//     @JsonKey(name: "agent_YearsOfExperience")
//     int? agentYearsOfExperience;
//     @JsonKey(name: "agent_LicenseExpiry")
//     String? agentLicenseExpiry;
//     @JsonKey(name: "agent_EmergencyContactName")
//     String? agentEmergencyContactName;
//     @JsonKey(name: "agent_AreaofWorking")
//     dynamic agentAreaofWorking;
//     @JsonKey(name: "agent_Address")
//     String? agentAddress;
//     @JsonKey(name: "agent_Contact")
//     String? agentContact;
//     @JsonKey(name: "agent_LicenseNumber")
//     String? agentLicenseNumber;
//     @JsonKey(name: "agent_RegistraionExpiry")
//     dynamic agentRegistraionExpiry;
//     @JsonKey(name: "agent_EmergencyContactDetails")
//     String? agentEmergencyContactDetails;
//     @JsonKey(name: "agent_Description")
//     String? agentDescription;
//     @JsonKey(name: "agent_ResidentialAddress")
//     String? agentResidentialAddress;
//     @JsonKey(name: "appraisalEmailLog")
//     dynamic appraisalEmailLog;
//     @JsonKey(name: "userId")
//     int? userId;
//     @JsonKey(name: "propertyContactId")
//     int? propertyContactId;
//     @JsonKey(name: "isPropertyEnlist")
//     bool? isPropertyEnlist;
//     @JsonKey(name: "propertyEnlistDate")
//     String? propertyEnlistDate;
//     @JsonKey(name: "propertyContactName")
//     String? propertyContactName;
//     @JsonKey(name: "propertyContactUID")
//     String? propertyContactUid;
//     @JsonKey(name: "hastoDeletePictures")
//     dynamic hastoDeletePictures;
//     @JsonKey(name: "hastoDeleteFloorPictures")
//     dynamic hastoDeleteFloorPictures;
//     @JsonKey(name: "contactCompanyName")
//     dynamic contactCompanyName;
//     @JsonKey(name: "primaryContactName")
//     String? primaryContactName;
//     @JsonKey(name: "isLeasedSold")
//     bool? isLeasedSold;
//     @JsonKey(name: "suburb")
//     String? suburb;
//     @JsonKey(name: "ownerAccountFolio")
//     String? ownerAccountFolio;
//     @JsonKey(name: "propertyName")
//     dynamic propertyName;
//     @JsonKey(name: "note")
//     dynamic note;
//     @JsonKey(name: "propertyGooglePlacesLocation")
//     String? propertyGooglePlacesLocation;
//     @JsonKey(name: "propertyGooglePlacesLocationLat")
//     dynamic propertyGooglePlacesLocationLat;
//     @JsonKey(name: "propertyGooglePlacesLocationLong")
//     dynamic propertyGooglePlacesLocationLong;
//     @JsonKey(name: "getFormatedAddress")
//     String? getFormatedAddress;
//     @JsonKey(name: "state")
//     String? state;
//     @JsonKey(name: "postCode")
//     String? postCode;
//     @JsonKey(name: "propertySaleRental")
//     dynamic propertySaleRental;
//     @JsonKey(name: "propertyOccupiedTenanted")
//     dynamic propertyOccupiedTenanted;
//     @JsonKey(name: "propertySaleRentalList")
//     dynamic propertySaleRentalList;
//     @JsonKey(name: "propertyOccupiedTenantedList")
//     dynamic propertyOccupiedTenantedList;
//     @JsonKey(name: "streetName")
//     String? streetName;
//     @JsonKey(name: "unitNumber")
//     String? unitNumber;
//     @JsonKey(name: "streetNumber")
//     String? streetNumber;
//     @JsonKey(name: "propertyDescription")
//     String? propertyDescription;
//     @JsonKey(name: "propertyReferenceField")
//     dynamic propertyReferenceField;
//     @JsonKey(name: "countBedrooms")
//     dynamic countBedrooms;
//     @JsonKey(name: "countCarParking")
//     int? countCarParking;
//     @JsonKey(name: "countBathrooms")
//     dynamic countBathrooms;
//     @JsonKey(name: "propertyType")
//     String? propertyType;
//     @JsonKey(name: "propertyAgreementType")
//     dynamic propertyAgreementType;
//     @JsonKey(name: "sPropertyType")
//     String? sPropertyType;
//     @JsonKey(name: "propertyLandAreaL")
//     int? propertyLandAreaL;
//     @JsonKey(name: "propertyLandAreaTypeList")
//     dynamic propertyLandAreaTypeList;
//     @JsonKey(name: "propertyLandAreaW")
//     int? propertyLandAreaW;
//     @JsonKey(name: "propertyBuildingTypeLotplan")
//     dynamic propertyBuildingTypeLotplan;
//     @JsonKey(name: "propertyBuildingTypeLotplanName")
//     dynamic propertyBuildingTypeLotplanName;
//     @JsonKey(name: "propertyBuildingTypeYearBuilt")
//     dynamic propertyBuildingTypeYearBuilt;
//     @JsonKey(name: "propertyBuildingTypeYearBuiltName")
//     dynamic propertyBuildingTypeYearBuiltName;
//     @JsonKey(name: "propertyBuildingTypeYearBuiltList")
//     List<PropertyBuildingTypeYearBuiltList>? propertyBuildingTypeYearBuiltList;
//     @JsonKey(name: "propertyBuildingTypeZoning")
//     String? propertyBuildingTypeZoning;
//     @JsonKey(name: "propertyBuildingTypeZoningName")
//     dynamic propertyBuildingTypeZoningName;
//     @JsonKey(name: "propertySoldDate")
//     dynamic propertySoldDate;
//     @JsonKey(name: "propertySoldPrice")
//     dynamic propertySoldPrice;
//     @JsonKey(name: "createdDate")
//     String? createdDate;
//     @JsonKey(name: "isDeleted")
//     dynamic isDeleted;
//     @JsonKey(name: "deletedOn")
//     dynamic deletedOn;
//     @JsonKey(name: "isApproved")
//     dynamic isApproved;
//     @JsonKey(name: "isPropertyScrap")
//     dynamic isPropertyScrap;
//     @JsonKey(name: "isRemoveFromList")
//     dynamic isRemoveFromList;
//     @JsonKey(name: "isAddedByAffiliate")
//     bool? isAddedByAffiliate;
//     @JsonKey(name: "approvedOn")
//     dynamic approvedOn;
//     @JsonKey(name: "propertyPrice")
//     dynamic propertyPrice;
//     @JsonKey(name: "propertySellerFirmName")
//     dynamic propertySellerFirmName;
//     @JsonKey(name: "propertySellerPrincipalName")
//     dynamic propertySellerPrincipalName;
//     @JsonKey(name: "propertySellerAddress")
//     dynamic propertySellerAddress;
//     @JsonKey(name: "propertySellerEmail")
//     dynamic propertySellerEmail;
//     @JsonKey(name: "propertySellerPhone")
//     dynamic propertySellerPhone;
//     @JsonKey(name: "propertySellerFax")
//     dynamic propertySellerFax;
//     @JsonKey(name: "propertyBuyerFirmName")
//     dynamic propertyBuyerFirmName;
//     @JsonKey(name: "propertyBuyerPrincipalName")
//     dynamic propertyBuyerPrincipalName;
//     @JsonKey(name: "propertyBuyerAddress")
//     dynamic propertyBuyerAddress;
//     @JsonKey(name: "propertyBuyerEmail")
//     dynamic propertyBuyerEmail;
//     @JsonKey(name: "propertyBuyerPhone")
//     dynamic propertyBuyerPhone;
//     @JsonKey(name: "propertyBuyerFax")
//     dynamic propertyBuyerFax;
//     @JsonKey(name: "propertySellerConvyencor")
//     dynamic propertySellerConvyencor;
//     @JsonKey(name: "propertyBuyerConvyencor")
//     dynamic propertyBuyerConvyencor;
//     @JsonKey(name: "floorPlan_Byte")
//     dynamic floorPlanByte;
//     @JsonKey(name: "floorPlan_Path")
//     String? floorPlanPath;
//     @JsonKey(name: "listingDetails")
//     List<ListingDetail>? listingDetails;
//     @JsonKey(name: "propertyDocuments")
//     List<dynamic>? propertyDocuments;
//     @JsonKey(name: "agreements")
//     List<dynamic>? agreements;
//     @JsonKey(name: "saleAgreement")
//     dynamic saleAgreement;
//     @JsonKey(name: "managementAgreement")
//     dynamic managementAgreement;
//     @JsonKey(name: "tenantAgreement")
//     dynamic tenantAgreement;
//     @JsonKey(name: "verificationProofs")
//     dynamic verificationProofs;
//     @JsonKey(name: "propertyPictures")
//     List<PropertyPicture>? propertyPictures;
//     @JsonKey(name: "externalId1")
//     dynamic externalId1;
//     @JsonKey(name: "externalId2")
//     dynamic externalId2;
//     @JsonKey(name: "externalId3")
//     dynamic externalId3;
//     @JsonKey(name: "webRootPath")
//     dynamic webRootPath;
//     @JsonKey(name: "propertyLegalDetail")
//     dynamic propertyLegalDetail;
//     @JsonKey(name: "purpose")
//     String? purpose;
//     @JsonKey(name: "ePurpose")
//     int? ePurpose;
//     @JsonKey(name: "purposeName")
//     dynamic purposeName;
//     @JsonKey(name: "energyRating")
//     dynamic energyRating;
//     @JsonKey(name: "energyRatingName")
//     dynamic energyRatingName;
//     @JsonKey(name: "countEnsuites")
//     int? countEnsuites;
//     @JsonKey(name: "countToilets")
//     int? countToilets;
//     @JsonKey(name: "countGarageSpace")
//     int? countGarageSpace;
//     @JsonKey(name: "countLivingAreas")
//     int? countLivingAreas;
//     @JsonKey(name: "balcony")
//     bool? balcony;
//     @JsonKey(name: "deck")
//     bool? deck;
//     @JsonKey(name: "outdoorEntertainmentArea")
//     bool? outdoorEntertainmentArea;
//     @JsonKey(name: "remoteGarage")
//     bool? remoteGarage;
//     @JsonKey(name: "shed")
//     bool? shed;
//     @JsonKey(name: "swimmmingPoolInGround")
//     bool? swimmmingPoolInGround;
//     @JsonKey(name: "coutryard")
//     bool? coutryard;
//     @JsonKey(name: "fullyFenced")
//     bool? fullyFenced;
//     @JsonKey(name: "outsideSpa")
//     bool? outsideSpa;
//     @JsonKey(name: "secureParking")
//     bool? secureParking;
//     @JsonKey(name: "swimmmingPoolAboveGround")
//     bool? swimmmingPoolAboveGround;
//     @JsonKey(name: "tennisCourt")
//     bool? tennisCourt;
//     @JsonKey(name: "alarmSystem")
//     bool? alarmSystem;
//     @JsonKey(name: "builtInWardrobes")
//     bool? builtInWardrobes;
//     @JsonKey(name: "ductedVacuumSystem")
//     bool? ductedVacuumSystem;
//     @JsonKey(name: "gym")
//     bool? gym;
//     @JsonKey(name: "intercom")
//     bool? intercom;
//     @JsonKey(name: "rumpusRoom")
//     bool? rumpusRoom;
//     @JsonKey(name: "workshop")
//     bool? workshop;
//     @JsonKey(name: "broadbandInternetAvailable")
//     bool? broadbandInternetAvailable;
//     @JsonKey(name: "dishwasher")
//     bool? dishwasher;
//     @JsonKey(name: "floorboards")
//     bool? floorboards;
//     @JsonKey(name: "insideSpa")
//     bool? insideSpa;
//     @JsonKey(name: "payTVAccess")
//     bool? payTvAccess;
//     @JsonKey(name: "study")
//     bool? study;
//     @JsonKey(name: "airConditioning")
//     bool? airConditioning;
//     @JsonKey(name: "ductedHeating")
//     bool? ductedHeating;
//     @JsonKey(name: "gasHeating")
//     bool? gasHeating;
//     @JsonKey(name: "openFireplace")
//     bool? openFireplace;
//     @JsonKey(name: "splitSystemAirConditioning")
//     bool? splitSystemAirConditioning;
//     @JsonKey(name: "ductedCooling")
//     bool? ductedCooling;
//     @JsonKey(name: "evaporativeCooling")
//     bool? evaporativeCooling;
//     @JsonKey(name: "hydraulicHeating")
//     bool? hydraulicHeating;
//     @JsonKey(name: "reverseCycleAirConditioning")
//     bool? reverseCycleAirConditioning;
//     @JsonKey(name: "splitSystemHeating")
//     bool? splitSystemHeating;
//     @JsonKey(name: "greyWaterSystem")
//     bool? greyWaterSystem;
//     @JsonKey(name: "solarPanels")
//     bool? solarPanels;
//     @JsonKey(name: "solarHotWater")
//     bool? solarHotWater;
//     @JsonKey(name: "waterTank")
//     bool? waterTank;
//     @JsonKey(name: "showBasicDetails")
//     bool? showBasicDetails;
//     @JsonKey(name: "propertyArea")
//     dynamic propertyArea;
//     @JsonKey(name: "secondaryContacts")
//     dynamic secondaryContacts;
//     @JsonKey(name: "imagesNameArray")
//     dynamic imagesNameArray;
//     @JsonKey(name: "floorImagesNameArray")
//     dynamic floorImagesNameArray;
//     @JsonKey(name: "propertyNotes")
//     List<dynamic>? propertyNotes;
//     @JsonKey(name: "cmaReportPath")
//     dynamic cmaReportPath;
//     @JsonKey(name: "appraisalUniqueId")
//     dynamic appraisalUniqueId;
//     @JsonKey(name: "isDraft")
//     dynamic isDraft;
//     @JsonKey(name: "recommededPriceFrom")
//     dynamic recommededPriceFrom;
//     @JsonKey(name: "recommededPriceTo")
//     dynamic recommededPriceTo;
//     @JsonKey(name: "cmaReportPrice")
//     dynamic cmaReportPrice;
//     @JsonKey(name: "propertyStatusStage")
//     int? propertyStatusStage;
//     @JsonKey(name: "affiliateId")
//     dynamic affiliateId;
//     @JsonKey(name: "leadOnProgress")
//     bool? leadOnProgress;
//     @JsonKey(name: "uploadOnPM")
//     bool? uploadOnPm;
//     @JsonKey(name: "inspectionDue")
//     dynamic inspectionDue;
//     @JsonKey(name: "inspectionFrequency")
//     dynamic inspectionFrequency;
//     @JsonKey(name: "inspectionFrequencyType")
//     dynamic inspectionFrequencyType;
//     @JsonKey(name: "listAppraisalNotes")
//     dynamic listAppraisalNotes;
//     @JsonKey(name: "listAppraisalFollowup")
//     dynamic listAppraisalFollowup;
//     @JsonKey(name: "appraisalModel")
//     dynamic appraisalModel;
//     @JsonKey(name: "appraisalModellist")
//     List<dynamic>? appraisalModellist;
//     @JsonKey(name: "addUpdateOfferModel")
//     dynamic addUpdateOfferModel;
//     @JsonKey(name: "userType")
//     dynamic userType;
//     @JsonKey(name: "agentList")
//     dynamic agentList;
//     @JsonKey(name: "agentPropertiesModel")
//     List<AgentPropertiesModel>? agentPropertiesModel;
//     @JsonKey(name: "isWishlist")
//     bool? isWishlist;
//     @JsonKey(name: "hasSolicitorDetails")
//     bool? hasSolicitorDetails;
//     @JsonKey(name: "contactlistModel")
//     List<ContactlistModel>? contactlistModel;
//     @JsonKey(name: "contactHistoryList")
//     List<dynamic>? contactHistoryList;
//     @JsonKey(name: "hdnPrimaryContact")
//     dynamic hdnPrimaryContact;
//     @JsonKey(name: "primaryContactEmail")
//     String? primaryContactEmail;
//     @JsonKey(name: "propertyEnquiryCount")
//     int? propertyEnquiryCount;
//     @JsonKey(name: "agreementType")
//     dynamic agreementType;
//     @JsonKey(name: "propertyStatus")
//     dynamic propertyStatus;
//     @JsonKey(name: "isNew")
//     int? isNew;
//     @JsonKey(name: "isDualAgent")
//     bool? isDualAgent;
//     @JsonKey(name: "leadAgent")
//     dynamic leadAgent;
//     @JsonKey(name: "dualAgent")
//     dynamic dualAgent;
//     @JsonKey(name: "dualAgentName")
//     String? dualAgentName;
//     @JsonKey(name: "showText")
//     dynamic showText;
//     @JsonKey(name: "isShowPrice")
//     bool? isShowPrice;
//     @JsonKey(name: "isOpenHome")
//     dynamic isOpenHome;
//     @JsonKey(name: "startTime")
//     dynamic startTime;
//     @JsonKey(name: "endTime")
//     dynamic endTime;
//     @JsonKey(name: "openHomeuniqueId")
//     dynamic openHomeuniqueId;
//     @JsonKey(name: "eventDate")
//     dynamic eventDate;
//     @JsonKey(name: "openHomeListingModel")
//     dynamic openHomeListingModel;
//     @JsonKey(name: "addUpdatesPropertyOwnersModel")
//     AddUpdatesPropertyOwnersModel? addUpdatesPropertyOwnersModel;
//     @JsonKey(name: "addUpdatePropertyAttributesModel")
//     AddUpdatePropertyAttributesModel? addUpdatePropertyAttributesModel;
//     @JsonKey(name: "addUpdatePropertyAdditionalDetailsModel")
//     AddUpdatePropertyAdditionalDetailsModel? addUpdatePropertyAdditionalDetailsModel;
//     @JsonKey(name: "addUpdatePropertyLegalDetailsModel")
//     AddUpdatePropertyLegalDetailsModel? addUpdatePropertyLegalDetailsModel;
//     @JsonKey(name: "addUpdatePropertyDocumentModel")
//     AddUpdatePropertyDocumentModel? addUpdatePropertyDocumentModel;
//     @JsonKey(name: "addContactDetails")
//     dynamic addContactDetails;
//     @JsonKey(name: "tenantDetails")
//     dynamic tenantDetails;
//     @JsonKey(name: "tenantFolioDetails")
//     dynamic tenantFolioDetails;
//     @JsonKey(name: "rentPrice")
//     dynamic rentPrice;
//     @JsonKey(name: "rentTenure")
//     dynamic rentTenure;
//     @JsonKey(name: "reaUploadId")
//     dynamic reaUploadId;
//     @JsonKey(name: "domainUploadId")
//     dynamic domainUploadId;
//     @JsonKey(name: "listingStatus")
//     dynamic listingStatus;
//     @JsonKey(name: "isCommercial")
//     bool? isCommercial;
//     @JsonKey(name: "saveUpload")
//     dynamic saveUpload;
//     @JsonKey(name: "isWaitingForApproval")
//     bool? isWaitingForApproval;
//     @JsonKey(name: "waitingOperation")
//     dynamic waitingOperation;
//     @JsonKey(name: "waitingPortalsToUpload")
//     dynamic waitingPortalsToUpload;
//     @JsonKey(name: "isPrincipleLogged")
//     bool? isPrincipleLogged;
//     @JsonKey(name: "isAppraisalAdded")
//     bool? isAppraisalAdded;
//     @JsonKey(name: "isAgreementuploaded")
//     bool? isAgreementuploaded;
//     @JsonKey(name: "isCOSUploaded")
//     bool? isCosUploaded;
//     @JsonKey(name: "isListedProperty")
//     bool? isListedProperty;
//     @JsonKey(name: "saleLeaseAgreementUploaded")
//     bool? saleLeaseAgreementUploaded;
//     @JsonKey(name: "leasedSoldProperty")
//     bool? leasedSoldProperty;
//     @JsonKey(name: "isPropertyLost")
//     bool? isPropertyLost;
//     @JsonKey(name: "followUpDate")
//     dynamic followUpDate;
//     @JsonKey(name: "addContact")
//     bool? addContact;
//     @JsonKey(name: "updateHistories")
//     List<UpdateHistory>? updateHistories;
//     @JsonKey(name: "ownerFolioDetails")
//     OwnerFolioDetails? ownerFolioDetails;
//     @JsonKey(name: "redirectUrl")
//     dynamic redirectUrl;

//     PropertyDetailModel({
//         this.viewType,
//         this.propertyUniqueId,
//         this.propertyImageSequence,
//         this.propertyFloorImageSequence,
//         this.uploadDocumentNameArray,
//         this.propertyPics,
//         this.contactsList,
//         this.countofEnquiry,
//         this.countofopenhome,
//         this.countofsaleoffers,
//         this.countofRental,
//         this.openHomeList,
//         this.uploadedImagesName,
//         this.floorPics,
//         this.uploadedFloorImagesName,
//         this.pageMode,
//         this.uploadedDocuments,
//         this.uploadedImages,
//         this.location,
//         this.propertyHeading,
//         this.propertyId,
//         this.agencyId,
//         this.agencyLogo,
//         this.agencyBrandColor,
//         this.agencyUniqueId,
//         this.agencyName,
//         this.address,
//         this.agentId,
//         this.agentPhotoPath,
//         this.agentName,
//         this.agentEmail,
//         this.agentTitle,
//         this.agentUniqueId,
//         this.agentYearsOfExperience,
//         this.agentLicenseExpiry,
//         this.agentEmergencyContactName,
//         this.agentAreaofWorking,
//         this.agentAddress,
//         this.agentContact,
//         this.agentLicenseNumber,
//         this.agentRegistraionExpiry,
//         this.agentEmergencyContactDetails,
//         this.agentDescription,
//         this.agentResidentialAddress,
//         this.appraisalEmailLog,
//         this.userId,
//         this.propertyContactId,
//         this.isPropertyEnlist,
//         this.propertyEnlistDate,
//         this.propertyContactName,
//         this.propertyContactUid,
//         this.hastoDeletePictures,
//         this.hastoDeleteFloorPictures,
//         this.contactCompanyName,
//         this.primaryContactName,
//         this.isLeasedSold,
//         this.suburb,
//         this.ownerAccountFolio,
//         this.propertyName,
//         this.note,
//         this.propertyGooglePlacesLocation,
//         this.propertyGooglePlacesLocationLat,
//         this.propertyGooglePlacesLocationLong,
//         this.getFormatedAddress,
//         this.state,
//         this.postCode,
//         this.propertySaleRental,
//         this.propertyOccupiedTenanted,
//         this.propertySaleRentalList,
//         this.propertyOccupiedTenantedList,
//         this.streetName,
//         this.unitNumber,
//         this.streetNumber,
//         this.propertyDescription,
//         this.propertyReferenceField,
//         this.countBedrooms,
//         this.countCarParking,
//         this.countBathrooms,
//         this.propertyType,
//         this.propertyAgreementType,
//         this.sPropertyType,
//         this.propertyLandAreaL,
//         this.propertyLandAreaTypeList,
//         this.propertyLandAreaW,
//         this.propertyBuildingTypeLotplan,
//         this.propertyBuildingTypeLotplanName,
//         this.propertyBuildingTypeYearBuilt,
//         this.propertyBuildingTypeYearBuiltName,
//         this.propertyBuildingTypeYearBuiltList,
//         this.propertyBuildingTypeZoning,
//         this.propertyBuildingTypeZoningName,
//         this.propertySoldDate,
//         this.propertySoldPrice,
//         this.createdDate,
//         this.isDeleted,
//         this.deletedOn,
//         this.isApproved,
//         this.isPropertyScrap,
//         this.isRemoveFromList,
//         this.isAddedByAffiliate,
//         this.approvedOn,
//         this.propertyPrice,
//         this.propertySellerFirmName,
//         this.propertySellerPrincipalName,
//         this.propertySellerAddress,
//         this.propertySellerEmail,
//         this.propertySellerPhone,
//         this.propertySellerFax,
//         this.propertyBuyerFirmName,
//         this.propertyBuyerPrincipalName,
//         this.propertyBuyerAddress,
//         this.propertyBuyerEmail,
//         this.propertyBuyerPhone,
//         this.propertyBuyerFax,
//         this.propertySellerConvyencor,
//         this.propertyBuyerConvyencor,
//         this.floorPlanByte,
//         this.floorPlanPath,
//         this.listingDetails,
//         this.propertyDocuments,
//         this.agreements,
//         this.saleAgreement,
//         this.managementAgreement,
//         this.tenantAgreement,
//         this.verificationProofs,
//         this.propertyPictures,
//         this.externalId1,
//         this.externalId2,
//         this.externalId3,
//         this.webRootPath,
//         this.propertyLegalDetail,
//         this.purpose,
//         this.ePurpose,
//         this.purposeName,
//         this.energyRating,
//         this.energyRatingName,
//         this.countEnsuites,
//         this.countToilets,
//         this.countGarageSpace,
//         this.countLivingAreas,
//         this.balcony,
//         this.deck,
//         this.outdoorEntertainmentArea,
//         this.remoteGarage,
//         this.shed,
//         this.swimmmingPoolInGround,
//         this.coutryard,
//         this.fullyFenced,
//         this.outsideSpa,
//         this.secureParking,
//         this.swimmmingPoolAboveGround,
//         this.tennisCourt,
//         this.alarmSystem,
//         this.builtInWardrobes,
//         this.ductedVacuumSystem,
//         this.gym,
//         this.intercom,
//         this.rumpusRoom,
//         this.workshop,
//         this.broadbandInternetAvailable,
//         this.dishwasher,
//         this.floorboards,
//         this.insideSpa,
//         this.payTvAccess,
//         this.study,
//         this.airConditioning,
//         this.ductedHeating,
//         this.gasHeating,
//         this.openFireplace,
//         this.splitSystemAirConditioning,
//         this.ductedCooling,
//         this.evaporativeCooling,
//         this.hydraulicHeating,
//         this.reverseCycleAirConditioning,
//         this.splitSystemHeating,
//         this.greyWaterSystem,
//         this.solarPanels,
//         this.solarHotWater,
//         this.waterTank,
//         this.showBasicDetails,
//         this.propertyArea,
//         this.secondaryContacts,
//         this.imagesNameArray,
//         this.floorImagesNameArray,
//         this.propertyNotes,
//         this.cmaReportPath,
//         this.appraisalUniqueId,
//         this.isDraft,
//         this.recommededPriceFrom,
//         this.recommededPriceTo,
//         this.cmaReportPrice,
//         this.propertyStatusStage,
//         this.affiliateId,
//         this.leadOnProgress,
//         this.uploadOnPm,
//         this.inspectionDue,
//         this.inspectionFrequency,
//         this.inspectionFrequencyType,
//         this.listAppraisalNotes,
//         this.listAppraisalFollowup,
//         this.appraisalModel,
//         this.appraisalModellist,
//         this.addUpdateOfferModel,
//         this.userType,
//         this.agentList,
//         this.agentPropertiesModel,
//         this.isWishlist,
//         this.hasSolicitorDetails,
//         this.contactlistModel,
//         this.contactHistoryList,
//         this.hdnPrimaryContact,
//         this.primaryContactEmail,
//         this.propertyEnquiryCount,
//         this.agreementType,
//         this.propertyStatus,
//         this.isNew,
//         this.isDualAgent,
//         this.leadAgent,
//         this.dualAgent,
//         this.dualAgentName,
//         this.showText,
//         this.isShowPrice,
//         this.isOpenHome,
//         this.startTime,
//         this.endTime,
//         this.openHomeuniqueId,
//         this.eventDate,
//         this.openHomeListingModel,
//         this.addUpdatesPropertyOwnersModel,
//         this.addUpdatePropertyAttributesModel,
//         this.addUpdatePropertyAdditionalDetailsModel,
//         this.addUpdatePropertyLegalDetailsModel,
//         this.addUpdatePropertyDocumentModel,
//         this.addContactDetails,
//         this.tenantDetails,
//         this.tenantFolioDetails,
//         this.rentPrice,
//         this.rentTenure,
//         this.reaUploadId,
//         this.domainUploadId,
//         this.listingStatus,
//         this.isCommercial,
//         this.saveUpload,
//         this.isWaitingForApproval,
//         this.waitingOperation,
//         this.waitingPortalsToUpload,
//         this.isPrincipleLogged,
//         this.isAppraisalAdded,
//         this.isAgreementuploaded,
//         this.isCosUploaded,
//         this.isListedProperty,
//         this.saleLeaseAgreementUploaded,
//         this.leasedSoldProperty,
//         this.isPropertyLost,
//         this.followUpDate,
//         this.addContact,
//         this.updateHistories,
//         this.ownerFolioDetails,
//         this.redirectUrl,
//     });

//     factory PropertyDetailModel.fromJson(Map<String, dynamic> json) => _$PropertyDetailModelFromJson(json);

//     Map<String, dynamic> toJson() => _$PropertyDetailModelToJson(this);
// }

// @JsonSerializable()
// class AddUpdatePropertyAdditionalDetailsModel {
//     @JsonKey(name: "propertyImageSequence")
//     dynamic propertyImageSequence;
//     @JsonKey(name: "propertyFloorImageSequence")
//     dynamic propertyFloorImageSequence;
//     @JsonKey(name: "propertyUniqueID")
//     String? propertyUniqueId;
//     @JsonKey(name: "propertyHeading")
//     String? propertyHeading;
//     @JsonKey(name: "propertyBuildingTypeZoning")
//     String? propertyBuildingTypeZoning;
//     @JsonKey(name: "propertyLandAreaL")
//     int? propertyLandAreaL;
//     @JsonKey(name: "propertyLandAreaW")
//     int? propertyLandAreaW;
//     @JsonKey(name: "propertyLandAreaTypeList")
//     dynamic propertyLandAreaTypeList;
//     @JsonKey(name: "propertyDescription")
//     String? propertyDescription;
//     @JsonKey(name: "propertyPics")
//     List<String>? propertyPics;
//     @JsonKey(name: "floorPics")
//     List<String>? floorPics;
//     @JsonKey(name: "hastoDeletePictures")
//     dynamic hastoDeletePictures;
//     @JsonKey(name: "hastoDeleteFloorPictures")
//     dynamic hastoDeleteFloorPictures;
//     @JsonKey(name: "uploadedImages")
//     dynamic uploadedImages;
//     @JsonKey(name: "imagesNameArray")
//     dynamic imagesNameArray;
//     @JsonKey(name: "floorImagesNameArray")
//     dynamic floorImagesNameArray;
//     @JsonKey(name: "uploadedFloorImagesName")
//     dynamic uploadedFloorImagesName;
//     @JsonKey(name: "uploadedImagesName")
//     dynamic uploadedImagesName;

//     AddUpdatePropertyAdditionalDetailsModel({
//         this.propertyImageSequence,
//         this.propertyFloorImageSequence,
//         this.propertyUniqueId,
//         this.propertyHeading,
//         this.propertyBuildingTypeZoning,
//         this.propertyLandAreaL,
//         this.propertyLandAreaW,
//         this.propertyLandAreaTypeList,
//         this.propertyDescription,
//         this.propertyPics,
//         this.floorPics,
//         this.hastoDeletePictures,
//         this.hastoDeleteFloorPictures,
//         this.uploadedImages,
//         this.imagesNameArray,
//         this.floorImagesNameArray,
//         this.uploadedFloorImagesName,
//         this.uploadedImagesName,
//     });

//     factory AddUpdatePropertyAdditionalDetailsModel.fromJson(Map<String, dynamic> json) => _$AddUpdatePropertyAdditionalDetailsModelFromJson(json);

//     Map<String, dynamic> toJson() => _$AddUpdatePropertyAdditionalDetailsModelToJson(this);
// }

// @JsonSerializable()
// class AddUpdatePropertyAttributesModel {
//     @JsonKey(name: "propertyUniqueID")
//     String? propertyUniqueId;
//     @JsonKey(name: "countBedrooms")
//     dynamic countBedrooms;
//     @JsonKey(name: "countCarParking")
//     int? countCarParking;
//     @JsonKey(name: "countBathrooms")
//     dynamic countBathrooms;
//     @JsonKey(name: "countEnsuites")
//     int? countEnsuites;
//     @JsonKey(name: "countToilets")
//     int? countToilets;
//     @JsonKey(name: "countGarageSpace")
//     int? countGarageSpace;
//     @JsonKey(name: "countLivingAreas")
//     int? countLivingAreas;
//     @JsonKey(name: "balcony")
//     bool? balcony;
//     @JsonKey(name: "deck")
//     bool? deck;
//     @JsonKey(name: "outdoorEntertainmentArea")
//     bool? outdoorEntertainmentArea;
//     @JsonKey(name: "remoteGarage")
//     bool? remoteGarage;
//     @JsonKey(name: "shed")
//     bool? shed;
//     @JsonKey(name: "swimmmingPoolInGround")
//     bool? swimmmingPoolInGround;
//     @JsonKey(name: "coutryard")
//     bool? coutryard;
//     @JsonKey(name: "fullyFenced")
//     bool? fullyFenced;
//     @JsonKey(name: "outsideSpa")
//     bool? outsideSpa;
//     @JsonKey(name: "secureParking")
//     bool? secureParking;
//     @JsonKey(name: "swimmmingPoolAboveGround")
//     bool? swimmmingPoolAboveGround;
//     @JsonKey(name: "tennisCourt")
//     bool? tennisCourt;
//     @JsonKey(name: "alarmSystem")
//     bool? alarmSystem;
//     @JsonKey(name: "builtInWardrobes")
//     bool? builtInWardrobes;
//     @JsonKey(name: "ductedVacuumSystem")
//     bool? ductedVacuumSystem;
//     @JsonKey(name: "gym")
//     bool? gym;
//     @JsonKey(name: "intercom")
//     bool? intercom;
//     @JsonKey(name: "rumpusRoom")
//     bool? rumpusRoom;
//     @JsonKey(name: "workshop")
//     bool? workshop;
//     @JsonKey(name: "broadbandInternetAvailable")
//     bool? broadbandInternetAvailable;
//     @JsonKey(name: "dishwasher")
//     bool? dishwasher;
//     @JsonKey(name: "floorboards")
//     bool? floorboards;
//     @JsonKey(name: "insideSpa")
//     bool? insideSpa;
//     @JsonKey(name: "payTVAccess")
//     bool? payTvAccess;
//     @JsonKey(name: "study")
//     bool? study;
//     @JsonKey(name: "airConditioning")
//     bool? airConditioning;
//     @JsonKey(name: "ductedHeating")
//     bool? ductedHeating;
//     @JsonKey(name: "gasHeating")
//     bool? gasHeating;
//     @JsonKey(name: "openFireplace")
//     bool? openFireplace;
//     @JsonKey(name: "splitSystemAirConditioning")
//     bool? splitSystemAirConditioning;
//     @JsonKey(name: "ductedCooling")
//     bool? ductedCooling;
//     @JsonKey(name: "evaporativeCooling")
//     bool? evaporativeCooling;
//     @JsonKey(name: "hydraulicHeating")
//     bool? hydraulicHeating;
//     @JsonKey(name: "reverseCycleAirConditioning")
//     bool? reverseCycleAirConditioning;
//     @JsonKey(name: "splitSystemHeating")
//     bool? splitSystemHeating;
//     @JsonKey(name: "greyWaterSystem")
//     bool? greyWaterSystem;
//     @JsonKey(name: "solarPanels")
//     bool? solarPanels;
//     @JsonKey(name: "solarHotWater")
//     bool? solarHotWater;
//     @JsonKey(name: "waterTank")
//     bool? waterTank;
//     @JsonKey(name: "showBasicDetails")
//     bool? showBasicDetails;

//     AddUpdatePropertyAttributesModel({
//         this.propertyUniqueId,
//         this.countBedrooms,
//         this.countCarParking,
//         this.countBathrooms,
//         this.countEnsuites,
//         this.countToilets,
//         this.countGarageSpace,
//         this.countLivingAreas,
//         this.balcony,
//         this.deck,
//         this.outdoorEntertainmentArea,
//         this.remoteGarage,
//         this.shed,
//         this.swimmmingPoolInGround,
//         this.coutryard,
//         this.fullyFenced,
//         this.outsideSpa,
//         this.secureParking,
//         this.swimmmingPoolAboveGround,
//         this.tennisCourt,
//         this.alarmSystem,
//         this.builtInWardrobes,
//         this.ductedVacuumSystem,
//         this.gym,
//         this.intercom,
//         this.rumpusRoom,
//         this.workshop,
//         this.broadbandInternetAvailable,
//         this.dishwasher,
//         this.floorboards,
//         this.insideSpa,
//         this.payTvAccess,
//         this.study,
//         this.airConditioning,
//         this.ductedHeating,
//         this.gasHeating,
//         this.openFireplace,
//         this.splitSystemAirConditioning,
//         this.ductedCooling,
//         this.evaporativeCooling,
//         this.hydraulicHeating,
//         this.reverseCycleAirConditioning,
//         this.splitSystemHeating,
//         this.greyWaterSystem,
//         this.solarPanels,
//         this.solarHotWater,
//         this.waterTank,
//         this.showBasicDetails,
//     });

//     factory AddUpdatePropertyAttributesModel.fromJson(Map<String, dynamic> json) => _$AddUpdatePropertyAttributesModelFromJson(json);

//     Map<String, dynamic> toJson() => _$AddUpdatePropertyAttributesModelToJson(this);
// }

// @JsonSerializable()
// class AddUpdatePropertyDocumentModel {
//     @JsonKey(name: "propertyId")
//     int? propertyId;
//     @JsonKey(name: "propertyDocuments")
//     List<dynamic>? propertyDocuments;

//     AddUpdatePropertyDocumentModel({
//         this.propertyId,
//         this.propertyDocuments,
//     });

//     factory AddUpdatePropertyDocumentModel.fromJson(Map<String, dynamic> json) => _$AddUpdatePropertyDocumentModelFromJson(json);

//     Map<String, dynamic> toJson() => _$AddUpdatePropertyDocumentModelToJson(this);
// }

// @JsonSerializable()
// class AddUpdatePropertyLegalDetailsModel {
//     @JsonKey(name: "propertyUniqueID")
//     String? propertyUniqueId;
//     @JsonKey(name: "propertySellerFirmName")
//     dynamic propertySellerFirmName;
//     @JsonKey(name: "propertySellerPrincipalName")
//     dynamic propertySellerPrincipalName;
//     @JsonKey(name: "propertySellerEmail")
//     dynamic propertySellerEmail;
//     @JsonKey(name: "propertySellerPhone")
//     dynamic propertySellerPhone;
//     @JsonKey(name: "propertySellerFax")
//     dynamic propertySellerFax;
//     @JsonKey(name: "propertySellerAddress")
//     dynamic propertySellerAddress;
//     @JsonKey(name: "propertyBuyerFirmName")
//     dynamic propertyBuyerFirmName;
//     @JsonKey(name: "propertyBuyerPrincipalName")
//     dynamic propertyBuyerPrincipalName;
//     @JsonKey(name: "propertyBuyerEmail")
//     dynamic propertyBuyerEmail;
//     @JsonKey(name: "propertyBuyerPhone")
//     dynamic propertyBuyerPhone;
//     @JsonKey(name: "propertyBuyerFax")
//     dynamic propertyBuyerFax;
//     @JsonKey(name: "propertyBuyerAddress")
//     dynamic propertyBuyerAddress;
//     @JsonKey(name: "propertySoldDate")
//     dynamic propertySoldDate;
//     @JsonKey(name: "propertySoldPrice")
//     dynamic propertySoldPrice;

//     AddUpdatePropertyLegalDetailsModel({
//         this.propertyUniqueId,
//         this.propertySellerFirmName,
//         this.propertySellerPrincipalName,
//         this.propertySellerEmail,
//         this.propertySellerPhone,
//         this.propertySellerFax,
//         this.propertySellerAddress,
//         this.propertyBuyerFirmName,
//         this.propertyBuyerPrincipalName,
//         this.propertyBuyerEmail,
//         this.propertyBuyerPhone,
//         this.propertyBuyerFax,
//         this.propertyBuyerAddress,
//         this.propertySoldDate,
//         this.propertySoldPrice,
//     });

//     factory AddUpdatePropertyLegalDetailsModel.fromJson(Map<String, dynamic> json) => _$AddUpdatePropertyLegalDetailsModelFromJson(json);

//     Map<String, dynamic> toJson() => _$AddUpdatePropertyLegalDetailsModelToJson(this);
// }

// @JsonSerializable()
// class AddUpdatesPropertyOwnersModel {
//     @JsonKey(name: "propertyUniqueID")
//     String? propertyUniqueId;
//     @JsonKey(name: "propertyContactName")
//     dynamic propertyContactName;
//     @JsonKey(name: "hdnPrimaryContact")
//     dynamic hdnPrimaryContact;
//     @JsonKey(name: "contactlistModel")
//     List<dynamic>? contactlistModel;
//     @JsonKey(name: "contactlistModelView")
//     List<ContactlistModelView>? contactlistModelView;
//     @JsonKey(name: "contactHistoryList")
//     List<dynamic>? contactHistoryList;
//     @JsonKey(name: "isUpdateOwner")
//     bool? isUpdateOwner;
//     @JsonKey(name: "ismanageOwnership")
//     bool? ismanageOwnership;

//     AddUpdatesPropertyOwnersModel({
//         this.propertyUniqueId,
//         this.propertyContactName,
//         this.hdnPrimaryContact,
//         this.contactlistModel,
//         this.contactlistModelView,
//         this.contactHistoryList,
//         this.isUpdateOwner,
//         this.ismanageOwnership,
//     });

//     factory AddUpdatesPropertyOwnersModel.fromJson(Map<String, dynamic> json) => _$AddUpdatesPropertyOwnersModelFromJson(json);

//     Map<String, dynamic> toJson() => _$AddUpdatesPropertyOwnersModelToJson(this);
// }

// @JsonSerializable()
// class ContactlistModelView {
//     @JsonKey(name: "ownerId")
//     int? ownerId;
//     @JsonKey(name: "contactId")
//     int? contactId;
//     @JsonKey(name: "contactUId")
//     dynamic contactUId;
//     @JsonKey(name: "isPrimary")
//     bool? isPrimary;
//     @JsonKey(name: "contactName")
//     String? contactName;
//     @JsonKey(name: "contactEmail")
//     String? contactEmail;
//     @JsonKey(name: "name")
//     String? name;
//     @JsonKey(name: "firstName")
//     dynamic firstName;
//     @JsonKey(name: "lastName")
//     dynamic lastName;
//     @JsonKey(name: "phone")
//     String? phone;
//     @JsonKey(name: "fromDate")
//     String? fromDate;
//     @JsonKey(name: "toDate")
//     dynamic toDate;
//     @JsonKey(name: "title")
//     dynamic title;
//     @JsonKey(name: "contactType")
//     dynamic contactType;
//     @JsonKey(name: "address")
//     dynamic address;
//     @JsonKey(name: "isVerificationLinkSend")
//     bool? isVerificationLinkSend;
//     @JsonKey(name: "abn")
//     dynamic abn;
//     @JsonKey(name: "companyName")
//     dynamic companyName;
//     @JsonKey(name: "verificationProofs")
//     dynamic verificationProofs;

//     ContactlistModelView({
//         this.ownerId,
//         this.contactId,
//         this.contactUId,
//         this.isPrimary,
//         this.contactName,
//         this.contactEmail,
//         this.name,
//         this.firstName,
//         this.lastName,
//         this.phone,
//         this.fromDate,
//         this.toDate,
//         this.title,
//         this.contactType,
//         this.address,
//         this.isVerificationLinkSend,
//         this.abn,
//         this.companyName,
//         this.verificationProofs,
//     });

//     factory ContactlistModelView.fromJson(Map<String, dynamic> json) => _$ContactlistModelViewFromJson(json);

//     Map<String, dynamic> toJson() => _$ContactlistModelViewToJson(this);
// }

// @JsonSerializable()
// class AgentPropertiesModel {
//     @JsonKey(name: "propertyUniqueId")
//     String? propertyUniqueId;
//     @JsonKey(name: "propertyImage")
//     String? propertyImage;
//     @JsonKey(name: "propertyPrice")
//     int? propertyPrice;
//     @JsonKey(name: "enlistDate")
//     String? enlistDate;
//     @JsonKey(name: "isWishlist")
//     bool? isWishlist;

//     AgentPropertiesModel({
//         this.propertyUniqueId,
//         this.propertyImage,
//         this.propertyPrice,
//         this.enlistDate,
//         this.isWishlist,
//     });

//     factory AgentPropertiesModel.fromJson(Map<String, dynamic> json) => _$AgentPropertiesModelFromJson(json);

//     Map<String, dynamic> toJson() => _$AgentPropertiesModelToJson(this);
// }

// @JsonSerializable()
// class ContactlistModel {
//     @JsonKey(name: "ownerId")
//     int? ownerId;
//     @JsonKey(name: "contactId")
//     int? contactId;
//     @JsonKey(name: "contactUId")
//     String? contactUId;
//     @JsonKey(name: "isPrimary")
//     bool? isPrimary;
//     @JsonKey(name: "contactName")
//     String? contactName;
//     @JsonKey(name: "contactEmail")
//     String? contactEmail;
//     @JsonKey(name: "name")
//     String? name;
//     @JsonKey(name: "firstName")
//     String? firstName;
//     @JsonKey(name: "lastName")
//     String? lastName;
//     @JsonKey(name: "phone")
//     String? phone;
//     @JsonKey(name: "fromDate")
//     dynamic fromDate;
//     @JsonKey(name: "toDate")
//     dynamic toDate;
//     @JsonKey(name: "title")
//     int? title;
//     @JsonKey(name: "contactType")
//     int? contactType;
//     @JsonKey(name: "address")
//     dynamic address;
//     @JsonKey(name: "isVerificationLinkSend")
//     bool? isVerificationLinkSend;
//     @JsonKey(name: "abn")
//     dynamic abn;
//     @JsonKey(name: "companyName")
//     dynamic companyName;
//     @JsonKey(name: "verificationProofs")
//     dynamic verificationProofs;

//     ContactlistModel({
//         this.ownerId,
//         this.contactId,
//         this.contactUId,
//         this.isPrimary,
//         this.contactName,
//         this.contactEmail,
//         this.name,
//         this.firstName,
//         this.lastName,
//         this.phone,
//         this.fromDate,
//         this.toDate,
//         this.title,
//         this.contactType,
//         this.address,
//         this.isVerificationLinkSend,
//         this.abn,
//         this.companyName,
//         this.verificationProofs,
//     });

//     factory ContactlistModel.fromJson(Map<String, dynamic> json) => _$ContactlistModelFromJson(json);

//     Map<String, dynamic> toJson() => _$ContactlistModelToJson(this);
// }

// @JsonSerializable()
// class ContactsList {
//     @JsonKey(name: "name")
//     String? name;
//     @JsonKey(name: "uniqueID")
//     String? uniqueId;

//     ContactsList({
//         this.name,
//         this.uniqueId,
//     });

//     factory ContactsList.fromJson(Map<String, dynamic> json) => _$ContactsListFromJson(json);

//     Map<String, dynamic> toJson() => _$ContactsListToJson(this);
// }

// @JsonSerializable()
// class ListingDetail {
//     @JsonKey(name: "listingId")
//     int? listingId;
//     @JsonKey(name: "propertySaleRental")
//     int? propertySaleRental;
//     @JsonKey(name: "propertyId")
//     int? propertyId;
//     @JsonKey(name: "reaUploadId")
//     dynamic reaUploadId;
//     @JsonKey(name: "domainUploadId")
//     dynamic domainUploadId;
//     @JsonKey(name: "listingStatus")
//     int? listingStatus;
//     @JsonKey(name: "propertyPrice")
//     int? propertyPrice;
//     @JsonKey(name: "isCommercial")
//     bool? isCommercial;
//     @JsonKey(name: "propertyAgreementType")
//     int? propertyAgreementType;
//     @JsonKey(name: "isNew")
//     dynamic isNew;
//     @JsonKey(name: "dualAgent")
//     dynamic dualAgent;
//     @JsonKey(name: "isDualAgent")
//     bool? isDualAgent;
//     @JsonKey(name: "isShowPrice")
//     bool? isShowPrice;
//     @JsonKey(name: "showText")
//     dynamic showText;
//     @JsonKey(name: "address")
//     String? address;
//     @JsonKey(name: "propertyUId")
//     String? propertyUId;
//     @JsonKey(name: "agentName")
//     String? agentName;
//     @JsonKey(name: "dualAgentName")
//     String? dualAgentName;
//     @JsonKey(name: "sListingStatus")
//     String? sListingStatus;
//     @JsonKey(name: "sAgreementType")
//     String? sAgreementType;
//     @JsonKey(name: "rent")
//     dynamic rent;
//     @JsonKey(name: "dateAvailable")
//     dynamic dateAvailable;
//     @JsonKey(name: "listingAgentId")
//     int? listingAgentId;
//     @JsonKey(name: "listingAgentName")
//     String? listingAgentName;
//     @JsonKey(name: "enquiryCount")
//     int? enquiryCount;
//     @JsonKey(name: "createdAt")
//     String? createdAt;
//     @JsonKey(name: "reaUploadedDate")
//     dynamic reaUploadedDate;
//     @JsonKey(name: "domainUploadedDate")
//     dynamic domainUploadedDate;

//     ListingDetail({
//         this.listingId,
//         this.propertySaleRental,
//         this.propertyId,
//         this.reaUploadId,
//         this.domainUploadId,
//         this.listingStatus,
//         this.propertyPrice,
//         this.isCommercial,
//         this.propertyAgreementType,
//         this.isNew,
//         this.dualAgent,
//         this.isDualAgent,
//         this.isShowPrice,
//         this.showText,
//         this.address,
//         this.propertyUId,
//         this.agentName,
//         this.dualAgentName,
//         this.sListingStatus,
//         this.sAgreementType,
//         this.rent,
//         this.dateAvailable,
//         this.listingAgentId,
//         this.listingAgentName,
//         this.enquiryCount,
//         this.createdAt,
//         this.reaUploadedDate,
//         this.domainUploadedDate,
//     });

//     factory ListingDetail.fromJson(Map<String, dynamic> json) => _$ListingDetailFromJson(json);

//     Map<String, dynamic> toJson() => _$ListingDetailToJson(this);
// }

// @JsonSerializable()
// class OwnerFolioDetails {
//     @JsonKey(name: "id")
//     int? id;
//     @JsonKey(name: "ownerAccountFolio")
//     String? ownerAccountFolio;
//     @JsonKey(name: "isActive")
//     bool? isActive;
//     @JsonKey(name: "propertyId")
//     int? propertyId;
//     @JsonKey(name: "withholdAmount")
//     int? withholdAmount;
//     @JsonKey(name: "withholdReason")
//     dynamic withholdReason;
//     @JsonKey(name: "disbursementIntervel")
//     int? disbursementIntervel;
//     @JsonKey(name: "totalMoneyLimit")
//     dynamic totalMoneyLimit;
//     @JsonKey(name: "balanceLimit")
//     dynamic balanceLimit;
//     @JsonKey(name: "lastPaymentDate")
//     dynamic lastPaymentDate;
//     @JsonKey(name: "nextDisbursementDate")
//     dynamic nextDisbursementDate;
//     @JsonKey(name: "clientAccess")
//     bool? clientAccess;
//     @JsonKey(name: "balance")
//     int? balance;
//     @JsonKey(name: "fees")
//     List<dynamic>? fees;
//     @JsonKey(name: "paymentMethods")
//     List<dynamic>? paymentMethods;

//     OwnerFolioDetails({
//         this.id,
//         this.ownerAccountFolio,
//         this.isActive,
//         this.propertyId,
//         this.withholdAmount,
//         this.withholdReason,
//         this.disbursementIntervel,
//         this.totalMoneyLimit,
//         this.balanceLimit,
//         this.lastPaymentDate,
//         this.nextDisbursementDate,
//         this.clientAccess,
//         this.balance,
//         this.fees,
//         this.paymentMethods,
//     });

//     factory OwnerFolioDetails.fromJson(Map<String, dynamic> json) => _$OwnerFolioDetailsFromJson(json);

//     Map<String, dynamic> toJson() => _$OwnerFolioDetailsToJson(this);
// }

// @JsonSerializable()
// class PropertyBuildingTypeYearBuiltList {
//     @JsonKey(name: "disabled")
//     bool? disabled;
//     @JsonKey(name: "group")
//     dynamic group;
//     @JsonKey(name: "selected")
//     bool? selected;
//     @JsonKey(name: "text")
//     String? text;
//     @JsonKey(name: "value")
//     String? value;

//     PropertyBuildingTypeYearBuiltList({
//         this.disabled,
//         this.group,
//         this.selected,
//         this.text,
//         this.value,
//     });

//     factory PropertyBuildingTypeYearBuiltList.fromJson(Map<String, dynamic> json) => _$PropertyBuildingTypeYearBuiltListFromJson(json);

//     Map<String, dynamic> toJson() => _$PropertyBuildingTypeYearBuiltListToJson(this);
// }

// @JsonSerializable()
// class PropertyPicture {
//     @JsonKey(name: "picId")
//     int? picId;
//     @JsonKey(name: "picPath")
//     String? picPath;
//     @JsonKey(name: "createdDate")
//     String? createdDate;
//     @JsonKey(name: "propertyId")
//     int? propertyId;
//     @JsonKey(name: "isEnabled")
//     dynamic isEnabled;
//     @JsonKey(name: "picName")
//     dynamic picName;
//     @JsonKey(name: "picDesc")
//     dynamic picDesc;
//     @JsonKey(name: "picAltText")
//     dynamic picAltText;
//     @JsonKey(name: "isDeleted")
//     dynamic isDeleted;
//     @JsonKey(name: "deletedOn")
//     dynamic deletedOn;
//     @JsonKey(name: "type")
//     int? type;
//     @JsonKey(name: "picNum")
//     int? picNum;

//     PropertyPicture({
//         this.picId,
//         this.picPath,
//         this.createdDate,
//         this.propertyId,
//         this.isEnabled,
//         this.picName,
//         this.picDesc,
//         this.picAltText,
//         this.isDeleted,
//         this.deletedOn,
//         this.type,
//         this.picNum,
//     });

//     factory PropertyPicture.fromJson(Map<String, dynamic> json) => _$PropertyPictureFromJson(json);

//     Map<String, dynamic> toJson() => _$PropertyPictureToJson(this);
// }

// @JsonSerializable()
// class UpdateHistory {
//     @JsonKey(name: "userId")
//     int? userId;
//     @JsonKey(name: "createdOn")
//     String? createdOn;
//     @JsonKey(name: "recordType")
//     int? recordType;
//     @JsonKey(name: "referenceId")
//     int? referenceId;
//     @JsonKey(name: "fieldModified")
//     String? fieldModified;
//     @JsonKey(name: "beforeValue")
//     String? beforeValue;
//     @JsonKey(name: "afterValue")
//     String? afterValue;
//     @JsonKey(name: "displayName")
//     String? displayName;
//     @JsonKey(name: "dataTypes")
//     dynamic dataTypes;
//     @JsonKey(name: "userName")
//     String? userName;

//     UpdateHistory({
//         this.userId,
//         this.createdOn,
//         this.recordType,
//         this.referenceId,
//         this.fieldModified,
//         this.beforeValue,
//         this.afterValue,
//         this.displayName,
//         this.dataTypes,
//         this.userName,
//     });

//     factory UpdateHistory.fromJson(Map<String, dynamic> json) => _$UpdateHistoryFromJson(json);

//     Map<String, dynamic> toJson() => _$UpdateHistoryToJson(this);
// }

// class PropertyDetailModel {
//     @JsonKey(name: "viewType")
//     int? viewType;
//     @JsonKey(name: "propertyUniqueID")
//     String? propertyUniqueId;
//     @JsonKey(name: "propertyImageSequence")
//     dynamic propertyImageSequence;
//     @JsonKey(name: "propertyFloorImageSequence")
//     dynamic propertyFloorImageSequence;
//     @JsonKey(name: "uploadDocumentNameArray")
//     dynamic uploadDocumentNameArray;
//     @JsonKey(name: "propertyPics")
//     List<dynamic>? propertyPics;
//     @JsonKey(name: "contactsList")
//     List<ContactsList>? contactsList;
//     @JsonKey(name: "countofEnquiry")
//     int? countofEnquiry;
//     @JsonKey(name: "countofopenhome")
//     int? countofopenhome;
//     @JsonKey(name: "countofsaleoffers")
//     int? countofsaleoffers;
//     @JsonKey(name: "countofRental")
//     int? countofRental;
//     @JsonKey(name: "openHomeList")
//     List<dynamic>? openHomeList;
//     @JsonKey(name: "uploadedImagesName")
//     dynamic uploadedImagesName;
//     @JsonKey(name: "floorPics")
//     List<dynamic>? floorPics;
//     @JsonKey(name: "uploadedFloorImagesName")
//     dynamic uploadedFloorImagesName;
//     @JsonKey(name: "pageMode")
//     int? pageMode;
//     @JsonKey(name: "uploadedDocuments")
//     dynamic uploadedDocuments;
//     @JsonKey(name: "uploadedImages")
//     dynamic uploadedImages;
//     @JsonKey(name: "location")
//     dynamic location;
//     @JsonKey(name: "propertyHeading")
//     dynamic propertyHeading;
//     @JsonKey(name: "propertyId")
//     int? propertyId;
//     @JsonKey(name: "agencyId")
//     int? agencyId;
//     @JsonKey(name: "agencyLogo")
//     String? agencyLogo;
//     @JsonKey(name: "agencyBrandColor")
//     dynamic agencyBrandColor;
//     @JsonKey(name: "agencyUniqueId")
//     dynamic agencyUniqueId;
//     @JsonKey(name: "agencyName")
//     String? agencyName;
//     @JsonKey(name: "address")
//     dynamic address;
//     @JsonKey(name: "agentId")
//     int? agentId;
//     @JsonKey(name: "agent_Photo_Path")
//     dynamic agentPhotoPath;
//     @JsonKey(name: "agent_Name")
//     String? agentName;
//     @JsonKey(name: "agent_Email")
//     dynamic agentEmail;
//     @JsonKey(name: "agent_Title")
//     dynamic agentTitle;
//     @JsonKey(name: "agentUniqueId")
//     String? agentUniqueId;
//     @JsonKey(name: "agent_YearsOfExperience")
//     int? agentYearsOfExperience;
//     @JsonKey(name: "agent_LicenseExpiry")
//     String? agentLicenseExpiry;
//     @JsonKey(name: "agent_EmergencyContactName")
//     String? agentEmergencyContactName;
//     @JsonKey(name: "agent_AreaofWorking")
//     dynamic agentAreaofWorking;
//     @JsonKey(name: "agent_Address")
//     String? agentAddress;
//     @JsonKey(name: "agent_Contact")
//     String? agentContact;
//     @JsonKey(name: "agent_LicenseNumber")
//     String? agentLicenseNumber;
//     @JsonKey(name: "agent_RegistraionExpiry")
//     dynamic agentRegistraionExpiry;
//     @JsonKey(name: "agent_EmergencyContactDetails")
//     String? agentEmergencyContactDetails;
//     @JsonKey(name: "agent_Description")
//     String? agentDescription;
//     @JsonKey(name: "agent_ResidentialAddress")
//     String? agentResidentialAddress;
//     @JsonKey(name: "appraisalEmailLog")
//     dynamic appraisalEmailLog;
//     @JsonKey(name: "userId")
//     int? userId;
//     @JsonKey(name: "propertyContactId")
//     int? propertyContactId;
//     @JsonKey(name: "isPropertyEnlist")
//     dynamic isPropertyEnlist;
//     @JsonKey(name: "propertyEnlistDate")
//     dynamic propertyEnlistDate;
//     @JsonKey(name: "propertyContactName")
//     String? propertyContactName;
//     @JsonKey(name: "propertyContactUID")
//     String? propertyContactUid;
//     @JsonKey(name: "hastoDeletePictures")
//     dynamic hastoDeletePictures;
//     @JsonKey(name: "hastoDeleteFloorPictures")
//     dynamic hastoDeleteFloorPictures;
//     @JsonKey(name: "contactCompanyName")
//     dynamic contactCompanyName;
//     @JsonKey(name: "primaryContactName")
//     String? primaryContactName;
//     @JsonKey(name: "isLeasedSold")
//     bool? isLeasedSold;
//     @JsonKey(name: "suburb")
//     String? suburb;
//     @JsonKey(name: "ownerAccountFolio")
//     String? ownerAccountFolio;
//     @JsonKey(name: "propertyName")
//     dynamic propertyName;
//     @JsonKey(name: "note")
//     dynamic note;
//     @JsonKey(name: "propertyGooglePlacesLocation")
//     String? propertyGooglePlacesLocation;
//     @JsonKey(name: "propertyGooglePlacesLocationLat")
//     dynamic propertyGooglePlacesLocationLat;
//     @JsonKey(name: "propertyGooglePlacesLocationLong")
//     dynamic propertyGooglePlacesLocationLong;
//     @JsonKey(name: "getFormatedAddress")
//     String? getFormatedAddress;
//     @JsonKey(name: "state")
//     String? state;
//     @JsonKey(name: "postCode")
//     String? postCode;
//     @JsonKey(name: "propertySaleRental")
//     dynamic propertySaleRental;
//     @JsonKey(name: "propertyOccupiedTenanted")
//     dynamic propertyOccupiedTenanted;
//     @JsonKey(name: "propertySaleRentalList")
//     dynamic propertySaleRentalList;
//     @JsonKey(name: "propertyOccupiedTenantedList")
//     dynamic propertyOccupiedTenantedList;
//     @JsonKey(name: "streetName")
//     String? streetName;
//     @JsonKey(name: "unitNumber")
//     String? unitNumber;
//     @JsonKey(name: "streetNumber")
//     String? streetNumber;
//     @JsonKey(name: "propertyDescription")
//     dynamic propertyDescription;
//     @JsonKey(name: "propertyReferenceField")
//     dynamic propertyReferenceField;
//     @JsonKey(name: "countBedrooms")
//     dynamic countBedrooms;
//     @JsonKey(name: "countCarParking")
//     int? countCarParking;
//     @JsonKey(name: "countBathrooms")
//     dynamic countBathrooms;
//     @JsonKey(name: "propertyType")
//     String? propertyType;
//     @JsonKey(name: "propertyAgreementType")
//     dynamic propertyAgreementType;
//     @JsonKey(name: "sPropertyType")
//     String? sPropertyType;
//     @JsonKey(name: "propertyLandAreaL")
//     int? propertyLandAreaL;
//     @JsonKey(name: "propertyLandAreaTypeList")
//     dynamic propertyLandAreaTypeList;
//     @JsonKey(name: "propertyLandAreaW")
//     int? propertyLandAreaW;
//     @JsonKey(name: "propertyBuildingTypeLotplan")
//     dynamic propertyBuildingTypeLotplan;
//     @JsonKey(name: "propertyBuildingTypeLotplanName")
//     dynamic propertyBuildingTypeLotplanName;
//     @JsonKey(name: "propertyBuildingTypeYearBuilt")
//     dynamic propertyBuildingTypeYearBuilt;
//     @JsonKey(name: "propertyBuildingTypeYearBuiltName")
//     dynamic propertyBuildingTypeYearBuiltName;
//     @JsonKey(name: "propertyBuildingTypeYearBuiltList")
//     List<PropertyBuildingTypeYearBuiltList>? propertyBuildingTypeYearBuiltList;
//     @JsonKey(name: "propertyBuildingTypeZoning")
//     dynamic propertyBuildingTypeZoning;
//     @JsonKey(name: "propertyBuildingTypeZoningName")
//     dynamic propertyBuildingTypeZoningName;
//     @JsonKey(name: "propertySoldDate")
//     dynamic propertySoldDate;
//     @JsonKey(name: "propertySoldPrice")
//     dynamic propertySoldPrice;
//     @JsonKey(name: "createdDate")
//     String? createdDate;
//     @JsonKey(name: "isDeleted")
//     dynamic isDeleted;
//     @JsonKey(name: "deletedOn")
//     dynamic deletedOn;
//     @JsonKey(name: "isApproved")
//     dynamic isApproved;
//     @JsonKey(name: "isPropertyScrap")
//     dynamic isPropertyScrap;
//     @JsonKey(name: "isRemoveFromList")
//     dynamic isRemoveFromList;
//     @JsonKey(name: "isAddedByAffiliate")
//     bool? isAddedByAffiliate;
//     @JsonKey(name: "approvedOn")
//     dynamic approvedOn;
//     @JsonKey(name: "propertyPrice")
//     dynamic propertyPrice;
//     @JsonKey(name: "propertySellerFirmName")
//     dynamic propertySellerFirmName;
//     @JsonKey(name: "propertySellerPrincipalName")
//     dynamic propertySellerPrincipalName;
//     @JsonKey(name: "propertySellerAddress")
//     dynamic propertySellerAddress;
//     @JsonKey(name: "propertySellerEmail")
//     dynamic propertySellerEmail;
//     @JsonKey(name: "propertySellerPhone")
//     dynamic propertySellerPhone;
//     @JsonKey(name: "propertySellerFax")
//     dynamic propertySellerFax;
//     @JsonKey(name: "propertyBuyerFirmName")
//     dynamic propertyBuyerFirmName;
//     @JsonKey(name: "propertyBuyerPrincipalName")
//     dynamic propertyBuyerPrincipalName;
//     @JsonKey(name: "propertyBuyerAddress")
//     dynamic propertyBuyerAddress;
//     @JsonKey(name: "propertyBuyerEmail")
//     dynamic propertyBuyerEmail;
//     @JsonKey(name: "propertyBuyerPhone")
//     dynamic propertyBuyerPhone;
//     @JsonKey(name: "propertyBuyerFax")
//     dynamic propertyBuyerFax;
//     @JsonKey(name: "propertySellerConvyencor")
//     dynamic propertySellerConvyencor;
//     @JsonKey(name: "propertyBuyerConvyencor")
//     dynamic propertyBuyerConvyencor;
//     @JsonKey(name: "floorPlan_Byte")
//     dynamic floorPlanByte;
//     @JsonKey(name: "floorPlan_Path")
//     dynamic floorPlanPath;
//     @JsonKey(name: "listingDetails")
//     List<dynamic>? listingDetails;
//     @JsonKey(name: "propertyDocuments")
//     List<dynamic>? propertyDocuments;
//     @JsonKey(name: "agreements")
//     List<dynamic>? agreements;
//     @JsonKey(name: "saleAgreement")
//     dynamic saleAgreement;
//     @JsonKey(name: "managementAgreement")
//     dynamic managementAgreement;
//     @JsonKey(name: "tenantAgreement")
//     dynamic tenantAgreement;
//     @JsonKey(name: "verificationProofs")
//     dynamic verificationProofs;
//     @JsonKey(name: "propertyPictures")
//     List<dynamic>? propertyPictures;
//     @JsonKey(name: "externalId1")
//     dynamic externalId1;
//     @JsonKey(name: "externalId2")
//     dynamic externalId2;
//     @JsonKey(name: "externalId3")
//     dynamic externalId3;
//     @JsonKey(name: "webRootPath")
//     dynamic webRootPath;
//     @JsonKey(name: "propertyLegalDetail")
//     dynamic propertyLegalDetail;
//     @JsonKey(name: "purpose")
//     String? purpose;
//     @JsonKey(name: "ePurpose")
//     int? ePurpose;
//     @JsonKey(name: "purposeName")
//     dynamic purposeName;
//     @JsonKey(name: "energyRating")
//     dynamic energyRating;
//     @JsonKey(name: "energyRatingName")
//     dynamic energyRatingName;
//     @JsonKey(name: "countEnsuites")
//     int? countEnsuites;
//     @JsonKey(name: "countToilets")
//     int? countToilets;
//     @JsonKey(name: "countGarageSpace")
//     int? countGarageSpace;
//     @JsonKey(name: "countLivingAreas")
//     int? countLivingAreas;
//     @JsonKey(name: "balcony")
//     bool? balcony;
//     @JsonKey(name: "deck")
//     bool? deck;
//     @JsonKey(name: "outdoorEntertainmentArea")
//     bool? outdoorEntertainmentArea;
//     @JsonKey(name: "remoteGarage")
//     bool? remoteGarage;
//     @JsonKey(name: "shed")
//     bool? shed;
//     @JsonKey(name: "swimmmingPoolInGround")
//     bool? swimmmingPoolInGround;
//     @JsonKey(name: "coutryard")
//     bool? coutryard;
//     @JsonKey(name: "fullyFenced")
//     bool? fullyFenced;
//     @JsonKey(name: "outsideSpa")
//     bool? outsideSpa;
//     @JsonKey(name: "secureParking")
//     bool? secureParking;
//     @JsonKey(name: "swimmmingPoolAboveGround")
//     bool? swimmmingPoolAboveGround;
//     @JsonKey(name: "tennisCourt")
//     bool? tennisCourt;
//     @JsonKey(name: "alarmSystem")
//     bool? alarmSystem;
//     @JsonKey(name: "builtInWardrobes")
//     bool? builtInWardrobes;
//     @JsonKey(name: "ductedVacuumSystem")
//     bool? ductedVacuumSystem;
//     @JsonKey(name: "gym")
//     bool? gym;
//     @JsonKey(name: "intercom")
//     bool? intercom;
//     @JsonKey(name: "rumpusRoom")
//     bool? rumpusRoom;
//     @JsonKey(name: "workshop")
//     bool? workshop;
//     @JsonKey(name: "broadbandInternetAvailable")
//     bool? broadbandInternetAvailable;
//     @JsonKey(name: "dishwasher")
//     bool? dishwasher;
//     @JsonKey(name: "floorboards")
//     bool? floorboards;
//     @JsonKey(name: "insideSpa")
//     bool? insideSpa;
//     @JsonKey(name: "payTVAccess")
//     bool? payTvAccess;
//     @JsonKey(name: "study")
//     bool? study;
//     @JsonKey(name: "airConditioning")
//     bool? airConditioning;
//     @JsonKey(name: "ductedHeating")
//     bool? ductedHeating;
//     @JsonKey(name: "gasHeating")
//     bool? gasHeating;
//     @JsonKey(name: "openFireplace")
//     bool? openFireplace;
//     @JsonKey(name: "splitSystemAirConditioning")
//     bool? splitSystemAirConditioning;
//     @JsonKey(name: "ductedCooling")
//     bool? ductedCooling;
//     @JsonKey(name: "evaporativeCooling")
//     bool? evaporativeCooling;
//     @JsonKey(name: "hydraulicHeating")
//     bool? hydraulicHeating;
//     @JsonKey(name: "reverseCycleAirConditioning")
//     bool? reverseCycleAirConditioning;
//     @JsonKey(name: "splitSystemHeating")
//     bool? splitSystemHeating;
//     @JsonKey(name: "greyWaterSystem")
//     bool? greyWaterSystem;
//     @JsonKey(name: "solarPanels")
//     bool? solarPanels;
//     @JsonKey(name: "solarHotWater")
//     bool? solarHotWater;
//     @JsonKey(name: "waterTank")
//     bool? waterTank;
//     @JsonKey(name: "showBasicDetails")
//     bool? showBasicDetails;
//     @JsonKey(name: "propertyArea")
//     dynamic propertyArea;
//     @JsonKey(name: "secondaryContacts")
//     dynamic secondaryContacts;
//     @JsonKey(name: "imagesNameArray")
//     dynamic imagesNameArray;
//     @JsonKey(name: "floorImagesNameArray")
//     dynamic floorImagesNameArray;
//     @JsonKey(name: "propertyNotes")
//     List<dynamic>? propertyNotes;
//     @JsonKey(name: "cmaReportPath")
//     dynamic cmaReportPath;
//     @JsonKey(name: "appraisalUniqueId")
//     dynamic appraisalUniqueId;
//     @JsonKey(name: "isDraft")
//     dynamic isDraft;
//     @JsonKey(name: "recommededPriceFrom")
//     dynamic recommededPriceFrom;
//     @JsonKey(name: "recommededPriceTo")
//     dynamic recommededPriceTo;
//     @JsonKey(name: "cmaReportPrice")
//     dynamic cmaReportPrice;
//     @JsonKey(name: "propertyStatusStage")
//     int? propertyStatusStage;
//     @JsonKey(name: "affiliateId")
//     dynamic affiliateId;
//     @JsonKey(name: "leadOnProgress")
//     bool? leadOnProgress;
//     @JsonKey(name: "uploadOnPM")
//     bool? uploadOnPm;
//     @JsonKey(name: "inspectionDue")
//     dynamic inspectionDue;
//     @JsonKey(name: "inspectionFrequency")
//     dynamic inspectionFrequency;
//     @JsonKey(name: "inspectionFrequencyType")
//     dynamic inspectionFrequencyType;
//     @JsonKey(name: "listAppraisalNotes")
//     dynamic listAppraisalNotes;
//     @JsonKey(name: "listAppraisalFollowup")
//     dynamic listAppraisalFollowup;
//     @JsonKey(name: "appraisalModel")
//     dynamic appraisalModel;
//     @JsonKey(name: "appraisalModellist")
//     List<dynamic>? appraisalModellist;
//     @JsonKey(name: "addUpdateOfferModel")
//     dynamic addUpdateOfferModel;
//     @JsonKey(name: "userType")
//     dynamic userType;
//     @JsonKey(name: "agentList")
//     dynamic agentList;
//     @JsonKey(name: "agentPropertiesModel")
//     List<dynamic>? agentPropertiesModel;
//     @JsonKey(name: "isWishlist")
//     bool? isWishlist;
//     @JsonKey(name: "hasSolicitorDetails")
//     bool? hasSolicitorDetails;
//     @JsonKey(name: "contactlistModel")
//     List<ContactlistModel>? contactlistModel;
//     @JsonKey(name: "contactHistoryList")
//     List<dynamic>? contactHistoryList;
//     @JsonKey(name: "hdnPrimaryContact")
//     dynamic hdnPrimaryContact;
//     @JsonKey(name: "primaryContactEmail")
//     String? primaryContactEmail;
//     @JsonKey(name: "propertyEnquiryCount")
//     int? propertyEnquiryCount;
//     @JsonKey(name: "agreementType")
//     dynamic agreementType;
//     @JsonKey(name: "propertyStatus")
//     dynamic propertyStatus;
//     @JsonKey(name: "isNew")
//     int? isNew;
//     @JsonKey(name: "isDualAgent")
//     bool? isDualAgent;
//     @JsonKey(name: "leadAgent")
//     dynamic leadAgent;
//     @JsonKey(name: "dualAgent")
//     dynamic dualAgent;
//     @JsonKey(name: "dualAgentName")
//     String? dualAgentName;
//     @JsonKey(name: "showText")
//     dynamic showText;
//     @JsonKey(name: "isShowPrice")
//     bool? isShowPrice;
//     @JsonKey(name: "isOpenHome")
//     dynamic isOpenHome;
//     @JsonKey(name: "startTime")
//     dynamic startTime;
//     @JsonKey(name: "endTime")
//     dynamic endTime;
//     @JsonKey(name: "openHomeuniqueId")
//     dynamic openHomeuniqueId;
//     @JsonKey(name: "eventDate")
//     dynamic eventDate;
//     @JsonKey(name: "openHomeListingModel")
//     dynamic openHomeListingModel;
//     @JsonKey(name: "addUpdatesPropertyOwnersModel")
//     AddUpdatesPropertyOwnersModel? addUpdatesPropertyOwnersModel;
//     @JsonKey(name: "addUpdatePropertyAttributesModel")
//     AddUpdatePropertyAttributesModel? addUpdatePropertyAttributesModel;
//     @JsonKey(name: "addUpdatePropertyAdditionalDetailsModel")
//     AddUpdatePropertyAdditionalDetailsModel? addUpdatePropertyAdditionalDetailsModel;
//     @JsonKey(name: "addUpdatePropertyLegalDetailsModel")
//     AddUpdatePropertyLegalDetailsModel? addUpdatePropertyLegalDetailsModel;
//     @JsonKey(name: "addUpdatePropertyDocumentModel")
//     AddUpdatePropertyDocumentModel? addUpdatePropertyDocumentModel;
//     @JsonKey(name: "addContactDetails")
//     dynamic addContactDetails;
//     @JsonKey(name: "tenantDetails")
//     dynamic tenantDetails;
//     @JsonKey(name: "tenantFolioDetails")
//     dynamic tenantFolioDetails;
//     @JsonKey(name: "rentPrice")
//     dynamic rentPrice;
//     @JsonKey(name: "rentTenure")
//     dynamic rentTenure;
//     @JsonKey(name: "reaUploadId")
//     dynamic reaUploadId;
//     @JsonKey(name: "domainUploadId")
//     dynamic domainUploadId;
//     @JsonKey(name: "listingStatus")
//     dynamic listingStatus;
//     @JsonKey(name: "isCommercial")
//     bool? isCommercial;
//     @JsonKey(name: "saveUpload")
//     dynamic saveUpload;
//     @JsonKey(name: "isWaitingForApproval")
//     bool? isWaitingForApproval;
//     @JsonKey(name: "waitingOperation")
//     dynamic waitingOperation;
//     @JsonKey(name: "waitingPortalsToUpload")
//     dynamic waitingPortalsToUpload;
//     @JsonKey(name: "isPrincipleLogged")
//     bool? isPrincipleLogged;
//     @JsonKey(name: "isAppraisalAdded")
//     bool? isAppraisalAdded;
//     @JsonKey(name: "isAgreementuploaded")
//     bool? isAgreementuploaded;
//     @JsonKey(name: "isCOSUploaded")
//     bool? isCosUploaded;
//     @JsonKey(name: "isListedProperty")
//     bool? isListedProperty;
//     @JsonKey(name: "saleLeaseAgreementUploaded")
//     bool? saleLeaseAgreementUploaded;
//     @JsonKey(name: "leasedSoldProperty")
//     bool? leasedSoldProperty;
//     @JsonKey(name: "isPropertyLost")
//     bool? isPropertyLost;
//     @JsonKey(name: "followUpDate")
//     dynamic followUpDate;
//     @JsonKey(name: "addContact")
//     bool? addContact;
//     @JsonKey(name: "updateHistories")
//     List<UpdateHistory>? updateHistories;
//     @JsonKey(name: "ownerFolioDetails")
//     OwnerFolioDetails? ownerFolioDetails;
//     @JsonKey(name: "redirectUrl")
//     dynamic redirectUrl;

//     PropertyDetailModel({
//         this.viewType,
//         this.propertyUniqueId,
//         this.propertyImageSequence,
//         this.propertyFloorImageSequence,
//         this.uploadDocumentNameArray,
//         this.propertyPics,
//         this.contactsList,
//         this.countofEnquiry,
//         this.countofopenhome,
//         this.countofsaleoffers,
//         this.countofRental,
//         this.openHomeList,
//         this.uploadedImagesName,
//         this.floorPics,
//         this.uploadedFloorImagesName,
//         this.pageMode,
//         this.uploadedDocuments,
//         this.uploadedImages,
//         this.location,
//         this.propertyHeading,
//         this.propertyId,
//         this.agencyId,
//         this.agencyLogo,
//         this.agencyBrandColor,
//         this.agencyUniqueId,
//         this.agencyName,
//         this.address,
//         this.agentId,
//         this.agentPhotoPath,
//         this.agentName,
//         this.agentEmail,
//         this.agentTitle,
//         this.agentUniqueId,
//         this.agentYearsOfExperience,
//         this.agentLicenseExpiry,
//         this.agentEmergencyContactName,
//         this.agentAreaofWorking,
//         this.agentAddress,
//         this.agentContact,
//         this.agentLicenseNumber,
//         this.agentRegistraionExpiry,
//         this.agentEmergencyContactDetails,
//         this.agentDescription,
//         this.agentResidentialAddress,
//         this.appraisalEmailLog,
//         this.userId,
//         this.propertyContactId,
//         this.isPropertyEnlist,
//         this.propertyEnlistDate,
//         this.propertyContactName,
//         this.propertyContactUid,
//         this.hastoDeletePictures,
//         this.hastoDeleteFloorPictures,
//         this.contactCompanyName,
//         this.primaryContactName,
//         this.isLeasedSold,
//         this.suburb,
//         this.ownerAccountFolio,
//         this.propertyName,
//         this.note,
//         this.propertyGooglePlacesLocation,
//         this.propertyGooglePlacesLocationLat,
//         this.propertyGooglePlacesLocationLong,
//         this.getFormatedAddress,
//         this.state,
//         this.postCode,
//         this.propertySaleRental,
//         this.propertyOccupiedTenanted,
//         this.propertySaleRentalList,
//         this.propertyOccupiedTenantedList,
//         this.streetName,
//         this.unitNumber,
//         this.streetNumber,
//         this.propertyDescription,
//         this.propertyReferenceField,
//         this.countBedrooms,
//         this.countCarParking,
//         this.countBathrooms,
//         this.propertyType,
//         this.propertyAgreementType,
//         this.sPropertyType,
//         this.propertyLandAreaL,
//         this.propertyLandAreaTypeList,
//         this.propertyLandAreaW,
//         this.propertyBuildingTypeLotplan,
//         this.propertyBuildingTypeLotplanName,
//         this.propertyBuildingTypeYearBuilt,
//         this.propertyBuildingTypeYearBuiltName,
//         this.propertyBuildingTypeYearBuiltList,
//         this.propertyBuildingTypeZoning,
//         this.propertyBuildingTypeZoningName,
//         this.propertySoldDate,
//         this.propertySoldPrice,
//         this.createdDate,
//         this.isDeleted,
//         this.deletedOn,
//         this.isApproved,
//         this.isPropertyScrap,
//         this.isRemoveFromList,
//         this.isAddedByAffiliate,
//         this.approvedOn,
//         this.propertyPrice,
//         this.propertySellerFirmName,
//         this.propertySellerPrincipalName,
//         this.propertySellerAddress,
//         this.propertySellerEmail,
//         this.propertySellerPhone,
//         this.propertySellerFax,
//         this.propertyBuyerFirmName,
//         this.propertyBuyerPrincipalName,
//         this.propertyBuyerAddress,
//         this.propertyBuyerEmail,
//         this.propertyBuyerPhone,
//         this.propertyBuyerFax,
//         this.propertySellerConvyencor,
//         this.propertyBuyerConvyencor,
//         this.floorPlanByte,
//         this.floorPlanPath,
//         this.listingDetails,
//         this.propertyDocuments,
//         this.agreements,
//         this.saleAgreement,
//         this.managementAgreement,
//         this.tenantAgreement,
//         this.verificationProofs,
//         this.propertyPictures,
//         this.externalId1,
//         this.externalId2,
//         this.externalId3,
//         this.webRootPath,
//         this.propertyLegalDetail,
//         this.purpose,
//         this.ePurpose,
//         this.purposeName,
//         this.energyRating,
//         this.energyRatingName,
//         this.countEnsuites,
//         this.countToilets,
//         this.countGarageSpace,
//         this.countLivingAreas,
//         this.balcony,
//         this.deck,
//         this.outdoorEntertainmentArea,
//         this.remoteGarage,
//         this.shed,
//         this.swimmmingPoolInGround,
//         this.coutryard,
//         this.fullyFenced,
//         this.outsideSpa,
//         this.secureParking,
//         this.swimmmingPoolAboveGround,
//         this.tennisCourt,
//         this.alarmSystem,
//         this.builtInWardrobes,
//         this.ductedVacuumSystem,
//         this.gym,
//         this.intercom,
//         this.rumpusRoom,
//         this.workshop,
//         this.broadbandInternetAvailable,
//         this.dishwasher,
//         this.floorboards,
//         this.insideSpa,
//         this.payTvAccess,
//         this.study,
//         this.airConditioning,
//         this.ductedHeating,
//         this.gasHeating,
//         this.openFireplace,
//         this.splitSystemAirConditioning,
//         this.ductedCooling,
//         this.evaporativeCooling,
//         this.hydraulicHeating,
//         this.reverseCycleAirConditioning,
//         this.splitSystemHeating,
//         this.greyWaterSystem,
//         this.solarPanels,
//         this.solarHotWater,
//         this.waterTank,
//         this.showBasicDetails,
//         this.propertyArea,
//         this.secondaryContacts,
//         this.imagesNameArray,
//         this.floorImagesNameArray,
//         this.propertyNotes,
//         this.cmaReportPath,
//         this.appraisalUniqueId,
//         this.isDraft,
//         this.recommededPriceFrom,
//         this.recommededPriceTo,
//         this.cmaReportPrice,
//         this.propertyStatusStage,
//         this.affiliateId,
//         this.leadOnProgress,
//         this.uploadOnPm,
//         this.inspectionDue,
//         this.inspectionFrequency,
//         this.inspectionFrequencyType,
//         this.listAppraisalNotes,
//         this.listAppraisalFollowup,
//         this.appraisalModel,
//         this.appraisalModellist,
//         this.addUpdateOfferModel,
//         this.userType,
//         this.agentList,
//         this.agentPropertiesModel,
//         this.isWishlist,
//         this.hasSolicitorDetails,
//         this.contactlistModel,
//         this.contactHistoryList,
//         this.hdnPrimaryContact,
//         this.primaryContactEmail,
//         this.propertyEnquiryCount,
//         this.agreementType,
//         this.propertyStatus,
//         this.isNew,
//         this.isDualAgent,
//         this.leadAgent,
//         this.dualAgent,
//         this.dualAgentName,
//         this.showText,
//         this.isShowPrice,
//         this.isOpenHome,
//         this.startTime,
//         this.endTime,
//         this.openHomeuniqueId,
//         this.eventDate,
//         this.openHomeListingModel,
//         this.addUpdatesPropertyOwnersModel,
//         this.addUpdatePropertyAttributesModel,
//         this.addUpdatePropertyAdditionalDetailsModel,
//         this.addUpdatePropertyLegalDetailsModel,
//         this.addUpdatePropertyDocumentModel,
//         this.addContactDetails,
//         this.tenantDetails,
//         this.tenantFolioDetails,
//         this.rentPrice,
//         this.rentTenure,
//         this.reaUploadId,
//         this.domainUploadId,
//         this.listingStatus,
//         this.isCommercial,
//         this.saveUpload,
//         this.isWaitingForApproval,
//         this.waitingOperation,
//         this.waitingPortalsToUpload,
//         this.isPrincipleLogged,
//         this.isAppraisalAdded,
//         this.isAgreementuploaded,
//         this.isCosUploaded,
//         this.isListedProperty,
//         this.saleLeaseAgreementUploaded,
//         this.leasedSoldProperty,
//         this.isPropertyLost,
//         this.followUpDate,
//         this.addContact,
//         this.updateHistories,
//         this.ownerFolioDetails,
//         this.redirectUrl,
//     });

//     factory PropertyDetailModel.fromJson(Map<String, dynamic> json) => _$PropertyDetailModelFromJson(json);

//     Map<String, dynamic> toJson() => _$PropertyDetailModelToJson(this);
// }

// @JsonSerializable()
// class AddUpdatePropertyAdditionalDetailsModel {
//     @JsonKey(name: "propertyImageSequence")
//     dynamic propertyImageSequence;
//     @JsonKey(name: "propertyFloorImageSequence")
//     dynamic propertyFloorImageSequence;
//     @JsonKey(name: "propertyUniqueID")
//     String? propertyUniqueId;
//     @JsonKey(name: "propertyHeading")
//     dynamic propertyHeading;
//     @JsonKey(name: "propertyBuildingTypeZoning")
//     dynamic propertyBuildingTypeZoning;
//     @JsonKey(name: "propertyLandAreaL")
//     int? propertyLandAreaL;
//     @JsonKey(name: "propertyLandAreaW")
//     int? propertyLandAreaW;
//     @JsonKey(name: "propertyLandAreaTypeList")
//     dynamic propertyLandAreaTypeList;
//     @JsonKey(name: "propertyDescription")
//     dynamic propertyDescription;
//     @JsonKey(name: "propertyPics")
//     List<dynamic>? propertyPics;
//     @JsonKey(name: "floorPics")
//     List<dynamic>? floorPics;
//     @JsonKey(name: "hastoDeletePictures")
//     dynamic hastoDeletePictures;
//     @JsonKey(name: "hastoDeleteFloorPictures")
//     dynamic hastoDeleteFloorPictures;
//     @JsonKey(name: "uploadedImages")
//     dynamic uploadedImages;
//     @JsonKey(name: "imagesNameArray")
//     dynamic imagesNameArray;
//     @JsonKey(name: "floorImagesNameArray")
//     dynamic floorImagesNameArray;
//     @JsonKey(name: "uploadedFloorImagesName")
//     dynamic uploadedFloorImagesName;
//     @JsonKey(name: "uploadedImagesName")
//     dynamic uploadedImagesName;

//     AddUpdatePropertyAdditionalDetailsModel({
//         this.propertyImageSequence,
//         this.propertyFloorImageSequence,
//         this.propertyUniqueId,
//         this.propertyHeading,
//         this.propertyBuildingTypeZoning,
//         this.propertyLandAreaL,
//         this.propertyLandAreaW,
//         this.propertyLandAreaTypeList,
//         this.propertyDescription,
//         this.propertyPics,
//         this.floorPics,
//         this.hastoDeletePictures,
//         this.hastoDeleteFloorPictures,
//         this.uploadedImages,
//         this.imagesNameArray,
//         this.floorImagesNameArray,
//         this.uploadedFloorImagesName,
//         this.uploadedImagesName,
//     });

//     factory AddUpdatePropertyAdditionalDetailsModel.fromJson(Map<String, dynamic> json) => _$AddUpdatePropertyAdditionalDetailsModelFromJson(json);

// }

// @JsonSerializable()
// class AddUpdatePropertyAttributesModel {
//     @JsonKey(name: "propertyUniqueID")
//     String? propertyUniqueId;
//     @JsonKey(name: "countBedrooms")
//     dynamic countBedrooms;
//     @JsonKey(name: "countCarParking")
//     int? countCarParking;
//     @JsonKey(name: "countBathrooms")
//     dynamic countBathrooms;
//     @JsonKey(name: "countEnsuites")
//     int? countEnsuites;
//     @JsonKey(name: "countToilets")
//     int? countToilets;
//     @JsonKey(name: "countGarageSpace")
//     int? countGarageSpace;
//     @JsonKey(name: "countLivingAreas")
//     int? countLivingAreas;
//     @JsonKey(name: "balcony")
//     bool? balcony;
//     @JsonKey(name: "deck")
//     bool? deck;
//     @JsonKey(name: "outdoorEntertainmentArea")
//     bool? outdoorEntertainmentArea;
//     @JsonKey(name: "remoteGarage")
//     bool? remoteGarage;
//     @JsonKey(name: "shed")
//     bool? shed;
//     @JsonKey(name: "swimmmingPoolInGround")
//     bool? swimmmingPoolInGround;
//     @JsonKey(name: "coutryard")
//     bool? coutryard;
//     @JsonKey(name: "fullyFenced")
//     bool? fullyFenced;
//     @JsonKey(name: "outsideSpa")
//     bool? outsideSpa;
//     @JsonKey(name: "secureParking")
//     bool? secureParking;
//     @JsonKey(name: "swimmmingPoolAboveGround")
//     bool? swimmmingPoolAboveGround;
//     @JsonKey(name: "tennisCourt")
//     bool? tennisCourt;
//     @JsonKey(name: "alarmSystem")
//     bool? alarmSystem;
//     @JsonKey(name: "builtInWardrobes")
//     bool? builtInWardrobes;
//     @JsonKey(name: "ductedVacuumSystem")
//     bool? ductedVacuumSystem;
//     @JsonKey(name: "gym")
//     bool? gym;
//     @JsonKey(name: "intercom")
//     bool? intercom;
//     @JsonKey(name: "rumpusRoom")
//     bool? rumpusRoom;
//     @JsonKey(name: "workshop")
//     bool? workshop;
//     @JsonKey(name: "broadbandInternetAvailable")
//     bool? broadbandInternetAvailable;
//     @JsonKey(name: "dishwasher")
//     bool? dishwasher;
//     @JsonKey(name: "floorboards")
//     bool? floorboards;
//     @JsonKey(name: "insideSpa")
//     bool? insideSpa;
//     @JsonKey(name: "payTVAccess")
//     bool? payTvAccess;
//     @JsonKey(name: "study")
//     bool? study;
//     @JsonKey(name: "airConditioning")
//     bool? airConditioning;
//     @JsonKey(name: "ductedHeating")
//     bool? ductedHeating;
//     @JsonKey(name: "gasHeating")
//     bool? gasHeating;
//     @JsonKey(name: "openFireplace")
//     bool? openFireplace;
//     @JsonKey(name: "splitSystemAirConditioning")
//     bool? splitSystemAirConditioning;
//     @JsonKey(name: "ductedCooling")
//     bool? ductedCooling;
//     @JsonKey(name: "evaporativeCooling")
//     bool? evaporativeCooling;
//     @JsonKey(name: "hydraulicHeating")
//     bool? hydraulicHeating;
//     @JsonKey(name: "reverseCycleAirConditioning")
//     bool? reverseCycleAirConditioning;
//     @JsonKey(name: "splitSystemHeating")
//     bool? splitSystemHeating;
//     @JsonKey(name: "greyWaterSystem")
//     bool? greyWaterSystem;
//     @JsonKey(name: "solarPanels")
//     bool? solarPanels;
//     @JsonKey(name: "solarHotWater")
//     bool? solarHotWater;
//     @JsonKey(name: "waterTank")
//     bool? waterTank;
//     @JsonKey(name: "showBasicDetails")
//     bool? showBasicDetails;

//     AddUpdatePropertyAttributesModel({
//         this.propertyUniqueId,
//         this.countBedrooms,
//         this.countCarParking,
//         this.countBathrooms,
//         this.countEnsuites,
//         this.countToilets,
//         this.countGarageSpace,
//         this.countLivingAreas,
//         this.balcony,
//         this.deck,
//         this.outdoorEntertainmentArea,
//         this.remoteGarage,
//         this.shed,
//         this.swimmmingPoolInGround,
//         this.coutryard,
//         this.fullyFenced,
//         this.outsideSpa,
//         this.secureParking,
//         this.swimmmingPoolAboveGround,
//         this.tennisCourt,
//         this.alarmSystem,
//         this.builtInWardrobes,
//         this.ductedVacuumSystem,
//         this.gym,
//         this.intercom,
//         this.rumpusRoom,
//         this.workshop,
//         this.broadbandInternetAvailable,
//         this.dishwasher,
//         this.floorboards,
//         this.insideSpa,
//         this.payTvAccess,
//         this.study,
//         this.airConditioning,
//         this.ductedHeating,
//         this.gasHeating,
//         this.openFireplace,
//         this.splitSystemAirConditioning,
//         this.ductedCooling,
//         this.evaporativeCooling,
//         this.hydraulicHeating,
//         this.reverseCycleAirConditioning,
//         this.splitSystemHeating,
//         this.greyWaterSystem,
//         this.solarPanels,
//         this.solarHotWater,
//         this.waterTank,
//         this.showBasicDetails,
//     });

//     factory AddUpdatePropertyAttributesModel.fromJson(Map<String, dynamic> json) => _$AddUpdatePropertyAttributesModelFromJson(json);

//     Map<String, dynamic> toJson() => _$AddUpdatePropertyAttributesModelToJson(this);
// }

// @JsonSerializable()
// class AddUpdatePropertyDocumentModel {
//     @JsonKey(name: "propertyId")
//     int? propertyId;
//     @JsonKey(name: "propertyDocuments")
//     List<dynamic>? propertyDocuments;

//     AddUpdatePropertyDocumentModel({
//         this.propertyId,
//         this.propertyDocuments,
//     });

//     factory AddUpdatePropertyDocumentModel.fromJson(Map<String, dynamic> json) => _$AddUpdatePropertyDocumentModelFromJson(json);

//     Map<String, dynamic> toJson() => _$AddUpdatePropertyDocumentModelToJson(this);
// }

// @JsonSerializable()
// class AddUpdatePropertyLegalDetailsModel {
//     @JsonKey(name: "propertyUniqueID")
//     String? propertyUniqueId;
//     @JsonKey(name: "propertySellerFirmName")
//     dynamic propertySellerFirmName;
//     @JsonKey(name: "propertySellerPrincipalName")
//     dynamic propertySellerPrincipalName;
//     @JsonKey(name: "propertySellerEmail")
//     dynamic propertySellerEmail;
//     @JsonKey(name: "propertySellerPhone")
//     dynamic propertySellerPhone;
//     @JsonKey(name: "propertySellerFax")
//     dynamic propertySellerFax;
//     @JsonKey(name: "propertySellerAddress")
//     dynamic propertySellerAddress;
//     @JsonKey(name: "propertyBuyerFirmName")
//     dynamic propertyBuyerFirmName;
//     @JsonKey(name: "propertyBuyerPrincipalName")
//     dynamic propertyBuyerPrincipalName;
//     @JsonKey(name: "propertyBuyerEmail")
//     dynamic propertyBuyerEmail;
//     @JsonKey(name: "propertyBuyerPhone")
//     dynamic propertyBuyerPhone;
//     @JsonKey(name: "propertyBuyerFax")
//     dynamic propertyBuyerFax;
//     @JsonKey(name: "propertyBuyerAddress")
//     dynamic propertyBuyerAddress;
//     @JsonKey(name: "propertySoldDate")
//     dynamic propertySoldDate;
//     @JsonKey(name: "propertySoldPrice")
//     dynamic propertySoldPrice;

//     AddUpdatePropertyLegalDetailsModel({
//         this.propertyUniqueId,
//         this.propertySellerFirmName,
//         this.propertySellerPrincipalName,
//         this.propertySellerEmail,
//         this.propertySellerPhone,
//         this.propertySellerFax,
//         this.propertySellerAddress,
//         this.propertyBuyerFirmName,
//         this.propertyBuyerPrincipalName,
//         this.propertyBuyerEmail,
//         this.propertyBuyerPhone,
//         this.propertyBuyerFax,
//         this.propertyBuyerAddress,
//         this.propertySoldDate,
//         this.propertySoldPrice,
//     });

//     factory AddUpdatePropertyLegalDetailsModel.fromJson(Map<String, dynamic> json) => _$AddUpdatePropertyLegalDetailsModelFromJson(json);

//     Map<String, dynamic> toJson() => _$AddUpdatePropertyLegalDetailsModelToJson(this);
// }

// @JsonSerializable()
// class AddUpdatesPropertyOwnersModel {
//     @JsonKey(name: "propertyUniqueID")
//     String? propertyUniqueId;
//     @JsonKey(name: "propertyContactName")
//     dynamic propertyContactName;
//     @JsonKey(name: "hdnPrimaryContact")
//     dynamic hdnPrimaryContact;
//     @JsonKey(name: "contactlistModel")
//     List<dynamic>? contactlistModel;
//     @JsonKey(name: "contactlistModelView")
//     List<ContactlistModelView>? contactlistModelView;
//     @JsonKey(name: "contactHistoryList")
//     List<dynamic>? contactHistoryList;
//     @JsonKey(name: "isUpdateOwner")
//     bool? isUpdateOwner;
//     @JsonKey(name: "ismanageOwnership")
//     bool? ismanageOwnership;

//     AddUpdatesPropertyOwnersModel({
//         this.propertyUniqueId,
//         this.propertyContactName,
//         this.hdnPrimaryContact,
//         this.contactlistModel,
//         this.contactlistModelView,
//         this.contactHistoryList,
//         this.isUpdateOwner,
//         this.ismanageOwnership,
//     });

//     factory AddUpdatesPropertyOwnersModel.fromJson(Map<String, dynamic> json) => _$AddUpdatesPropertyOwnersModelFromJson(json);

//     Map<String, dynamic> toJson() => _$AddUpdatesPropertyOwnersModelToJson(this);
// }

// @JsonSerializable()
// class ContactlistModelView {
//     @JsonKey(name: "ownerId")
//     int? ownerId;
//     @JsonKey(name: "contactId")
//     int? contactId;
//     @JsonKey(name: "contactUId")
//     dynamic contactUId;
//     @JsonKey(name: "isPrimary")
//     bool? isPrimary;
//     @JsonKey(name: "contactName")
//     String? contactName;
//     @JsonKey(name: "contactEmail")
//     String? contactEmail;
//     @JsonKey(name: "name")
//     String? name;
//     @JsonKey(name: "firstName")
//     dynamic firstName;
//     @JsonKey(name: "lastName")
//     dynamic lastName;
//     @JsonKey(name: "phone")
//     String? phone;
//     @JsonKey(name: "fromDate")
//     String? fromDate;
//     @JsonKey(name: "toDate")
//     dynamic toDate;
//     @JsonKey(name: "title")
//     dynamic title;
//     @JsonKey(name: "contactType")
//     dynamic contactType;
//     @JsonKey(name: "address")
//     dynamic address;
//     @JsonKey(name: "isVerificationLinkSend")
//     bool? isVerificationLinkSend;
//     @JsonKey(name: "abn")
//     dynamic abn;
//     @JsonKey(name: "companyName")
//     dynamic companyName;
//     @JsonKey(name: "verificationProofs")
//     dynamic verificationProofs;

//     ContactlistModelView({
//         this.ownerId,
//         this.contactId,
//         this.contactUId,
//         this.isPrimary,
//         this.contactName,
//         this.contactEmail,
//         this.name,
//         this.firstName,
//         this.lastName,
//         this.phone,
//         this.fromDate,
//         this.toDate,
//         this.title,
//         this.contactType,
//         this.address,
//         this.isVerificationLinkSend,
//         this.abn,
//         this.companyName,
//         this.verificationProofs,
//     });

//     factory ContactlistModelView.fromJson(Map<String, dynamic> json) => _$ContactlistModelViewFromJson(json);

//     Map<String, dynamic> toJson() => _$ContactlistModelViewToJson(this);
// }

// @JsonSerializable()
// class ContactlistModel {
//     @JsonKey(name: "ownerId")
//     int? ownerId;
//     @JsonKey(name: "contactId")
//     int? contactId;
//     @JsonKey(name: "contactUId")
//     String? contactUId;
//     @JsonKey(name: "isPrimary")
//     bool? isPrimary;
//     @JsonKey(name: "contactName")
//     String? contactName;
//     @JsonKey(name: "contactEmail")
//     String? contactEmail;
//     @JsonKey(name: "name")
//     String? name;
//     @JsonKey(name: "firstName")
//     String? firstName;
//     @JsonKey(name: "lastName")
//     String? lastName;
//     @JsonKey(name: "phone")
//     String? phone;
//     @JsonKey(name: "fromDate")
//     dynamic fromDate;
//     @JsonKey(name: "toDate")
//     dynamic toDate;
//     @JsonKey(name: "title")
//     int? title;
//     @JsonKey(name: "contactType")
//     int? contactType;
//     @JsonKey(name: "address")
//     String? address;
//     @JsonKey(name: "isVerificationLinkSend")
//     bool? isVerificationLinkSend;
//     @JsonKey(name: "abn")
//     dynamic abn;
//     @JsonKey(name: "companyName")
//     dynamic companyName;
//     @JsonKey(name: "verificationProofs")
//     dynamic verificationProofs;

//     ContactlistModel({
//         this.ownerId,
//         this.contactId,
//         this.contactUId,
//         this.isPrimary,
//         this.contactName,
//         this.contactEmail,
//         this.name,
//         this.firstName,
//         this.lastName,
//         this.phone,
//         this.fromDate,
//         this.toDate,
//         this.title,
//         this.contactType,
//         this.address,
//         this.isVerificationLinkSend,
//         this.abn,
//         this.companyName,
//         this.verificationProofs,
//     });

//     factory ContactlistModel.fromJson(Map<String, dynamic> json) => _$ContactlistModelFromJson(json);

//     Map<String, dynamic> toJson() => _$ContactlistModelToJson(this);
// }

// @JsonSerializable()
// class ContactsList {
//     @JsonKey(name: "name")
//     String? name;
//     @JsonKey(name: "uniqueID")
//     String? uniqueId;

//     ContactsList({
//         this.name,
//         this.uniqueId,
//     });

//     factory ContactsList.fromJson(Map<String, dynamic> json) => _$ContactsListFromJson(json);

//     Map<String, dynamic> toJson() => _$ContactsListToJson(this);
// }

// @JsonSerializable()
// class OwnerFolioDetails {
//     @JsonKey(name: "id")
//     int? id;
//     @JsonKey(name: "ownerAccountFolio")
//     String? ownerAccountFolio;
//     @JsonKey(name: "isActive")
//     bool? isActive;
//     @JsonKey(name: "propertyId")
//     int? propertyId;
//     @JsonKey(name: "withholdAmount")
//     int? withholdAmount;
//     @JsonKey(name: "withholdReason")
//     dynamic withholdReason;
//     @JsonKey(name: "disbursementIntervel")
//     int? disbursementIntervel;
//     @JsonKey(name: "totalMoneyLimit")
//     dynamic totalMoneyLimit;
//     @JsonKey(name: "balanceLimit")
//     dynamic balanceLimit;
//     @JsonKey(name: "lastPaymentDate")
//     dynamic lastPaymentDate;
//     @JsonKey(name: "nextDisbursementDate")
//     dynamic nextDisbursementDate;
//     @JsonKey(name: "clientAccess")
//     bool? clientAccess;
//     @JsonKey(name: "balance")
//     int? balance;
//     @JsonKey(name: "fees")
//     List<dynamic>? fees;
//     @JsonKey(name: "paymentMethods")
//     List<dynamic>? paymentMethods;

//     OwnerFolioDetails({
//         this.id,
//         this.ownerAccountFolio,
//         this.isActive,
//         this.propertyId,
//         this.withholdAmount,
//         this.withholdReason,
//         this.disbursementIntervel,
//         this.totalMoneyLimit,
//         this.balanceLimit,
//         this.lastPaymentDate,
//         this.nextDisbursementDate,
//         this.clientAccess,
//         this.balance,
//         this.fees,
//         this.paymentMethods,
//     });

//     factory OwnerFolioDetails.fromJson(Map<String, dynamic> json) => _$OwnerFolioDetailsFromJson(json);

//     Map<String, dynamic> toJson() => _$OwnerFolioDetailsToJson(this);
// }

// @JsonSerializable()
// class PropertyBuildingTypeYearBuiltList {
//     @JsonKey(name: "disabled")
//     bool? disabled;
//     @JsonKey(name: "group")
//     dynamic group;
//     @JsonKey(name: "selected")
//     bool? selected;
//     @JsonKey(name: "text")
//     String? text;
//     @JsonKey(name: "value")
//     String? value;

//     PropertyBuildingTypeYearBuiltList({
//         this.disabled,
//         this.group,
//         this.selected,
//         this.text,
//         this.value,
//     });

//     factory PropertyBuildingTypeYearBuiltList.fromJson(Map<String, dynamic> json) => _$PropertyBuildingTypeYearBuiltListFromJson(json);

//     Map<String, dynamic> toJson() => _$PropertyBuildingTypeYearBuiltListToJson(this);
// }

// @JsonSerializable()
// class UpdateHistory {
//     @JsonKey(name: "userId")
//     int? userId;
//     @JsonKey(name: "createdOn")
//     String? createdOn;
//     @JsonKey(name: "recordType")
//     int? recordType;
//     @JsonKey(name: "referenceId")
//     int? referenceId;
//     @JsonKey(name: "fieldModified")
//     String? fieldModified;
//     @JsonKey(name: "beforeValue")
//     String? beforeValue;
//     @JsonKey(name: "afterValue")
//     String? afterValue;
//     @JsonKey(name: "displayName")
//     String? displayName;
//     @JsonKey(name: "dataTypes")
//     dynamic dataTypes;
//     @JsonKey(name: "userName")
//     String? userName;

//     UpdateHistory({
//         this.userId,
//         this.createdOn,
//         this.recordType,
//         this.referenceId,
//         this.fieldModified,
//         this.beforeValue,
//         this.afterValue,
//         this.displayName,
//         this.dataTypes,
//         this.userName,
//     });

//     factory UpdateHistory.fromJson(Map<String, dynamic> json) => _$UpdateHistoryFromJson(json);

//     Map<String, dynamic> toJson() => _$UpdateHistoryToJson(this);
// }
