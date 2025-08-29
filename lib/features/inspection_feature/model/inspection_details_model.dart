import 'package:json_annotation/json_annotation.dart';

part 'inspection_details_model.g.dart';

@JsonSerializable(createToJson: false)
class InspectionDetailsModel {
  InspectionDetailsModel({
    required this.inspectionPropertyInformation,
    required this.inspectionDetails,
    required this.templates,
    required this.inspectionComplianceUtilitiesDetails,
    required this.overview,
    required this.picturenumber,
    required this.selectedAttributes,
  });

  final InspectionPropertyInformation? inspectionPropertyInformation;
  final InspectionDetails? inspectionDetails;
  final List<Template>? templates;
  final InspectionComplianceUtilitiesDetails?
      inspectionComplianceUtilitiesDetails;
  final bool? overview;
  final int? picturenumber;
  final SelectedAttributes? selectedAttributes;

  factory InspectionDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$InspectionDetailsModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class InspectionComplianceUtilitiesDetails {
  InspectionComplianceUtilitiesDetails({
    required this.inspectionId,
    required this.premisesStrctlySound,
    required this.lightingInRoom,
    required this.ventilation,
    required this.elctrcityOutletsSockt,
    required this.plumbingandDrainage,
    required this.waterMeterReading,
    required this.suppliedElectricty,
    required this.suppliedGas,
    required this.connectdToWaterSupply,
    required this.containBathrm,
    required this.tenantAgreesUtilities,
    required this.additionalUtilitiesTerms,
    required this.signsMuds,
    required this.pestsVermin,
    required this.rubbish,
    required this.listedLooseFill,
    required this.smokeAlarmInstalled,
    required this.smokeAlarmWorking,
    required this.smokeAlaramLastChecked,
    required this.smokeAlarmBttryReplaced,
    required this.battryChangedDate,
    required this.haveRemovableBattry,
    required this.removableBattryChangedDate,
    required this.visibleSIgnDamage,
    required this.visibleElectricityHazard,
    required this.visibleGasHazard,
    required this.tenantAgreeSafetyIssues,
    required this.additionalTermSafetyIssues,
    required this.telephoneConnectd,
    required this.internetConnected,
    required this.seperatedMetered,
    required this.showerheadMaximumFlow,
    required this.dualFlushToilet,
    required this.coldWatrTapsMaximumFlow,
    required this.checkedWaterLeakage,
    required this.waterEfficiencyDateChecked,
    required this.watermeterReadingStart,
    required this.dateofWaterMeterReadingStart,
    required this.watermeterReadingEnd,
    required this.dateOdWaterMeterReadingEnd,
    required this.additionalComments,
    required this.lastDatePaintingExternal,
    required this.lastDatePaintingInternal,
    required this.lastDateInstalledSmokeAlarms,
    required this.lastDateFloorCleaned,
    required this.landlordAgreeToUndrtakeWork,
    required this.landLordWorkDoneBy,
    required this.landLordWorkDoneNote,
    required this.tenantReceivedOn,
    required this.isAutoSubmitted,
    required this.isSubmited,
  });

  final int? inspectionId;
  final bool? premisesStrctlySound;
  final bool? lightingInRoom;
  final bool? ventilation;
  final bool? elctrcityOutletsSockt;
  final bool? plumbingandDrainage;
  final dynamic waterMeterReading;
  final bool? suppliedElectricty;
  final bool? suppliedGas;
  final bool? connectdToWaterSupply;
  final bool? containBathrm;
  final bool? tenantAgreesUtilities;
  final String? additionalUtilitiesTerms;
  final bool? signsMuds;
  final bool? pestsVermin;
  final bool? rubbish;
  final bool? listedLooseFill;
  final bool? smokeAlarmInstalled;
  final bool? smokeAlarmWorking;
  final dynamic smokeAlaramLastChecked;
  final bool? smokeAlarmBttryReplaced;
  final dynamic battryChangedDate;
  final bool? haveRemovableBattry;
  final dynamic removableBattryChangedDate;
  final bool? visibleSIgnDamage;
  final bool? visibleElectricityHazard;
  final bool? visibleGasHazard;
  final bool? tenantAgreeSafetyIssues;
  final String? additionalTermSafetyIssues;
  final bool? telephoneConnectd;
  final bool? internetConnected;
  final bool? seperatedMetered;
  final bool? showerheadMaximumFlow;
  final bool? dualFlushToilet;
  final bool? coldWatrTapsMaximumFlow;
  final bool? checkedWaterLeakage;
  final dynamic waterEfficiencyDateChecked;
  final dynamic watermeterReadingStart;
  final dynamic dateofWaterMeterReadingStart;
  final dynamic watermeterReadingEnd;
  final dynamic dateOdWaterMeterReadingEnd;
  final String? additionalComments;
  final dynamic lastDatePaintingExternal;
  final dynamic lastDatePaintingInternal;
  final dynamic lastDateInstalledSmokeAlarms;
  final dynamic lastDateFloorCleaned;
  final String? landlordAgreeToUndrtakeWork;
  final List<dynamic>? landLordWorkDoneBy;
  final List<dynamic>? landLordWorkDoneNote;
  final DateTime? tenantReceivedOn;
  final dynamic isAutoSubmitted;
  final bool? isSubmited;

  factory InspectionComplianceUtilitiesDetails.fromJson(
          Map<String, dynamic> json) =>
      _$InspectionComplianceUtilitiesDetailsFromJson(json);
}

@JsonSerializable(createToJson: false)
class InspectionDetails {
  InspectionDetails({
    required this.inspectionId,
    required this.createdAt,
    required this.createdBy,
    required this.inspectionUniqueId,
    required this.inspectionType,
    required this.sInspectionType,
    required this.propertyId,
    required this.inspectionDate,
    required this.startTime,
    required this.endTime,
    required this.summary,
    required this.assignedAgent,
    required this.sAssignedAgent,
    required this.assignedTo,
    required this.previousInspection,
    required this.nextInspection,
    required this.inspectionIntervel,
    required this.shareWithOwner,
    required this.shareWithTenant,
    required this.rentReview,
    required this.waterMeterReading,
    required this.generalNotes,
    required this.followupActions,
    required this.agencyId,
    required this.propertyAddress,
    required this.isAgentFinalised,
    required this.isTenantFinalised,
    required this.completedDate,
    required this.reopenDate,
    required this.status,
    required this.tenantFolioId,
    required this.label,
    required this.isTenantAccepted,
    required this.tenantAcceptedDate,
    required this.isSubmited,
    required this.tenantDetails,
    required this.contactlistModelView,
  });

  final int? inspectionId;
  final DateTime? createdAt;
  final int? createdBy;
  final String? inspectionUniqueId;
  final int? inspectionType;
  final String? sInspectionType;
  final int? propertyId;
  final DateTime? inspectionDate;
  final DateTime? startTime;
  final DateTime? endTime;
  final dynamic summary;
  final int? assignedAgent;
  final String? sAssignedAgent;
  final String? assignedTo;
  final dynamic previousInspection;
  final dynamic nextInspection;
  final int? inspectionIntervel;
  final bool? shareWithOwner;
  final bool? shareWithTenant;
  final int? rentReview;
  final int? waterMeterReading;
  final dynamic generalNotes;
  final dynamic followupActions;
  final int? agencyId;
  final String? propertyAddress;
  final dynamic isAgentFinalised;
  final dynamic isTenantFinalised;
  final DateTime? completedDate;
  final DateTime? reopenDate;
  final int? status;
  final dynamic tenantFolioId;
  final String? label;
  final bool? isTenantAccepted;
  final dynamic tenantAcceptedDate;
  final bool? isSubmited;
  final TenantDetails? tenantDetails;
  final List<dynamic>? contactlistModelView;

  factory InspectionDetails.fromJson(Map<String, dynamic> json) =>
      _$InspectionDetailsFromJson(json);
}

@JsonSerializable(createToJson: false)
class TenantDetails {
  TenantDetails({
    required this.tenantName,
    required this.tenantFolioId,
  });

  final dynamic tenantName;
  final int? tenantFolioId;

  factory TenantDetails.fromJson(Map<String, dynamic> json) =>
      _$TenantDetailsFromJson(json);
}

@JsonSerializable(createToJson: false)
class InspectionPropertyInformation {
  InspectionPropertyInformation({
    required this.propertyAddress,
    required this.tenants,
    required this.agentName,
    required this.tenantReceivedOn,
  });

  final String? propertyAddress;
  final dynamic tenants;
  final String? agentName;
  final dynamic tenantReceivedOn;

  factory InspectionPropertyInformation.fromJson(Map<String, dynamic> json) =>
      _$InspectionPropertyInformationFromJson(json);
}

@JsonSerializable(createToJson: false)
class SelectedAttributes {
  SelectedAttributes({
    required this.inspectionId,
    required this.templateId,
    required this.templateNotes,
    required this.label,
    required this.attribute,
    required this.isAutoSubmitted,
    required this.isTenantLogged,
    required this.selectedAttributeList,
    required this.pictures,
    required this.addUpdatePictures,
  });

  final int? inspectionId;
  final int? templateId;
  final dynamic templateNotes;
  final dynamic label;
  final dynamic attribute;
  final dynamic isAutoSubmitted;
  final dynamic isTenantLogged;
  final List<dynamic>? selectedAttributeList;
  final List<dynamic>? pictures;
  final List<dynamic>? addUpdatePictures;

  factory SelectedAttributes.fromJson(Map<String, dynamic> json) =>
      _$SelectedAttributesFromJson(json);
}

@JsonSerializable(createToJson: false)
class Template {
  Template({
    required this.inspectionId,
    required this.id,
    required this.attribute,
    required this.label,
    required this.templateNotes,
    required this.isSubmited,
    required this.templatesDetails,
  });

  final int? inspectionId;
  final int? id;
  final String? attribute;
  final String? label;
  final String? templateNotes;
  final bool? isSubmited;
  final List<TemplatesDetail>? templatesDetails;

  factory Template.fromJson(Map<String, dynamic> json) =>
      _$TemplateFromJson(json);
}

@JsonSerializable(createToJson: false)
class TemplatesDetail {
  TemplatesDetail({
    required this.id,
    required this.inspectionTemplateId,
    required this.facilityId,
    required this.facilityName,
    required this.cleaned,
    required this.undermanaged,
    required this.working,
    required this.agentComment,
    required this.tenantComment,
    required this.cleanedByTenant,
    required this.undermanagedByTenant,
    required this.workingByTenant,
    required this.isTenantAgree,
    required this.addUpdatePictures,
    required this.templateDetailsPictures,
  });

  final int? id;
  final int? inspectionTemplateId;
  final int? facilityId;
  final String? facilityName;
  final bool? cleaned;
  final bool? undermanaged;
  final bool? working;
  final dynamic agentComment;
  final dynamic tenantComment;
  final dynamic cleanedByTenant;
  final dynamic undermanagedByTenant;
  final dynamic workingByTenant;
  final dynamic isTenantAgree;
  final List<dynamic>? addUpdatePictures;
  final List<TemplateDetailsPicture>? templateDetailsPictures;

  factory TemplatesDetail.fromJson(Map<String, dynamic> json) =>
      _$TemplatesDetailFromJson(json);
}

@JsonSerializable(createToJson: false)
class TemplateDetailsPicture {
  TemplateDetailsPicture({
    required this.id,
    required this.inspectionTemplateId,
    required this.templateId,
    required this.inspectionId,
    required this.fileName,
    required this.fileChecksum,
    required this.description,
    required this.filePath,
    required this.inspectionTemplateDetailsId,
    required this.isTenantUploaded,
    required this.photoNumber,
  });

  final int? id;
  final int? inspectionTemplateId;
  final int? templateId;
  final int? inspectionId;
  final String? fileName;
  final String? fileChecksum;
  final dynamic description;
  final dynamic filePath;
  final int? inspectionTemplateDetailsId;
  final bool? isTenantUploaded;
  final int? photoNumber;

  factory TemplateDetailsPicture.fromJson(Map<String, dynamic> json) =>
      _$TemplateDetailsPictureFromJson(json);
}

@JsonSerializable(createToJson: false)
class TemplateAttribute {
  TemplateAttribute({
    required this.attributes,
    required this.templates,
  });

  final List<String>? attributes;

  final List<Template>? templates;

  factory TemplateAttribute.fromJson(Map<String, dynamic> json) =>
      _$TemplateAttributeFromJson(json);
}
