import 'package:foreal_property/features/aggrement_feature/model/sales_agreement_model.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

import 'management_agreement_model.dart';

part 'tenancy_agreement_model.g.dart';

@JsonSerializable(createToJson: false)
class TenantAgreementModel {
  TenantAgreementModel({
    required this.loggedusername,
    required this.agreeementId,
    required this.contactlistModel,
    required this.primaryContact,
    required this.documentReceipients,
    required this.isDocusignAuthenticated,
    required this.agreementDate,
    required this.agreementType,
    required this.agreementStatus,
    required this.propertyId,
    required this.agencyId,
    required this.agentId,
    required this.principalName,
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
    required this.agencySuburb,
    required this.agencyEmail,
    required this.mobile,
    required this.phoneWork,
    required this.phoneHome,
    required this.fax,
    required this.agencyWorkPhone,
    required this.companyName,
    required this.agencyLogo,
    required this.propertySuburb,
    required this.propertyPostCode,
    required this.propertyState,
    required this.propertyUId,
    required this.rentTenure,
    required this.tenants,
    required this.termsAgreement,
    required this.termsAgreementNote,
    required this.agreementStart,
    required this.agreementEnd,
    required this.propertyAddress,
    required this.otherSpace,
    required this.rentAmount,
    required this.period,
    required this.leaseCommencement,
    required this.bsb,
    required this.accountNo,
    required this.accountName,
    required this.paymentReference,
    required this.paymentTo,
    required this.paymentAt,
    required this.paymentFollows,
    required this.bondAmount,
    required this.bondAmountProvidedTo,
    required this.maximumTenant,
    required this.electricalRepair,
    required this.electricalRepairContact,
    required this.plumbingRepair,
    required this.plumbingRepairContact,
    required this.otherRepair,
    required this.otherRepairContact,
    required this.payWaterBillSeperately,
    required this.isElectricitySupplied,
    required this.isGasSupplied,
    required this.smokeAlarmType,
    required this.smokeAlarmBatteryReplacable,
    required this.batteryType,
    required this.backupBatteryReplacable,
    required this.typeOfBackupBattery,
    required this.strataRsponsibleForReplacement,
    required this.strataByLawsApplicable,
    required this.doesLandlordConsentElectronic,
    required this.landlordElctrcConsentEmail,
    required this.doesTenantConsentElectronic,
    required this.tenantElctrcConsentEmail,
    required this.landlordAgentName,
    required this.landlordBusinessAddress,
    required this.landlordAgentPostcode,
    required this.landlordAgentSuburb,
    required this.landlordAgentState,
    required this.landlordAgentContact,
    required this.tenantAgentName,
    required this.tenantBusinessAddress,
    required this.tenantAgentPostcode,
    required this.tenantAgentSuburb,
    required this.tenantAgentState,
    required this.tenantAgentContact,
    required this.isTenantsSigned,
    required this.agreementSentDate,
    required this.isAgentSigned,
    required this.petDetails,
    required this.additionalComments,
    required this.agreementFilePath,
    required this.isManuallyAdded,
    required this.updateTenant,
    required this.currentTab,
    required this.tenantFolioId,
    required this.tenantFolioList,
    required this.activities,
    required this.getAgentFullName,
    required this.getTenant1,
    required this.getTenant2,
    required this.getTenant3,
    required this.getTenant4,
  });

  final dynamic loggedusername;
  final int? agreeementId;
  final List<PrimarycontactModel>? contactlistModel;
  final PrimarycontactModel? primaryContact;
  final List<DocumentReceipient>? documentReceipients;
  final bool? isDocusignAuthenticated;
  final DateTime? agreementDate;
  final dynamic agreementType;
  final int? agreementStatus;
  final int? propertyId;
  final int? agencyId;
  final int? agentId;
  final String? principalName;
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
  final String? agencySuburb;
  final String? agencyEmail;
  final String? mobile;
  final dynamic phoneWork;
  final dynamic phoneHome;
  final dynamic fax;
  final dynamic agencyWorkPhone;
  final String? companyName;
  final String? agencyLogo;
  final String? propertySuburb;
  final String? propertyPostCode;
  final String? propertyState;
  final String? propertyUId;
  final dynamic rentTenure;
  final List<Tenants>? tenants;
  final int? termsAgreement;
  final dynamic termsAgreementNote;
  final DateTime? agreementStart;
  final DateTime? agreementEnd;
  final String? propertyAddress;
  final dynamic otherSpace;
  final int? rentAmount;
  final int? period;
  final DateTime? leaseCommencement;
  final String? bsb;
  final String? accountNo;
  final String? accountName;
  final dynamic paymentReference;
  final dynamic paymentTo;
  final dynamic paymentAt;
  final dynamic paymentFollows;
  final int? bondAmount;
  final String? bondAmountProvidedTo;
  final int? maximumTenant;
  final String? electricalRepair;
  final String? electricalRepairContact;
  final String? plumbingRepair;
  final String? plumbingRepairContact;
  final dynamic otherRepair;
  final dynamic otherRepairContact;
  final bool? payWaterBillSeperately;
  final bool? isElectricitySupplied;
  final bool? isGasSupplied;
  final int? smokeAlarmType;
  final bool? smokeAlarmBatteryReplacable;
  final String? batteryType;
  final bool? backupBatteryReplacable;
  final String? typeOfBackupBattery;
  final bool? strataRsponsibleForReplacement;
  final bool? strataByLawsApplicable;
  final bool? doesLandlordConsentElectronic;
  final String? landlordElctrcConsentEmail;
  final bool? doesTenantConsentElectronic;
  final dynamic tenantElctrcConsentEmail;
  final String? landlordAgentName;
  final String? landlordBusinessAddress;
  final String? landlordAgentPostcode;
  final String? landlordAgentSuburb;
  final String? landlordAgentState;
  final String? landlordAgentContact;
  final String? tenantAgentName;
  final String? tenantBusinessAddress;
  final String? tenantAgentPostcode;
  final String? tenantAgentSuburb;
  final String? tenantAgentState;
  final String? tenantAgentContact;
  final bool? isTenantsSigned;
  final dynamic agreementSentDate;
  final bool? isAgentSigned;
  final String? petDetails;
  final String? additionalComments;
  final dynamic agreementFilePath;
  final bool? isManuallyAdded;
  final bool? updateTenant;
  final int? currentTab;
  final int? tenantFolioId;
  final dynamic tenantFolioList;
  final Activities? activities;
  final String? getAgentFullName;
  final String? getTenant1;
  final String? getTenant2;
  final String? getTenant3;
  final String? getTenant4;

  factory TenantAgreementModel.fromJson(Map<String, dynamic> json) =>
      _$TenantAgreementModelFromJson(json);

  String? get formateAgreementStart {
    if (agreementStart == null) return null;
    return DateFormat('dd-MM-yyyy').format(agreementStart!);
  }

  String? get formateAgreementEnd {
    if (agreementEnd == null) return null;
    return DateFormat('dd-MM-yyyy').format(agreementEnd!);
  }

  String? get fromatedLease {
    if (leaseCommencement == null) return null;
    return DateFormat('dd-MM-yyyy').format(leaseCommencement!);
  }
}



@JsonSerializable(createToJson: false)
class Tenants {
  Tenants({
    required this.tenantId,
    required this.primaryTenant,
    required this.userId,
    required this.applicantUniqueId,
    required this.rentApplicationId,
    required this.propertyId,
    required this.contactId,
    required this.isUserverified,
    required this.contactUId,
    required this.tenantFname,
    required this.tenantLname,
    required this.tenantAddress,
    required this.tenantMobile,
    required this.tenantEmail,
    required this.getFullName,
    required this.viewType,
    required this.agencyId,
    required this.agentId,
    required this.tenantFolioDetails,
  });

  final int? tenantId;
  final bool? primaryTenant;
  final int? userId;
  final dynamic applicantUniqueId;
  final dynamic rentApplicationId;
  final int? propertyId;
  final int? contactId;
  final bool? isUserverified;
  final String? contactUId;
  final String? tenantFname;
  final String? tenantLname;
  final dynamic tenantAddress;
  final String? tenantMobile;
  final String? tenantEmail;
  final String? getFullName;
  final int? viewType;
  final dynamic agencyId;
  final dynamic agentId;
  final TenantFolioDetails? tenantFolioDetails;

  factory Tenants.fromJson(Map<String, dynamic> json) => _$TenantsFromJson(json);

}

@JsonSerializable(createToJson: false)
class TenantFolioDetails {
  TenantFolioDetails({
    required this.id,
    required this.propertyAddress,
    required this.propertyId,
    required this.propertyUId,
    required this.tenantChecksum,
    required this.rent,
    required this.period,
    required this.rentIncludeTax,
    required this.bondAmount,
    required this.bondInTrust,
    required this.moveIn,
    required this.moveOut,
    required this.agreementStart,
    required this.agreementEnd,
    required this.datePaidFrom,
    required this.datePaidTo,
    required this.deposited,
    required this.balance,
    required this.agreementTerm,
    required this.isExtenant,
    required this.vacatedDate,
    required this.rentReviewFrequency,
    required this.isCommercial,
    required this.abn,
    required this.tenantAccountFolio,
    required this.tenancyType,
    required this.rentInvoice,
    required this.invoiceDaysInAdvance,
    required this.partPayment,
    required this.newTenant,
    required this.nextRentDate,
    required this.nextRent,
    required this.nextRentNoticePeriod,
    required this.rboBondNumber,
    required this.isArchived,
    required this.archivedReason,
    required this.arrears,
    required this.getRentToVacate,
    required this.getRentArrears,
    required this.paymentMethods,
    required this.nextPeriodList,
    required this.getDailyRent,
  });

  final int? id;
  final String? propertyAddress;
  final int? propertyId;
  final String? propertyUId;
  final int? tenantChecksum;
  final int? rent;
  final int? period;
  final bool? rentIncludeTax;
  final int? bondAmount;
  final int? bondInTrust;
  final DateTime? moveIn;
  final dynamic moveOut;
  final DateTime? agreementStart;
  final DateTime? agreementEnd;
  final dynamic datePaidFrom;
  final dynamic datePaidTo;
  final int? deposited;
  final int? balance;
  final int? agreementTerm;
  final bool? isExtenant;
  final dynamic vacatedDate;
  final dynamic rentReviewFrequency;
  final bool? isCommercial;
  final dynamic abn;
  final String? tenantAccountFolio;
  final dynamic tenancyType;
  final bool? rentInvoice;
  final dynamic invoiceDaysInAdvance;
  final int? partPayment;
  final dynamic newTenant;
  final dynamic nextRentDate;
  final dynamic nextRent;
  final dynamic nextRentNoticePeriod;
  final dynamic rboBondNumber;
  final bool? isArchived;
  final dynamic archivedReason;
  final dynamic arrears;
  final dynamic getRentToVacate;
  final dynamic getRentArrears;
  final List<dynamic>? paymentMethods;
  final dynamic nextPeriodList;
  final double? getDailyRent;

  factory TenantFolioDetails.fromJson(Map<String, dynamic> json) => _$TenantFolioDetailsFromJson(json);

}
