// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_agreement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesAgreementModel _$SalesAgreementModelFromJson(Map<String, dynamic> json) =>
    SalesAgreementModel(
      loggedusername: json['loggedusername'],
      id: (json['id'] as num?)?.toInt(),
      contactlistModel: (json['contactlistModel'] as List<dynamic>?)
          ?.map((e) => PrimarycontactModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      primarycontactModel: json['primarycontactModel'] == null
          ? null
          : PrimarycontactModel.fromJson(
              json['primarycontactModel'] as Map<String, dynamic>),
      documentReceipients: (json['documentReceipients'] as List<dynamic>?)
          ?.map((e) => DocumentReceipient.fromJson(e as Map<String, dynamic>))
          .toList(),
      agreementStatus: (json['agreementStatus'] as num?)?.toInt(),
      isOwnerSigned: json['isOwnerSigned'] as bool?,
      isAgentSigned: json['isAgentSigned'] as bool?,
      agencyId: (json['agencyId'] as num?)?.toInt(),
      signedDocumentId: json['signedDocumentId'],
      agreementDate: json['agreementDate'] == null
          ? null
          : DateTime.parse(json['agreementDate'] as String),
      agreementType: json['agreementType'],
      propertyId: (json['propertyId'] as num?)?.toInt(),
      agentId: (json['agentId'] as num?)?.toInt(),
      agentFirstName: json['agentFirstName'] as String?,
      agentLastName: json['agentLastName'] as String?,
      agentEmail: json['agentEmail'] as String?,
      agencyName: json['agencyName'] as String?,
      tradingName: json['tradingName'] as String?,
      agencyLicenceNumber: json['agencyLicenceNumber'] as String?,
      agencyAbn: json['agencyAbn'] as String?,
      agencyAcn: json['agencyAcn'] as String?,
      agencyAddress: json['agencyAddress'] as String?,
      agencyPostCode: json['agencyPostCode'] as String?,
      agencyState: json['agencyState'] as String?,
      agencyEmail: json['agencyEmail'] as String?,
      mobile: json['mobile'] as String?,
      phoneWork: json['phoneWork'],
      phoneHome: json['phoneHome'],
      fax: json['fax'],
      agencyWorkPhone: json['agencyWorkPhone'],
      companyName: json['companyName'] as String?,
      agencyLogo: json['agencyLogo'] as String?,
      propertyAddress: json['propertyAddress'] as String?,
      propertyPostCode: json['propertyPostCode'] as String?,
      propertySuburb: json['propertySuburb'] as String?,
      propertyState: json['propertyState'] as String?,
      propertyUId: json['propertyUId'] as String?,
      contactPic: json['contactPic'],
      contactPic2: json['contactPic2'],
      contactGstRegistered: json['contactGstRegistered'],
      agencyGstRegistered: json['agencyGstRegistered'] as bool?,
      contactId1Verified: json['contactID1Verified'],
      contactId2Verified: json['contactID2Verified'],
      corporateLicenseNumber: json['corporateLicenseNumber'],
      leaseCommencement: json['leaseCommencement'],
      leaseExpiry: json['leaseExpiry'],
      pAccountName: json['pAccountName'],
      pbsb: json['pbsb'],
      pAccountNo: json['pAccountNo'],
      principalName: json['principalName'] as String?,
      consumerGuide: json['consumerGuide'],
      agentFeePercentage: json['agentFeePercentage'],
      agreementStartDate: json['agreementStartDate'] == null
          ? null
          : DateTime.parse(json['agreementStartDate'] as String),
      agreementEndDate: json['agreementEndDate'] == null
          ? null
          : DateTime.parse(json['agreementEndDate'] as String),
      primaryUserId: (json['primaryUserID'] as num?)?.toInt(),
      propOccupation: (json['propOccupation'] as num?)?.toInt(),
      fixFitIncluded: json['fixFitIncluded'] as String?,
      fixFitExcluded: json['fixFitExcluded'] as String?,
      easementConvenantDefects: json['easementConvenantDefects'] as String?,
      termsAndConditionsOfSale: json['termsAndConditionsOfSale'] as String?,
      sellingFixedPrice: (json['sellingFixedPrice'] as num?)?.toInt(),
      licenceeRecomendMethodOfSale:
          (json['licenceeRecomendMethodOfSale'] as num?)?.toInt(),
      splInstructionAboutMarketing:
          json['splInstructionAboutMarketing'] as String?,
      salePriceFlatFee: (json['salePriceFlatFee'] as num?)?.toInt(),
      licenceeEstimateSalePrice:
          (json['licenceeEstimateSalePrice'] as num?)?.toDouble(),
      gstInclusiveRenumeration:
          (json['gstInclusiveRenumeration'] as num?)?.toDouble(),
      expenseAndChargesService1: json['expenseANDChargesService1'] as String?,
      expenseAndChargesEstimate1:
          (json['expenseANDChargesEstimate1'] as num?)?.toInt(),
      expenseAndChargesEstimateGst1:
          (json['expenseANDChargesEstimateGST1'] as num?)?.toInt(),
      expenseAndChargesdue1: json['expenseANDChargesdue1'] as String?,
      expenseAndChargesService2: json['expenseANDChargesService2'] as String?,
      expenseAndChargesEstimate2:
          (json['expenseANDChargesEstimate2'] as num?)?.toInt(),
      expenseAndChargesEstimateGst2:
          (json['expenseANDChargesEstimateGST2'] as num?)?.toInt(),
      expenseAndChargesdue2: json['expenseANDChargesdue2'] as String?,
      otherServicesService1: json['otherServicesService1'] as String?,
      otherServicesGst1: (json['otherServicesGST1'] as num?)?.toInt(),
      otherServicesdue1: json['otherServicesdue1'] as String?,
      otherServicesService2: json['otherServicesService2'] as String?,
      otherServicesGst2: (json['otherServicesGST2'] as num?)?.toInt(),
      otherServicesdue2: json['otherServicesdue2'] as String?,
      propertyPhotos: json['propertyPhotos'] as bool?,
      floorPlans: json['floorPlans'] as bool?,
      socialMediaCampaign: json['socialMediaCampaign'] as bool?,
      isListedOnRea: json['isListedOnREA'] as bool?,
      isListedOnDomain: json['isListedOnDomain'] as bool?,
      signboardOutsideProperty: json['signboardOutsideProperty'] as bool?,
      inspection: json['inspection'] as String?,
      withoutRisk: (json['withoutRisk'] as num?)?.toInt(),
      withDefects: (json['withDefects'] as num?)?.toInt(),
      disclosureSourceRebate1: json['disclosureSourceRebate1'] as String?,
      disclosureEstimateRebate1:
          (json['disclosureEstimateRebate1'] as num?)?.toInt(),
      disclosureSourceRebate2: json['disclosureSourceRebate2'] as String?,
      disclosureEstimateRebate2:
          (json['disclosureEstimateRebate2'] as num?)?.toInt(),
      waiverOfCoolinOffPeriod:
          (json['waiverOfCoolinOffPeriod'] as num?)?.toInt(),
      wasAgreementProvidedPrincipal:
          (json['wasAgreementProvidedPrincipal'] as num?)?.toInt(),
      preprationReportDate: json['preprationReportDate'],
      dateProvided: json['dateProvided'] == null
          ? null
          : DateTime.parse(json['dateProvided'] as String),
      methodOfSale: json['methodOfSale'],
      gst: json['gst'] as bool?,
      sellingPriceFrom: (json['sellingPriceFrom'] as num?)?.toInt(),
      sellingPriceTo: (json['sellingPriceTo'] as num?)?.toInt(),
      isEft: (json['isEFT'] as num?)?.toInt(),
      isCheque: json['isCheque'],
      solicitorFirmName: json['solicitorFirmName'] as String?,
      solicitorPrincipalName: json['solicitorPrincipalName'] as String?,
      solicitorAddress: json['solicitorAddress'] as String?,
      solicitorEmail: json['solicitorEmail'] as String?,
      solicitorPhone: json['solicitorPhone'] as String?,
      solicitorFax: json['solicitorFax'],
      activities: json['activities'] == null
          ? null
          : Activities.fromJson(json['activities'] as Map<String, dynamic>),
      getFullAddress: json['getFullAddress'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Activities _$ActivitiesFromJson(Map<String, dynamic> json) => Activities(
      activities: (json['activities'] as List<dynamic>?)
          ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Activity _$ActivityFromJson(Map<String, dynamic> json) => Activity(
      activityDate: json['activityDate'] == null
          ? null
          : DateTime.parse(json['activityDate'] as String),
      description: json['description'] as String?,
      email: json['email'],
      ipaddress: json['ipaddress'],
    );
