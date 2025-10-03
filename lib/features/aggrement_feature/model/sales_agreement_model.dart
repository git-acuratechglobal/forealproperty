import 'package:foreal_property/features/aggrement_feature/model/management_agreement_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sales_agreement_model.g.dart';

@JsonSerializable(createToJson: false)
class SalesAgreementModel {
  SalesAgreementModel({
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
    required this.propertySuburb,
    required this.propertyState,
    required this.propertyUId,
    required this.contactPic,
    required this.contactPic2,
    required this.contactGstRegistered,
    required this.agencyGstRegistered,
    required this.contactId1Verified,
    required this.contactId2Verified,
    required this.corporateLicenseNumber,
    required this.leaseCommencement,
    required this.leaseExpiry,
    required this.pAccountName,
    required this.pbsb,
    required this.pAccountNo,
    required this.principalName,
    required this.consumerGuide,
    required this.agentFeePercentage,
    required this.agreementStartDate,
    required this.agreementEndDate,
    required this.primaryUserId,
    required this.propOccupation,
    required this.fixFitIncluded,
    required this.fixFitExcluded,
    required this.easementConvenantDefects,
    required this.termsAndConditionsOfSale,
    required this.sellingFixedPrice,
    required this.licenceeRecomendMethodOfSale,
    required this.splInstructionAboutMarketing,
    required this.salePriceFlatFee,
    required this.licenceeEstimateSalePrice,
    required this.gstInclusiveRenumeration,
    required this.expenseAndChargesService1,
    required this.expenseAndChargesEstimate1,
    required this.expenseAndChargesEstimateGst1,
    required this.expenseAndChargesdue1,
    required this.expenseAndChargesService2,
    required this.expenseAndChargesEstimate2,
    required this.expenseAndChargesEstimateGst2,
    required this.expenseAndChargesdue2,
    required this.otherServicesService1,
    required this.otherServicesGst1,
    required this.otherServicesdue1,
    required this.otherServicesService2,
    required this.otherServicesGst2,
    required this.otherServicesdue2,
    required this.propertyPhotos,
    required this.floorPlans,
    required this.socialMediaCampaign,
    required this.isListedOnRea,
    required this.isListedOnDomain,
    required this.signboardOutsideProperty,
    required this.inspection,
    required this.withoutRisk,
    required this.withDefects,
    required this.disclosureSourceRebate1,
    required this.disclosureEstimateRebate1,
    required this.disclosureSourceRebate2,
    required this.disclosureEstimateRebate2,
    required this.waiverOfCoolinOffPeriod,
    required this.wasAgreementProvidedPrincipal,
    required this.preprationReportDate,
    required this.dateProvided,
    required this.methodOfSale,
    required this.gst,
    required this.sellingPriceFrom,
    required this.sellingPriceTo,
    required this.isEft,
    required this.isCheque,
    required this.solicitorFirmName,
    required this.solicitorPrincipalName,
    required this.solicitorAddress,
    required this.solicitorEmail,
    required this.solicitorPhone,
    required this.solicitorFax,
    required this.activities,
    required this.getFullAddress,
    required this.isDeleted,
  });

  final dynamic loggedusername;
  final int? id;
  final List<PrimarycontactModel>? contactlistModel;
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
  final String? propertySuburb;
  final String? propertyState;
  final String? propertyUId;
  final dynamic contactPic;
  final dynamic contactPic2;
  final dynamic contactGstRegistered;
  final bool? agencyGstRegistered;

  @JsonKey(name: 'contactID1Verified')
  final dynamic contactId1Verified;

  @JsonKey(name: 'contactID2Verified')
  final dynamic contactId2Verified;
  final dynamic corporateLicenseNumber;
  final dynamic leaseCommencement;
  final dynamic leaseExpiry;
  final dynamic pAccountName;
  final dynamic pbsb;
  final dynamic pAccountNo;
  final String? principalName;
  final dynamic consumerGuide;
  final dynamic agentFeePercentage;
  final DateTime? agreementStartDate;
  final DateTime? agreementEndDate;

  @JsonKey(name: 'primaryUserID')
  final int? primaryUserId;
  final int? propOccupation;
  final String? fixFitIncluded;
  final String? fixFitExcluded;
  final String? easementConvenantDefects;
  final String? termsAndConditionsOfSale;
  final int? sellingFixedPrice;
  final int? licenceeRecomendMethodOfSale;
  final String? splInstructionAboutMarketing;
  final int? salePriceFlatFee;
  final double? licenceeEstimateSalePrice;
  final double? gstInclusiveRenumeration;

  @JsonKey(name: 'expenseANDChargesService1')
  final String? expenseAndChargesService1;

  @JsonKey(name: 'expenseANDChargesEstimate1')
  final int? expenseAndChargesEstimate1;

  @JsonKey(name: 'expenseANDChargesEstimateGST1')
  final int? expenseAndChargesEstimateGst1;

  @JsonKey(name: 'expenseANDChargesdue1')
  final String? expenseAndChargesdue1;

  @JsonKey(name: 'expenseANDChargesService2')
  final String? expenseAndChargesService2;

  @JsonKey(name: 'expenseANDChargesEstimate2')
  final int? expenseAndChargesEstimate2;

  @JsonKey(name: 'expenseANDChargesEstimateGST2')
  final int? expenseAndChargesEstimateGst2;

  @JsonKey(name: 'expenseANDChargesdue2')
  final String? expenseAndChargesdue2;
  final String? otherServicesService1;

  @JsonKey(name: 'otherServicesGST1')
  final int? otherServicesGst1;
  final String? otherServicesdue1;
  final String? otherServicesService2;

  @JsonKey(name: 'otherServicesGST2')
  final int? otherServicesGst2;
  final String? otherServicesdue2;
  final bool? propertyPhotos;
  final bool? floorPlans;
  final bool? socialMediaCampaign;

  @JsonKey(name: 'isListedOnREA')
  final bool? isListedOnRea;
  final bool? isListedOnDomain;
  final bool? signboardOutsideProperty;
  final String? inspection;
  final int? withoutRisk;
  final int? withDefects;
  final String? disclosureSourceRebate1;
  final int? disclosureEstimateRebate1;
  final String? disclosureSourceRebate2;
  final int? disclosureEstimateRebate2;
  final int? waiverOfCoolinOffPeriod;
  final int? wasAgreementProvidedPrincipal;
  final dynamic preprationReportDate;
  final DateTime? dateProvided;
  final dynamic methodOfSale;
  final bool? gst;
  final int? sellingPriceFrom;
  final int? sellingPriceTo;

  @JsonKey(name: 'isEFT')
  final int? isEft;
  final dynamic isCheque;
  final String? solicitorFirmName;
  final String? solicitorPrincipalName;
  final String? solicitorAddress;
  final String? solicitorEmail;
  final String? solicitorPhone;
  final dynamic solicitorFax;
  final Activities? activities;
  final String? getFullAddress;
  final bool? isDeleted;

  factory SalesAgreementModel.fromJson(Map<String, dynamic> json) =>
      _$SalesAgreementModelFromJson(json);

  String? get formattedAgreementStart {
    if (agreementStartDate == null)
      return DateFormat('dd-MM-yyyy').format(DateTime.now());
    return DateFormat('dd-MM-yyyy').format(agreementStartDate!);
  }

  String? get formattedAgreementEnd {
    if (agreementEndDate == null)
      return DateFormat('dd-MM-yyyy')
          .format(DateTime.now().add(const Duration(days: 90)));
    return DateFormat('dd-MM-yyyy').format(agreementEndDate!);
  }

  String? get fromattedDateProvided {
    if (dateProvided == null) return null;
    return DateFormat('dd-MM-yyyy').format(dateProvided!);
  }
}

@JsonSerializable(createToJson: false)
class Activities {
  Activities({
    required this.activities,
  });

  final List<Activity>? activities;

  factory Activities.fromJson(Map<String, dynamic> json) =>
      _$ActivitiesFromJson(json);
}

@JsonSerializable(createToJson: false)
class Activity {
  Activity({
    required this.activityDate,
    required this.description,
    required this.email,
    required this.ipaddress,
  });

  final DateTime? activityDate;
  final String? description;
  final dynamic email;
  final dynamic ipaddress;

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}
