// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenancy_agreement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenantAgreementModel _$TenantAgreementModelFromJson(
        Map<String, dynamic> json) =>
    TenantAgreementModel(
      loggedusername: json['loggedusername'],
      agreeementId: (json['agreeementId'] as num?)?.toInt(),
      contactlistModel: (json['contactlistModel'] as List<dynamic>?)
          ?.map((e) => PrimarycontactModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      primaryContact: json['primaryContact'] == null
          ? null
          : PrimarycontactModel.fromJson(
              json['primaryContact'] as Map<String, dynamic>),
      documentReceipients: (json['documentReceipients'] as List<dynamic>?)
          ?.map((e) => DocumentReceipient.fromJson(e as Map<String, dynamic>))
          .toList(),
      isDocusignAuthenticated: json['isDocusignAuthenticated'] as bool?,
      agreementDate: json['agreementDate'] == null
          ? null
          : DateTime.parse(json['agreementDate'] as String),
      agreementType: json['agreementType'],
      agreementStatus: (json['agreementStatus'] as num?)?.toInt(),
      propertyId: (json['propertyId'] as num?)?.toInt(),
      agencyId: (json['agencyId'] as num?)?.toInt(),
      agentId: (json['agentId'] as num?)?.toInt(),
      principalName: json['principalName'] as String?,
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
      agencySuburb: json['agencySuburb'] as String?,
      agencyEmail: json['agencyEmail'] as String?,
      mobile: json['mobile'] as String?,
      phoneWork: json['phoneWork'],
      phoneHome: json['phoneHome'],
      fax: json['fax'],
      agencyWorkPhone: json['agencyWorkPhone'],
      companyName: json['companyName'] as String?,
      agencyLogo: json['agencyLogo'] as String?,
      propertySuburb: json['propertySuburb'] as String?,
      propertyPostCode: json['propertyPostCode'] as String?,
      propertyState: json['propertyState'] as String?,
      propertyUId: json['propertyUId'] as String?,
      rentTenure: json['rentTenure'],
      tenants: (json['tenants'] as List<dynamic>?)
          ?.map((e) => Tenants.fromJson(e as Map<String, dynamic>))
          .toList(),
      termsAgreement: (json['termsAgreement'] as num?)?.toInt(),
      termsAgreementNote: json['termsAgreementNote'],
      agreementStart: json['agreementStart'] == null
          ? null
          : DateTime.parse(json['agreementStart'] as String),
      agreementEnd: json['agreementEnd'] == null
          ? null
          : DateTime.parse(json['agreementEnd'] as String),
      propertyAddress: json['propertyAddress'] as String?,
      otherSpace: json['otherSpace'],
      rentAmount: (json['rentAmount'] as num?)?.toInt(),
      period: (json['period'] as num?)?.toInt(),
      leaseCommencement: json['leaseCommencement'] == null
          ? null
          : DateTime.parse(json['leaseCommencement'] as String),
      bsb: json['bsb'] as String?,
      accountNo: json['accountNo'] as String?,
      accountName: json['accountName'] as String?,
      paymentReference: json['paymentReference'],
      paymentTo: json['paymentTo'],
      paymentAt: json['paymentAt'],
      paymentFollows: json['paymentFollows'],
      bondAmount: (json['bondAmount'] as num?)?.toInt(),
      bondAmountProvidedTo: json['bondAmountProvidedTo'] as String?,
      maximumTenant: (json['maximumTenant'] as num?)?.toInt(),
      electricalRepair: json['electricalRepair'] as String?,
      electricalRepairContact: json['electricalRepairContact'] as String?,
      plumbingRepair: json['plumbingRepair'] as String?,
      plumbingRepairContact: json['plumbingRepairContact'] as String?,
      otherRepair: json['otherRepair'],
      otherRepairContact: json['otherRepairContact'],
      payWaterBillSeperately: json['payWaterBillSeperately'] as bool?,
      isElectricitySupplied: json['isElectricitySupplied'] as bool?,
      isGasSupplied: json['isGasSupplied'] as bool?,
      smokeAlarmType: (json['smokeAlarmType'] as num?)?.toInt(),
      smokeAlarmBatteryReplacable: json['smokeAlarmBatteryReplacable'] as bool?,
      batteryType: json['batteryType'] as String?,
      backupBatteryReplacable: json['backupBatteryReplacable'] as bool?,
      typeOfBackupBattery: json['typeOfBackupBattery'] as String?,
      strataRsponsibleForReplacement:
          json['strataRsponsibleForReplacement'] as bool?,
      strataByLawsApplicable: json['strataByLawsApplicable'] as bool?,
      doesLandlordConsentElectronic:
          json['doesLandlordConsentElectronic'] as bool?,
      landlordElctrcConsentEmail: json['landlordElctrcConsentEmail'] as String?,
      doesTenantConsentElectronic: json['doesTenantConsentElectronic'] as bool?,
      tenantElctrcConsentEmail: json['tenantElctrcConsentEmail'],
      landlordAgentName: json['landlordAgentName'] as String?,
      landlordBusinessAddress: json['landlordBusinessAddress'] as String?,
      landlordAgentPostcode: json['landlordAgentPostcode'] as String?,
      landlordAgentSuburb: json['landlordAgentSuburb'] as String?,
      landlordAgentState: json['landlordAgentState'] as String?,
      landlordAgentContact: json['landlordAgentContact'] as String?,
      tenantAgentName: json['tenantAgentName'] as String?,
      tenantBusinessAddress: json['tenantBusinessAddress'] as String?,
      tenantAgentPostcode: json['tenantAgentPostcode'] as String?,
      tenantAgentSuburb: json['tenantAgentSuburb'] as String?,
      tenantAgentState: json['tenantAgentState'] as String?,
      tenantAgentContact: json['tenantAgentContact'] as String?,
      isTenantsSigned: json['isTenantsSigned'] as bool?,
      agreementSentDate: json['agreementSentDate'],
      isAgentSigned: json['isAgentSigned'] as bool?,
      petDetails: json['petDetails'] as String?,
      additionalComments: json['additionalComments'] as String?,
      agreementFilePath: json['agreementFilePath'],
      isManuallyAdded: json['isManuallyAdded'] as bool?,
      updateTenant: json['updateTenant'] as bool?,
      currentTab: (json['currentTab'] as num?)?.toInt(),
      tenantFolioId: (json['tenantFolioId'] as num?)?.toInt(),
      tenantFolioList: json['tenantFolioList'],
      activities: json['activities'] == null
          ? null
          : Activities.fromJson(json['activities'] as Map<String, dynamic>),
      getAgentFullName: json['getAgentFullName'] as String?,
      getTenant1: json['getTenant1'] as String?,
      getTenant2: json['getTenant2'] as String?,
      getTenant3: json['getTenant3'] as String?,
      getTenant4: json['getTenant4'] as String?,
    );

Tenants _$TenantsFromJson(Map<String, dynamic> json) => Tenants(
      tenantId: (json['tenantId'] as num?)?.toInt(),
      primaryTenant: json['primaryTenant'] as bool?,
      userId: (json['userId'] as num?)?.toInt(),
      applicantUniqueId: json['applicantUniqueId'],
      rentApplicationId: json['rentApplicationId'],
      propertyId: (json['propertyId'] as num?)?.toInt(),
      contactId: (json['contactId'] as num?)?.toInt(),
      isUserverified: json['isUserverified'] as bool?,
      contactUId: json['contactUId'] as String?,
      tenantFname: json['tenantFname'] as String?,
      tenantLname: json['tenantLname'] as String?,
      tenantAddress: json['tenantAddress'],
      tenantMobile: json['tenantMobile'] as String?,
      tenantEmail: json['tenantEmail'] as String?,
      getFullName: json['getFullName'] as String?,
      viewType: (json['viewType'] as num?)?.toInt(),
      agencyId: json['agencyId'],
      agentId: json['agentId'],
      tenantFolioDetails: json['tenantFolioDetails'] == null
          ? null
          : TenantFolioDetails.fromJson(
              json['tenantFolioDetails'] as Map<String, dynamic>),
    );

TenantFolioDetails _$TenantFolioDetailsFromJson(Map<String, dynamic> json) =>
    TenantFolioDetails(
      id: (json['id'] as num?)?.toInt(),
      propertyAddress: json['propertyAddress'] as String?,
      propertyId: (json['propertyId'] as num?)?.toInt(),
      propertyUId: json['propertyUId'] as String?,
      tenantChecksum: (json['tenantChecksum'] as num?)?.toInt(),
      rent: (json['rent'] as num?)?.toInt(),
      period: (json['period'] as num?)?.toInt(),
      rentIncludeTax: json['rentIncludeTax'] as bool?,
      bondAmount: (json['bondAmount'] as num?)?.toInt(),
      bondInTrust: (json['bondInTrust'] as num?)?.toInt(),
      moveIn: json['moveIn'] == null
          ? null
          : DateTime.parse(json['moveIn'] as String),
      moveOut: json['moveOut'],
      agreementStart: json['agreementStart'] == null
          ? null
          : DateTime.parse(json['agreementStart'] as String),
      agreementEnd: json['agreementEnd'] == null
          ? null
          : DateTime.parse(json['agreementEnd'] as String),
      datePaidFrom: json['datePaidFrom'],
      datePaidTo: json['datePaidTo'],
      deposited: (json['deposited'] as num?)?.toInt(),
      balance: (json['balance'] as num?)?.toInt(),
      agreementTerm: (json['agreementTerm'] as num?)?.toInt(),
      isExtenant: json['isExtenant'] as bool?,
      vacatedDate: json['vacatedDate'],
      rentReviewFrequency: json['rentReviewFrequency'],
      isCommercial: json['isCommercial'] as bool?,
      abn: json['abn'],
      tenantAccountFolio: json['tenantAccountFolio'] as String?,
      tenancyType: json['tenancyType'],
      rentInvoice: json['rentInvoice'] as bool?,
      invoiceDaysInAdvance: json['invoiceDaysInAdvance'],
      partPayment: (json['partPayment'] as num?)?.toInt(),
      newTenant: json['newTenant'],
      nextRentDate: json['nextRentDate'],
      nextRent: json['nextRent'],
      nextRentNoticePeriod: json['nextRentNoticePeriod'],
      rboBondNumber: json['rboBondNumber'],
      isArchived: json['isArchived'] as bool?,
      archivedReason: json['archivedReason'],
      arrears: json['arrears'],
      getRentToVacate: json['getRentToVacate'],
      getRentArrears: json['getRentArrears'],
      paymentMethods: json['paymentMethods'] as List<dynamic>?,
      nextPeriodList: json['nextPeriodList'],
      getDailyRent: (json['getDailyRent'] as num?)?.toDouble(),
    );
