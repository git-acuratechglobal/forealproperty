import 'package:json_annotation/json_annotation.dart';

part 'tenant_contact_model.g.dart';

@JsonSerializable(createToJson: false)
class TenantContactModel {
  TenantContactModel({
    required this.userId,
    required this.supplierId,
    required this.firstName,
    required this.photoByte,
    required this.photoPath,
    required this.bankReference,
    required this.profileCropedImg,
    required this.lastName,
    required this.email,
    required this.userType,
    required this.userRoleId,
    required this.subscriptionId,
    required this.agencyUniqueId,
    required this.address,
    required this.addressPostCode,
    required this.addressState,
    required this.viewType,
    required this.contact,
    required this.agencyId,
    required this.agentUniqueId,
    required this.agentId,
    required this.webRootPath,
    required this.agentList,
    required this.contactId,
    required this.contactUniqueId,
    required this.contactDisplayId,
    required this.titleValues,
    required this.birthday,
    required this.title,
    required this.contactStatusId,
    required this.typeIam,
    required this.otherDetailsType,
    required this.priceRange,
    required this.anniversary,
    required this.remarks,
    required this.notes,
    required this.isExternal,
    required this.contactStatusValues,
    required this.ddlOtherDetailsType,
    required this.createdDate,
    required this.mobileNumber,
    required this.landlineNumber,
    required this.landlineNumber1,
    required this.companyAddress,
    required this.companyName,
    required this.propertyAddress,
    required this.abn,
    required this.acn,
    required this.isMarried,
    required this.maritalStatus,
    required this.spouseName,
    required this.spouseMobileNumber,
    required this.spouseAddress,
    required this.spouseEmail,
    required this.isInvestor,
    required this.isDeveloper,
    required this.isFirstHomeBuyer,
    required this.isSelling,
    required this.isRenting,
    required this.isBuying,
    required this.isSupplier,
    required this.priceRangeValues,
    required this.ddlMaritalStatus,
    required this.postcode,
    required this.regions,
    required this.facebookUrl,
    required this.linkedinUrl,
    required this.twitterUrl,
    required this.instagramUrl,
    required this.isDeleted,
    required this.communicationType,
    required this.isNotice,
    required this.isEmail,
    required this.isPhone,
    required this.loggedUserName,
    required this.communicationTypeList,
    required this.idType,
    required this.idTypeList,
    required this.idNumber,
    required this.bDocumentImage,
    required this.pDocumentImagePath,
    required this.isAddedByAffiliate,
    required this.affiliateId,
    required this.contactType,
    required this.contactCategory,
    required this.contactTypeList,
    required this.enquiryListingModel,
    required this.sellerEnquiryListingModel,
    required this.offerListingModel,
    required this.buyerOfferListingModel,
    required this.contactNotes,
    required this.contactChanges,
    required this.isAgentLogged,
    required this.isAffiliateLogged,
    required this.loggedUserId,
    required this.followupDate,
    required this.note,
    required this.isPrimary,
    required this.relatedProperties,
    required this.tenantFolioDetails,
    required this.supplierDetails,
    required this.supplierPaymentMethod,
    required this.propertyOwnerFolioDetails,
    required this.updateSupplierPaymentMethod,
    required this.image,
    required this.contactReference,
    required this.postCodeName,
    required this.solicitorFirmName,
    required this.solicitorPrincipalName,
    required this.solicitorAddress,
    required this.solicitorEmail,
    required this.solicitorPhone,
    required this.solicitorFax,
    required this.propertyUniqueId,
  });

  final int? userId;
  final dynamic supplierId;
  final String? firstName;
  final dynamic photoByte;

  @JsonKey(name: 'photo_Path')
  final dynamic photoPath;
  final dynamic bankReference;

  @JsonKey(name: 'profile_Croped_Img')
  final dynamic profileCropedImg;
  final String? lastName;
  final String? email;
  final int? userType;

  @JsonKey(name: 'userRoleID')
  final int? userRoleId;
  final int? subscriptionId;

  @JsonKey(name: 'agencyUniqueID')
  final dynamic agencyUniqueId;
  final String? address;
  final dynamic addressPostCode;
  final dynamic addressState;
  final int? viewType;
  final dynamic contact;

  @JsonKey(name: 'agencyID')
  final dynamic agencyId;
  final dynamic agentUniqueId;
  final int? agentId;
  final dynamic webRootPath;
  final dynamic agentList;
  final int? contactId;
  final String? contactUniqueId;
  final dynamic contactDisplayId;
  final dynamic titleValues;
  final dynamic birthday;
  final dynamic title;
  final dynamic contactStatusId;

  @JsonKey(name: 'typeIAM')
  final dynamic typeIam;
  final dynamic otherDetailsType;
  final dynamic priceRange;
  final dynamic anniversary;
  final dynamic remarks;
  final dynamic notes;
  final dynamic isExternal;
  final dynamic contactStatusValues;
  final dynamic ddlOtherDetailsType;
  final DateTime? createdDate;
  final String? mobileNumber;
  final dynamic landlineNumber;
  final dynamic landlineNumber1;
  final dynamic companyAddress;
  final dynamic companyName;
  final dynamic propertyAddress;
  final dynamic abn;
  final dynamic acn;
  final bool? isMarried;
  final int? maritalStatus;
  final dynamic spouseName;
  final dynamic spouseMobileNumber;
  final dynamic spouseAddress;
  final dynamic spouseEmail;
  final bool? isInvestor;
  final bool? isDeveloper;
  final bool? isFirstHomeBuyer;
  final bool? isSelling;
  final bool? isRenting;
  final bool? isBuying;
  final bool? isSupplier;
  final dynamic priceRangeValues;
  final dynamic ddlMaritalStatus;
  final dynamic postcode;
  final dynamic regions;
  final dynamic facebookUrl;
  final dynamic linkedinUrl;
  final dynamic twitterUrl;
  final dynamic instagramUrl;
  final bool? isDeleted;
  final dynamic communicationType;
  final bool? isNotice;
  final bool? isEmail;
  final bool? isPhone;
  final dynamic loggedUserName;
  final dynamic communicationTypeList;
  final dynamic idType;
  final dynamic idTypeList;
  final dynamic idNumber;
  final dynamic bDocumentImage;
  final dynamic pDocumentImagePath;
  final bool? isAddedByAffiliate;
  final dynamic affiliateId;
  final dynamic contactType;
  final int? contactCategory;
  final dynamic contactTypeList;
  final dynamic enquiryListingModel;
  final dynamic sellerEnquiryListingModel;
  final dynamic offerListingModel;
  final dynamic buyerOfferListingModel;
  final List<dynamic>? contactNotes;
  final dynamic contactChanges;
  final bool? isAgentLogged;
  final bool? isAffiliateLogged;
  final int? loggedUserId;
  final dynamic followupDate;
  final dynamic note;
  final dynamic isPrimary;
  final List<dynamic>? relatedProperties;
  final List<dynamic>? tenantFolioDetails;
  final dynamic supplierDetails;
  final dynamic supplierPaymentMethod;
  final List<dynamic>? propertyOwnerFolioDetails;
  final bool? updateSupplierPaymentMethod;
  final dynamic image;
  final dynamic contactReference;
  final dynamic postCodeName;
  final dynamic solicitorFirmName;
  final dynamic solicitorPrincipalName;
  final dynamic solicitorAddress;
  final dynamic solicitorEmail;
  final dynamic solicitorPhone;
  final dynamic solicitorFax;
  final dynamic propertyUniqueId;

  factory TenantContactModel.fromJson(Map<String, dynamic> json) => _$TenantContactModelFromJson(json);

}





@JsonSerializable(createToJson: false)
class SearchContactModel {
  SearchContactModel({
    required this.id,
    required this.uid,
    required this.name,
    required this.agentId,
    required this.email,
  });

  final int? id;
  final String? uid;
  final String? name;
  final int? agentId;
  final String? email;

  factory SearchContactModel.fromJson(Map<String, dynamic> json) => _$SearchContactModelFromJson(json);

}
