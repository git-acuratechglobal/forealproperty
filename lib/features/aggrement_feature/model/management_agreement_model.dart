import 'package:foreal_property/features/aggrement_feature/model/sales_agreement_model.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'management_agreement_model.g.dart';

@JsonSerializable(createToJson: false)
class ManagementAgreementModel {
  ManagementAgreementModel({
    required this.loggedusername,
    required this.id,
    required this.contactlistModel,
    required this.primarycontactModel,
    required this.documentReceipients,
    required this.agreementStatus,
    required this.isOwnerSigned,
    required this.isAgentSigned,
    required this.agencyId,
    required this.signedDocumentId,
    required this.agreementDate,
    required this.agreementType,
    required this.propertyId,
    required this.agentId,
    required this.agentFirstName,
    required this.agentLastName,
    required this.agentEmail,
    required this.agencyName,
    required this.tradingName,
    required this.agencyLicenceNumber,
    required this.agencyAbn,
    required this.agencyAcn,
    required this.agencyAddress,
    required this.agencyPostCode,
    required this.agencyState,
    required this.agencyEmail,
    required this.mobile,
    required this.phoneWork,
    required this.phoneHome,
    required this.fax,
    required this.agencyWorkPhone,
    required this.companyName,
    required this.agencyLogo,
    required this.propertyAddress,
    required this.propertyPostCode,
    required this.propertyState,
    required this.propertyUId,
    required this.contactPic,
    required this.contactPic2,
    required this.contactGstRegistered,
    required this.agencyGstRegistered,
    required this.contactId1Verified,
    required this.contactId2Verified,
    required this.leaseCommencement,
    required this.leaseExpiry,
    required this.pAccountName,
    required this.pbsb,
    required this.pAccountNo,
    required this.principalName,
    required this.consumerGuide,
    required this.agentFeePercentage,
    required this.rent,
    required this.bondAmount,
    required this.period,
    required this.primaryUserId,
    required this.leasePremisesAtMarketRent,
    required this.referToPrincipalForReLease,
    required this.reviewRentBfrRLease,
    required this.initialWeekRent,
    required this.percentageOfMonthRent,
    required this.prprtyLeasdPrdDuringAgrmnt,
    required this.prprtyLeasdPrdWithinMonth,
    required this.managementFee,
    required this.managementFeeGst,
    required this.marketingFee,
    required this.administrationFee,
    required this.applicationFeesForUtilites,
    required this.officeExpenses,
    required this.redirect,
    required this.strata,
    required this.stratacrn,
    required this.strataReference,
    required this.water,
    required this.waterCrn,
    required this.waterReference,
    required this.councilRates,
    required this.councilRatesCrn,
    required this.councilRatesReference,
    required this.insurance,
    required this.insuranceCrn,
    required this.insuranceReference,
    required this.insuranceStartDate,
    required this.insuranceEndDate,
    required this.isListedOnRea,
    required this.isListedOnDomain,
    required this.socialMedia,
    required this.signboard,
    required this.thirdPartyName,
    required this.amountOfRebateDiscount,
    required this.obtainReferenceFromTenant,
    required this.enterIntoSignTenacyAgrmnt,
    required this.undertakeInspection,
    required this.effectRepairMaintainProprty,
    required this.payDisbursemnt,
    required this.collectReceiveRent,
    required this.serveNoticeForBreachTenancy,
    required this.undrtakeStpsToRecvrMony,
    required this.representPrincipalCourt,
    required this.payAccountsForAmount,
    required this.advertisePropertyLetting,
    required this.reviewRentEndTenancy,
    required this.tradesmanPayment,
    required this.supplyUrgentRepairToTenant,
    required this.looseFillAsbestosInstallation,
    required this.swimmingPoolRegistered,
    required this.poolCertification,
    required this.smokeAlarm,
    required this.healthIssues,
    required this.flooding,
    required this.bushfire,
    required this.seriousViolentCrime,
    required this.materialDescription,
    required this.parkingRestriction,
    required this.shareDriveway,
    required this.affectdFlooding,
    required this.affectdBushfire,
    required this.affectdSeriousViolent,
    required this.isContractForSalePremises,
    required this.isProposelToSell,
    required this.hasMortgageeCommenced,
    required this.isMortgageeTakgActnPossssion,
    required this.waterEfficiencyByNsw,
    required this.affectByDescription,
    required this.subjectToDescription,
    required this.corporateLicenseNumber,
    required this.propertyFurnished,
    required this.propertyUnfurnished,
    required this.principalWarrantsSmokeAlarm,
    required this.ncatTribunalFee,
    required this.sherriffFee,
    required this.otherStatutoryFee,
    required this.postageFee,
    required this.agreementFilePath,
    required this.isManuallyAdded,
    required this.materialComments,
    required this.activities,
    required this.getFullAddress,
  });

  final dynamic loggedusername;
  final int? id;
  final List<ContactListModel>? contactlistModel;
  final PrimarycontactModel? primarycontactModel;
  final List<DocumentReceipient>? documentReceipients;
  final int? agreementStatus;
  final bool? isOwnerSigned;
  final bool? isAgentSigned;
  final int? agencyId;
  final dynamic signedDocumentId;
  final DateTime? agreementDate;
  final dynamic agreementType;
  final int? propertyId;
  final int? agentId;
  final String? agentFirstName;
  final String? agentLastName;
  final String? agentEmail;
  final String? agencyName;
  final String? tradingName;
  final String? agencyLicenceNumber;
  final String? agencyAbn;
  final String? agencyAcn;
  final String? agencyAddress;
  final String? agencyPostCode;
  final String? agencyState;
  final String? agencyEmail;
  final String? mobile;
  final dynamic phoneWork;
  final dynamic phoneHome;
  final dynamic fax;
  final dynamic agencyWorkPhone;
  final String? companyName;
  final String? agencyLogo;
  final String? propertyAddress;
  final String? propertyPostCode;
  final String? propertyState;
  final String? propertyUId;
  final dynamic contactPic;
  final dynamic contactPic2;
  final int? contactGstRegistered;
  final bool? agencyGstRegistered;

  @JsonKey(name: 'contactID1Verified')
  final dynamic contactId1Verified;

  @JsonKey(name: 'contactID2Verified')
  final dynamic contactId2Verified;
  final dynamic leaseCommencement;
  final dynamic leaseExpiry;
  final dynamic pAccountName;
  final dynamic pbsb;
  final dynamic pAccountNo;
  final String? principalName;
  final dynamic consumerGuide;
  final dynamic agentFeePercentage;
  final int? rent;
  final int? bondAmount;
  final int? period;

  @JsonKey(name: 'primaryUserID')
  final int? primaryUserId;
  final bool? leasePremisesAtMarketRent;
  final bool? referToPrincipalForReLease;
  final bool? reviewRentBfrRLease;
  final String? initialWeekRent;
  final int? percentageOfMonthRent;
  final bool? prprtyLeasdPrdDuringAgrmnt;
  final bool? prprtyLeasdPrdWithinMonth;
  final int? managementFee;

  @JsonKey(name: 'managementFeeGST')
  final double? managementFeeGst;
  final int? marketingFee;
  final int? administrationFee;
  final int? applicationFeesForUtilites;
  final int? officeExpenses;
  final bool? redirect;
  final bool? strata;
  final dynamic stratacrn;
  final dynamic strataReference;
  final bool? water;

  @JsonKey(name: 'waterCRN')
  final dynamic waterCrn;
  final dynamic waterReference;
  final bool? councilRates;

  @JsonKey(name: 'councilRatesCRN')
  final dynamic councilRatesCrn;
  final dynamic councilRatesReference;
  final bool? insurance;

  @JsonKey(name: 'insuranceCRN')
  final dynamic insuranceCrn;
  final dynamic insuranceReference;
  final dynamic insuranceStartDate;
  final dynamic insuranceEndDate;

  @JsonKey(name: 'isListedOnREA')
  final bool? isListedOnRea;
  final bool? isListedOnDomain;
  final bool? socialMedia;
  final bool? signboard;
  final String? thirdPartyName;
  final int? amountOfRebateDiscount;
  final bool? obtainReferenceFromTenant;
  final bool? enterIntoSignTenacyAgrmnt;
  final bool? undertakeInspection;
  final bool? effectRepairMaintainProprty;
  final bool? payDisbursemnt;
  final bool? collectReceiveRent;
  final bool? serveNoticeForBreachTenancy;
  final bool? undrtakeStpsToRecvrMony;
  final bool? representPrincipalCourt;
  final bool? payAccountsForAmount;
  final bool? advertisePropertyLetting;
  final bool? reviewRentEndTenancy;
  final int? tradesmanPayment;
  final bool? supplyUrgentRepairToTenant;
  final dynamic looseFillAsbestosInstallation;
  final dynamic swimmingPoolRegistered;
  final dynamic poolCertification;
  final dynamic smokeAlarm;
  final dynamic healthIssues;
  final dynamic flooding;
  final dynamic bushfire;
  final dynamic seriousViolentCrime;
  final dynamic materialDescription;
  final dynamic parkingRestriction;
  final dynamic shareDriveway;
  final dynamic affectdFlooding;
  final dynamic affectdBushfire;
  final dynamic affectdSeriousViolent;
  final dynamic isContractForSalePremises;
  final dynamic isProposelToSell;
  final dynamic hasMortgageeCommenced;
  final dynamic isMortgageeTakgActnPossssion;

  @JsonKey(name: 'waterEfficiencyByNSW')
  final dynamic waterEfficiencyByNsw;
  final dynamic affectByDescription;
  final dynamic subjectToDescription;
  final String? corporateLicenseNumber;
  final bool? propertyFurnished;
  final bool? propertyUnfurnished;
  final dynamic principalWarrantsSmokeAlarm;
  final String? ncatTribunalFee;
  final String? sherriffFee;
  final String? otherStatutoryFee;
  final String? postageFee;
  final dynamic agreementFilePath;
  final bool? isManuallyAdded;
  final dynamic materialComments;
  final Activities? activities;
  final String? getFullAddress;

  factory ManagementAgreementModel.fromJson(Map<String, dynamic> json) =>
      _$ManagementAgreementModelFromJson(json);

  String? get formatAgreementDate {
    if (agreementDate == null) return null;
    return DateFormat('dd-MM-yyyy').format(agreementDate!);
  }
}

@JsonSerializable(createToJson: false)
class ContactListModel {
  ContactListModel({
    required this.fName,
    required this.lName,
    required this.address,
    required this.mobileNumber,
    required this.contactUniqueId,
    required this.landlineNumber,
    required this.landlineNumber1,
    required this.companyName,
    required this.abn,
    required this.acn,
    required this.postcode,
    required this.regions,
    required this.contactType,
    required this.isUserVerified,
    required this.isProofSubmited,
    required this.getFullAddress,
    required this.getFullName,
    required this.ownerId,
    required this.contactId,
    required this.contactUId,
    required this.isPrimary,
    required this.contactName,
    required this.contactEmail,
    required this.name,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.fromDate,
    required this.toDate,
    required this.title,
    required this.isVerificationLinkSend,
    required this.typeIam,
    required this.verificationProofs,
  });

  final String? fName;
  final String? lName;
  final dynamic address;
  final String? mobileNumber;
  final dynamic contactUniqueId;
  final dynamic landlineNumber;
  final dynamic landlineNumber1;
  final dynamic companyName;
  final dynamic abn;
  final dynamic acn;
  final dynamic postcode;
  final dynamic regions;
  final dynamic contactType;
  final bool? isUserVerified;
  final bool? isProofSubmited;
  final String? getFullAddress;
  final String? getFullName;
  final dynamic ownerId;
  final int? contactId;
  final dynamic contactUId;
  final bool? isPrimary;
  final dynamic contactName;
  final String? contactEmail;
  final String? name;
  final dynamic firstName;
  final dynamic lastName;
  final String? phone;
  final dynamic fromDate;
  final dynamic toDate;
  final dynamic title;
  final bool? isVerificationLinkSend;

  @JsonKey(name: 'typeIAM')
  final dynamic typeIam;
  final dynamic verificationProofs;

  factory ContactListModel.fromJson(Map<String, dynamic> json) =>
      _$ContactListModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class DocumentReceipient {
  DocumentReceipient({
    required this.id,
    required this.documentType,
    required this.documentId,
    required this.contactId,
    required this.emailAddress,
    required this.agentId,
    required this.agencyId,
    required this.isSent,
    required this.sentDate,
    required this.signedDate,
    required this.isSigned,
    required this.signMethod,
    required this.signPicturePath,
    required this.signValue,
    required this.name,
    required this.ipAddress,
  });

  final int? id;
  final int? documentType;
  final int? documentId;
  final int? contactId;
  final String? emailAddress;
  final int? agentId;
  final int? agencyId;
  final bool? isSent;
  final DateTime? sentDate;
  final dynamic signedDate;
  final bool? isSigned;
  final dynamic signMethod;
  final dynamic signPicturePath;
  final dynamic signValue;
  final String? name;
  final dynamic ipAddress;

  factory DocumentReceipient.fromJson(Map<String, dynamic> json) =>
      _$DocumentReceipientFromJson(json);

  String get formatSentDate {
    if (sentDate == null) return "";
    final formatted = DateFormat("dd/MM/yyyy · hh:mma").format(sentDate!);
    return formatted;
  }
}

@JsonSerializable(createToJson: false)
class PrimarycontactModel {
  PrimarycontactModel({
    required this.fName,
    required this.lName,
    required this.address,
    required this.mobileNumber,
    required this.contactUniqueId,
    required this.landlineNumber,
    required this.landlineNumber1,
    required this.companyName,
    required this.abn,
    required this.acn,
    required this.postcode,
    required this.regions,
    required this.contactType,
    required this.isUserVerified,
    required this.isProofSubmited,
    required this.getFullAddress,
    required this.getFullName,
    required this.ownerId,
    required this.contactId,
    required this.contactUId,
    required this.isPrimary,
    required this.contactName,
    required this.contactEmail,
    required this.name,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.fromDate,
    required this.toDate,
    required this.title,
    required this.isVerificationLinkSend,
    required this.typeIam,
    required this.verificationProofs,
  });

  final String? fName;
  final String? lName;
  final dynamic address;
  final String? mobileNumber;
  final dynamic contactUniqueId;
  final dynamic landlineNumber;
  final dynamic landlineNumber1;
  final dynamic companyName;
  final dynamic abn;
  final dynamic acn;
  final dynamic postcode;
  final dynamic regions;
  final dynamic contactType;
  final bool? isUserVerified;
  final bool? isProofSubmited;
  final String? getFullAddress;
  final String? getFullName;
  final dynamic ownerId;
  final int? contactId;
  final dynamic contactUId;
  final bool? isPrimary;
  final dynamic contactName;
  final String? contactEmail;
  final String? name;
  final dynamic firstName;
  final dynamic lastName;
  final String? phone;
  final dynamic fromDate;
  final dynamic toDate;
  final dynamic title;
  final bool? isVerificationLinkSend;

  @JsonKey(name: 'typeIAM')
  final dynamic typeIam;
  final dynamic verificationProofs;

  factory PrimarycontactModel.fromJson(Map<String, dynamic> json) =>
      _$PrimarycontactModelFromJson(json);
}
