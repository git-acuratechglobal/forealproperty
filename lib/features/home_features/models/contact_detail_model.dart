import 'package:json_annotation/json_annotation.dart';

part 'contact_detail_model.g.dart';



@JsonSerializable()
class ContactDetailModel {
    @JsonKey(name: "userId")
    int? userId;
    @JsonKey(name: "supplierId")
    dynamic supplierId;
    @JsonKey(name: "firstName")
    String? firstName;
    @JsonKey(name: "photoByte")
    dynamic photoByte;
    @JsonKey(name: "photo_Path")
    dynamic photoPath;
    @JsonKey(name: "bankReference")
    dynamic bankReference;
    @JsonKey(name: "profile_Croped_Img")
    dynamic profileCropedImg;
    @JsonKey(name: "lastName")
    String? lastName;
    @JsonKey(name: "email")
    String? email;
    @JsonKey(name: "userType")
    int? userType;
    @JsonKey(name: "userRoleID")
    int? userRoleId;
    @JsonKey(name: "subscriptionId")
    int? subscriptionId;
    @JsonKey(name: "agencyUniqueID")
    dynamic agencyUniqueId;
    @JsonKey(name: "address")
    dynamic address;
    @JsonKey(name: "addressPostCode")
    dynamic addressPostCode;
    @JsonKey(name: "addressState")
    dynamic addressState;
    @JsonKey(name: "viewType")
    int? viewType;
    @JsonKey(name: "contact")
    dynamic contact;
    @JsonKey(name: "agencyID")
    dynamic agencyId;
    @JsonKey(name: "agentUniqueId")
    dynamic agentUniqueId;
    @JsonKey(name: "agentId")
    dynamic agentId;
    @JsonKey(name: "webRootPath")
    dynamic webRootPath;
    @JsonKey(name: "agentList")
    dynamic agentList;
    @JsonKey(name: "contactId")
    int? contactId;
    @JsonKey(name: "contactUniqueId")
    String? contactUniqueId;
    @JsonKey(name: "contactDisplayId")
    dynamic contactDisplayId;
    @JsonKey(name: "titleValues")
    dynamic titleValues;
    @JsonKey(name: "birthday")
    dynamic birthday;
    @JsonKey(name: "title")
    dynamic title;
    @JsonKey(name: "contactStatusId")
    dynamic contactStatusId;
    @JsonKey(name: "typeIAM")
    dynamic typeIam;
    @JsonKey(name: "otherDetailsType")
    dynamic otherDetailsType;
    @JsonKey(name: "priceRange")
    dynamic priceRange;
    @JsonKey(name: "anniversary")
    dynamic anniversary;
    @JsonKey(name: "remarks")
    dynamic remarks;
    @JsonKey(name: "notes")
    dynamic notes;
    @JsonKey(name: "isExternal")
    dynamic isExternal;
    @JsonKey(name: "contactStatusValues")
    dynamic contactStatusValues;
    @JsonKey(name: "ddlOtherDetailsType")
    dynamic ddlOtherDetailsType;
    @JsonKey(name: "createdDate")
    String? createdDate;
    @JsonKey(name: "mobileNumber")
    String? mobileNumber;
    @JsonKey(name: "landlineNumber")
    dynamic landlineNumber;
    @JsonKey(name: "landlineNumber1")
    dynamic landlineNumber1;
    @JsonKey(name: "companyAddress")
    dynamic companyAddress;
    @JsonKey(name: "companyName")
    dynamic companyName;
    @JsonKey(name: "propertyAddress")
    dynamic propertyAddress;
    @JsonKey(name: "abn")
    dynamic abn;
    @JsonKey(name: "acn")
    dynamic acn;
    @JsonKey(name: "isMarried")
    bool? isMarried;
    @JsonKey(name: "maritalStatus")
    int? maritalStatus;
    @JsonKey(name: "spouseName")
    dynamic spouseName;
    @JsonKey(name: "spouseMobileNumber")
    dynamic spouseMobileNumber;
    @JsonKey(name: "spouseAddress")
    dynamic spouseAddress;
    @JsonKey(name: "spouseEmail")
    dynamic spouseEmail;
    @JsonKey(name: "isInvestor")
    bool? isInvestor;
    @JsonKey(name: "isDeveloper")
    bool? isDeveloper;
    @JsonKey(name: "isFirstHomeBuyer")
    bool? isFirstHomeBuyer;
    @JsonKey(name: "isSelling")
    bool? isSelling;
    @JsonKey(name: "isRenting")
    bool? isRenting;
    @JsonKey(name: "isBuying")
    bool? isBuying;
    @JsonKey(name: "isSupplier")
    bool? isSupplier;
    @JsonKey(name: "priceRangeValues")
    dynamic priceRangeValues;
    @JsonKey(name: "ddlMaritalStatus")
    dynamic ddlMaritalStatus;
    @JsonKey(name: "postcode")
    dynamic postcode;
    @JsonKey(name: "regions")
    dynamic regions;
    @JsonKey(name: "facebookUrl")
    dynamic facebookUrl;
    @JsonKey(name: "linkedinUrl")
    dynamic linkedinUrl;
    @JsonKey(name: "twitterUrl")
    dynamic twitterUrl;
    @JsonKey(name: "instagramUrl")
    dynamic instagramUrl;
    @JsonKey(name: "isDeleted")
    bool? isDeleted;
    @JsonKey(name: "communicationType")
    dynamic communicationType;
    @JsonKey(name: "isNotice")
    bool? isNotice;
    @JsonKey(name: "isEmail")
    bool? isEmail;
    @JsonKey(name: "isPhone")
    bool? isPhone;
    @JsonKey(name: "loggedUserName")
    dynamic loggedUserName;
    @JsonKey(name: "communicationTypeList")
    dynamic communicationTypeList;
    @JsonKey(name: "idType")
    dynamic idType;
    @JsonKey(name: "idTypeList")
    dynamic idTypeList;
    @JsonKey(name: "idNumber")
    dynamic idNumber;
    @JsonKey(name: "bDocumentImage")
    dynamic bDocumentImage;
    @JsonKey(name: "pDocumentImagePath")
    dynamic pDocumentImagePath;
    @JsonKey(name: "isAddedByAffiliate")
    bool? isAddedByAffiliate;
    @JsonKey(name: "affiliateId")
    dynamic affiliateId;
    @JsonKey(name: "contactType")
    dynamic contactType;
    @JsonKey(name: "contactCategory")
    int? contactCategory;
    @JsonKey(name: "contactTypeList")
    dynamic contactTypeList;
    @JsonKey(name: "enquiryListingModel")
    dynamic enquiryListingModel;
    @JsonKey(name: "sellerEnquiryListingModel")
    dynamic sellerEnquiryListingModel;
    @JsonKey(name: "offerListingModel")
    dynamic offerListingModel;
    @JsonKey(name: "buyerOfferListingModel")
    dynamic buyerOfferListingModel;
    @JsonKey(name: "contactNotes")
    List<ContactNote>? contactNotes;
    @JsonKey(name: "contactChanges")
    dynamic contactChanges;
    @JsonKey(name: "isAgentLogged")
    bool? isAgentLogged;
    @JsonKey(name: "isAffiliateLogged")
    bool? isAffiliateLogged;
    @JsonKey(name: "loggedUserId")
    int? loggedUserId;
    @JsonKey(name: "followupDate")
    dynamic followupDate;
    @JsonKey(name: "note")
    dynamic note;
    @JsonKey(name: "isPrimary")
    dynamic isPrimary;
    @JsonKey(name: "tenantFolioDetails")
    List<dynamic>? tenantFolioDetails;
    @JsonKey(name: "supplierDetails")
    dynamic supplierDetails;
    @JsonKey(name: "propertyOwnerFolioDetails")
    List<dynamic>? propertyOwnerFolioDetails;
    @JsonKey(name: "image")
    String? image;
    @JsonKey(name: "contactReference")
    dynamic contactReference;
    @JsonKey(name: "postCodeName")
    dynamic postCodeName;
    @JsonKey(name: "solicitorFirmName")
    dynamic solicitorFirmName;
    @JsonKey(name: "solicitorPrincipalName")
    dynamic solicitorPrincipalName;
    @JsonKey(name: "solicitorAddress")
    dynamic solicitorAddress;
    @JsonKey(name: "solicitorEmail")
    dynamic solicitorEmail;
    @JsonKey(name: "solicitorPhone")
    dynamic solicitorPhone;
    @JsonKey(name: "solicitorFax")
    dynamic solicitorFax;
    @JsonKey(name: "propertyUniqueId")
    dynamic propertyUniqueId;

    ContactDetailModel({
        this.userId,
        this.supplierId,
        this.firstName,
        this.photoByte,
        this.photoPath,
        this.bankReference,
        this.profileCropedImg,
        this.lastName,
        this.email,
        this.userType,
        this.userRoleId,
        this.subscriptionId,
        this.agencyUniqueId,
        this.address,
        this.addressPostCode,
        this.addressState,
        this.viewType,
        this.contact,
        this.agencyId,
        this.agentUniqueId,
        this.agentId,
        this.webRootPath,
        this.agentList,
        this.contactId,
        this.contactUniqueId,
        this.contactDisplayId,
        this.titleValues,
        this.birthday,
        this.title,
        this.contactStatusId,
        this.typeIam,
        this.otherDetailsType,
        this.priceRange,
        this.anniversary,
        this.remarks,
        this.notes,
        this.isExternal,
        this.contactStatusValues,
        this.ddlOtherDetailsType,
        this.createdDate,
        this.mobileNumber,
        this.landlineNumber,
        this.landlineNumber1,
        this.companyAddress,
        this.companyName,
        this.propertyAddress,
        this.abn,
        this.acn,
        this.isMarried,
        this.maritalStatus,
        this.spouseName,
        this.spouseMobileNumber,
        this.spouseAddress,
        this.spouseEmail,
        this.isInvestor,
        this.isDeveloper,
        this.isFirstHomeBuyer,
        this.isSelling,
        this.isRenting,
        this.isBuying,
        this.isSupplier,
        this.priceRangeValues,
        this.ddlMaritalStatus,
        this.postcode,
        this.regions,
        this.facebookUrl,
        this.linkedinUrl,
        this.twitterUrl,
        this.instagramUrl,
        this.isDeleted,
        this.communicationType,
        this.isNotice,
        this.isEmail,
        this.isPhone,
        this.loggedUserName,
        this.communicationTypeList,
        this.idType,
        this.idTypeList,
        this.idNumber,
        this.bDocumentImage,
        this.pDocumentImagePath,
        this.isAddedByAffiliate,
        this.affiliateId,
        this.contactType,
        this.contactCategory,
        this.contactTypeList,
        this.enquiryListingModel,
        this.sellerEnquiryListingModel,
        this.offerListingModel,
        this.buyerOfferListingModel,
        this.contactNotes,
        this.contactChanges,
        this.isAgentLogged,
        this.isAffiliateLogged,
        this.loggedUserId,
        this.followupDate,
        this.note,
        this.isPrimary,
        this.tenantFolioDetails,
        this.supplierDetails,
        this.propertyOwnerFolioDetails,
        this.image,
        this.contactReference,
        this.postCodeName,
        this.solicitorFirmName,
        this.solicitorPrincipalName,
        this.solicitorAddress,
        this.solicitorEmail,
        this.solicitorPhone,
        this.solicitorFax,
        this.propertyUniqueId,
    });

    factory ContactDetailModel.fromJson(Map<String, dynamic> json) => _$ContactDetailModelFromJson(json);

    Map<String, dynamic> toJson() => _$ContactDetailModelToJson(this);
}

@JsonSerializable()
class ContactNote {
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "contactId")
    int? contactId;
    @JsonKey(name: "createdAt")
    String? createdAt;
    @JsonKey(name: "userId")
    int? userId;
    @JsonKey(name: "userFullName")
    dynamic userFullName;
    @JsonKey(name: "propertyId")
    int? propertyId;
    @JsonKey(name: "propertyAddress")
    dynamic propertyAddress;
    @JsonKey(name: "propertyUniqueId")
    String? propertyUniqueId;
    @JsonKey(name: "noteType")
    int? noteType;
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "isDeleted")
    bool? isDeleted;
    @JsonKey(name: "isPrivate")
    bool? isPrivate;
    @JsonKey(name: "deletedOn")
    String? deletedOn;
    @JsonKey(name: "followupDate")
    dynamic followupDate;

    ContactNote({
        this.id,
        this.contactId,
        this.createdAt,
        this.userId,
        this.userFullName,
        this.propertyId,
        this.propertyAddress,
        this.propertyUniqueId,
        this.noteType,
        this.description,
        this.isDeleted,
        this.isPrivate,
        this.deletedOn,
        this.followupDate,
    });

    factory ContactNote.fromJson(Map<String, dynamic> json) => _$ContactNoteFromJson(json);

    Map<String, dynamic> toJson() => _$ContactNoteToJson(this);
}

// @JsonSerializable()

// class ContactDetailModel {
//     @JsonKey(name: "userId")
//     int? userId;
//     @JsonKey(name: "firstName")
//     String? firstName;
//     @JsonKey(name: "photoByte")
//     dynamic photoByte;
//     @JsonKey(name: "photo_Path")
//     dynamic photoPath;
//     @JsonKey(name: "bankReference")
//     dynamic bankReference;
//     @JsonKey(name: "profile_Croped_Img")
//     dynamic profileCropedImg;
//     @JsonKey(name: "lastName")
//     String? lastName;
//     @JsonKey(name: "email")
//     String? email;
//     @JsonKey(name: "userType")
//     int? userType;
//     @JsonKey(name: "userRoleID")
//     int? userRoleId;
//     @JsonKey(name: "subscriptionId")
//     int? subscriptionId;
//     @JsonKey(name: "agencyUniqueID")
//     dynamic agencyUniqueId;
//     @JsonKey(name: "address")
//     dynamic address;
//     @JsonKey(name: "addressPostCode")
//     dynamic addressPostCode;
//     @JsonKey(name: "addressState")
//     dynamic addressState;
//     @JsonKey(name: "viewType")
//     int? viewType;
//     @JsonKey(name: "contact")
//     dynamic contact;
//     @JsonKey(name: "agencyID")
//     dynamic agencyId;
//     @JsonKey(name: "agentUniqueId")
//     dynamic agentUniqueId;
//     @JsonKey(name: "agentId")
//     int? agentId;
//     @JsonKey(name: "webRootPath")
//     dynamic webRootPath;
//     @JsonKey(name: "agentList")
//     dynamic agentList;
//     @JsonKey(name: "contactId")
//     int? contactId;
//     @JsonKey(name: "contactUniqueId")
//     String? contactUniqueId;
//     @JsonKey(name: "contactDisplayId")
//     dynamic contactDisplayId;
//     @JsonKey(name: "titleValues")
//     dynamic titleValues;
//     @JsonKey(name: "birthday")
//     dynamic birthday;
//     @JsonKey(name: "title")
//     int? title;
//     @JsonKey(name: "contactStatusId")
//     dynamic contactStatusId;
//     @JsonKey(name: "typeIAM")
//     String? typeIam;
//     @JsonKey(name: "otherDetailsType")
//     dynamic otherDetailsType;
//     @JsonKey(name: "priceRange")
//     dynamic priceRange;
//     @JsonKey(name: "anniversary")
//     dynamic anniversary;
//     @JsonKey(name: "remarks")
//     dynamic remarks;
//     @JsonKey(name: "notes")
//     dynamic notes;
//     @JsonKey(name: "isExternal")
//     dynamic isExternal;
//     @JsonKey(name: "contactStatusValues")
//     dynamic contactStatusValues;
//     @JsonKey(name: "ddlOtherDetailsType")
//     dynamic ddlOtherDetailsType;
//     @JsonKey(name: "createdDate")
//     String? createdDate;
//     @JsonKey(name: "mobileNumber")
//     String? mobileNumber;
//     @JsonKey(name: "landlineNumber")
//     dynamic landlineNumber;
//     @JsonKey(name: "landlineNumber1")
//     dynamic landlineNumber1;
//     @JsonKey(name: "companyAddress")
//     dynamic companyAddress;
//     @JsonKey(name: "companyName")
//     dynamic companyName;
//     @JsonKey(name: "propertyAddress")
//     dynamic propertyAddress;
//     @JsonKey(name: "abn")
//     dynamic abn;
//     @JsonKey(name: "acn")
//     dynamic acn;
//     @JsonKey(name: "isMarried")
//     bool? isMarried;
//     @JsonKey(name: "maritalStatus")
//     int? maritalStatus;
//     @JsonKey(name: "spouseName")
//     dynamic spouseName;
//     @JsonKey(name: "spouseMobileNumber")
//     dynamic spouseMobileNumber;
//     @JsonKey(name: "spouseAddress")
//     dynamic spouseAddress;
//     @JsonKey(name: "spouseEmail")
//     dynamic spouseEmail;
//     @JsonKey(name: "isInvestor")
//     bool? isInvestor;
//     @JsonKey(name: "isDeveloper")
//     bool? isDeveloper;
//     @JsonKey(name: "isFirstHomeBuyer")
//     bool? isFirstHomeBuyer;
//     @JsonKey(name: "isSelling")
//     bool? isSelling;
//     @JsonKey(name: "isRenting")
//     bool? isRenting;
//     @JsonKey(name: "isBuying")
//     bool? isBuying;
//     @JsonKey(name: "isSupplier")
//     bool? isSupplier;
//     @JsonKey(name: "priceRangeValues")
//     dynamic priceRangeValues;
//     @JsonKey(name: "ddlMaritalStatus")
//     dynamic ddlMaritalStatus;
//     @JsonKey(name: "postcode")
//     dynamic postcode;
//     @JsonKey(name: "regions")
//     dynamic regions;
//     @JsonKey(name: "facebookUrl")
//     dynamic facebookUrl;
//     @JsonKey(name: "linkedinUrl")
//     dynamic linkedinUrl;
//     @JsonKey(name: "twitterUrl")
//     dynamic twitterUrl;
//     @JsonKey(name: "instagramUrl")
//     dynamic instagramUrl;
//     @JsonKey(name: "isDeleted")
//     bool? isDeleted;
//     @JsonKey(name: "communicationType")
//     dynamic communicationType;
//     @JsonKey(name: "isNotice")
//     bool? isNotice;
//     @JsonKey(name: "isEmail")
//     bool? isEmail;
//     @JsonKey(name: "isPhone")
//     bool? isPhone;
//     @JsonKey(name: "loggedUserName")
//     dynamic loggedUserName;
//     @JsonKey(name: "communicationTypeList")
//     dynamic communicationTypeList;
//     @JsonKey(name: "idType")
//     dynamic idType;
//     @JsonKey(name: "idTypeList")
//     dynamic idTypeList;
//     @JsonKey(name: "idNumber")
//     dynamic idNumber;
//     @JsonKey(name: "bDocumentImage")
//     dynamic bDocumentImage;
//     @JsonKey(name: "pDocumentImagePath")
//     dynamic pDocumentImagePath;
//     @JsonKey(name: "isAddedByAffiliate")
//     bool? isAddedByAffiliate;
//     @JsonKey(name: "affiliateId")
//     dynamic affiliateId;
//     @JsonKey(name: "contactType")
//     int? contactType;
//     @JsonKey(name: "contactCategory")
//     dynamic contactCategory;
//     @JsonKey(name: "contactTypeList")
//     dynamic contactTypeList;
//     @JsonKey(name: "enquiryListingModel")
//     dynamic enquiryListingModel;
//     @JsonKey(name: "sellerEnquiryListingModel")
//     dynamic sellerEnquiryListingModel;
//     @JsonKey(name: "offerListingModel")
//     dynamic offerListingModel;
//     @JsonKey(name: "buyerOfferListingModel")
//     dynamic buyerOfferListingModel;
//     @JsonKey(name: "contactNotes")
//     List<dynamic>? contactNotes;
//     @JsonKey(name: "contactChanges")
//     dynamic contactChanges;
//     @JsonKey(name: "isAgentLogged")
//     bool? isAgentLogged;
//     @JsonKey(name: "isAffiliateLogged")
//     bool? isAffiliateLogged;
//     @JsonKey(name: "loggedUserId")
//     int? loggedUserId;
//     @JsonKey(name: "followupDate")
//     dynamic followupDate;
//     @JsonKey(name: "note")
//     dynamic note;
//     @JsonKey(name: "isPrimary")
//     dynamic isPrimary;
//     @JsonKey(name: "tenantFolioDetails")
//     dynamic tenantFolioDetails;
//     @JsonKey(name: "supplierDetails")
//     dynamic supplierDetails;
//     @JsonKey(name: "propertyOwnerFolioDetails")
//     PropertyOwnerFolioDetails? propertyOwnerFolioDetails;
//     @JsonKey(name: "image")
//     String? image;
//     @JsonKey(name: "postCodeName")
//     dynamic postCodeName;
//     @JsonKey(name: "solicitorFirmName")
//     dynamic solicitorFirmName;
//     @JsonKey(name: "solicitorPrincipalName")
//     dynamic solicitorPrincipalName;
//     @JsonKey(name: "solicitorAddress")
//     dynamic solicitorAddress;
//     @JsonKey(name: "solicitorEmail")
//     dynamic solicitorEmail;
//     @JsonKey(name: "solicitorPhone")
//     dynamic solicitorPhone;
//     @JsonKey(name: "solicitorFax")
//     dynamic solicitorFax;
//     @JsonKey(name: "propertyUniqueId")
//     dynamic propertyUniqueId;

//     ContactDetailModel({
//         this.userId,
//         this.firstName,
//         this.photoByte,
//         this.photoPath,
//         this.bankReference,
//         this.profileCropedImg,
//         this.lastName,
//         this.email,
//         this.userType,
//         this.userRoleId,
//         this.subscriptionId,
//         this.agencyUniqueId,
//         this.address,
//         this.addressPostCode,
//         this.addressState,
//         this.viewType,
//         this.contact,
//         this.agencyId,
//         this.agentUniqueId,
//         this.agentId,
//         this.webRootPath,
//         this.agentList,
//         this.contactId,
//         this.contactUniqueId,
//         this.contactDisplayId,
//         this.titleValues,
//         this.birthday,
//         this.title,
//         this.contactStatusId,
//         this.typeIam,
//         this.otherDetailsType,
//         this.priceRange,
//         this.anniversary,
//         this.remarks,
//         this.notes,
//         this.isExternal,
//         this.contactStatusValues,
//         this.ddlOtherDetailsType,
//         this.createdDate,
//         this.mobileNumber,
//         this.landlineNumber,
//         this.landlineNumber1,
//         this.companyAddress,
//         this.companyName,
//         this.propertyAddress,
//         this.abn,
//         this.acn,
//         this.isMarried,
//         this.maritalStatus,
//         this.spouseName,
//         this.spouseMobileNumber,
//         this.spouseAddress,
//         this.spouseEmail,
//         this.isInvestor,
//         this.isDeveloper,
//         this.isFirstHomeBuyer,
//         this.isSelling,
//         this.isRenting,
//         this.isBuying,
//         this.isSupplier,
//         this.priceRangeValues,
//         this.ddlMaritalStatus,
//         this.postcode,
//         this.regions,
//         this.facebookUrl,
//         this.linkedinUrl,
//         this.twitterUrl,
//         this.instagramUrl,
//         this.isDeleted,
//         this.communicationType,
//         this.isNotice,
//         this.isEmail,
//         this.isPhone,
//         this.loggedUserName,
//         this.communicationTypeList,
//         this.idType,
//         this.idTypeList,
//         this.idNumber,
//         this.bDocumentImage,
//         this.pDocumentImagePath,
//         this.isAddedByAffiliate,
//         this.affiliateId,
//         this.contactType,
//         this.contactCategory,
//         this.contactTypeList,
//         this.enquiryListingModel,
//         this.sellerEnquiryListingModel,
//         this.offerListingModel,
//         this.buyerOfferListingModel,
//         this.contactNotes,
//         this.contactChanges,
//         this.isAgentLogged,
//         this.isAffiliateLogged,
//         this.loggedUserId,
//         this.followupDate,
//         this.note,
//         this.isPrimary,
//         this.tenantFolioDetails,
//         this.supplierDetails,
//         this.propertyOwnerFolioDetails,
//         this.image,
//         this.postCodeName,
//         this.solicitorFirmName,
//         this.solicitorPrincipalName,
//         this.solicitorAddress,
//         this.solicitorEmail,
//         this.solicitorPhone,
//         this.solicitorFax,
//         this.propertyUniqueId,
//     });

//     factory ContactDetailModel.fromJson(Map<String, dynamic> json) => _$ContactDetailModelFromJson(json);

//     Map<String, dynamic> toJson() => _$ContactDetailModelToJson(this);
// }

// @JsonSerializable()
// class PropertyOwnerFolioDetails {
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
//     @JsonKey(name: "propertyAddress")
//     String? propertyAddress;

//     PropertyOwnerFolioDetails({
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
//         this.propertyAddress,
//     });

//     factory PropertyOwnerFolioDetails.fromJson(Map<String, dynamic> json) => _$PropertyOwnerFolioDetailsFromJson(json);

//     Map<String, dynamic> toJson() => _$PropertyOwnerFolioDetailsToJson(this);
// }
