// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InspectionDetailsModel _$InspectionDetailsModelFromJson(
        Map<String, dynamic> json) =>
    InspectionDetailsModel(
      inspectionPropertyInformation: json['inspectionPropertyInformation'] ==
              null
          ? null
          : InspectionPropertyInformation.fromJson(
              json['inspectionPropertyInformation'] as Map<String, dynamic>),
      inspectionDetails: json['inspectionDetails'] == null
          ? null
          : InspectionDetails.fromJson(
              json['inspectionDetails'] as Map<String, dynamic>),
      templates: (json['templates'] as List<dynamic>?)
          ?.map((e) => Template.fromJson(e as Map<String, dynamic>))
          .toList(),
      inspectionComplianceUtilitiesDetails:
          json['inspectionComplianceUtilitiesDetails'] == null
              ? null
              : InspectionComplianceUtilitiesDetails.fromJson(
                  json['inspectionComplianceUtilitiesDetails']
                      as Map<String, dynamic>),
      overview: json['overview'] as bool?,
      picturenumber: (json['picturenumber'] as num?)?.toInt(),
      selectedAttributes: json['selectedAttributes'] == null
          ? null
          : SelectedAttributes.fromJson(
              json['selectedAttributes'] as Map<String, dynamic>),
    );

InspectionComplianceUtilitiesDetails
    _$InspectionComplianceUtilitiesDetailsFromJson(Map<String, dynamic> json) =>
        InspectionComplianceUtilitiesDetails(
          inspectionId: (json['inspectionId'] as num?)?.toInt(),
          premisesStrctlySound: json['premisesStrctlySound'] as bool?,
          lightingInRoom: json['lightingInRoom'] as bool?,
          ventilation: json['ventilation'] as bool?,
          elctrcityOutletsSockt: json['elctrcityOutletsSockt'] as bool?,
          plumbingandDrainage: json['plumbingandDrainage'] as bool?,
          waterMeterReading: json['waterMeterReading'] as num?,
          suppliedElectricty: json['suppliedElectricty'] as bool?,
          suppliedGas: json['suppliedGas'] as bool?,
          connectdToWaterSupply: json['connectdToWaterSupply'] as bool?,
          containBathrm: json['containBathrm'] as bool?,
          tenantAgreesUtilities: json['tenantAgreesUtilities'] as bool?,
          additionalUtilitiesTerms: json['additionalUtilitiesTerms'] as String?,
          signsMuds: json['signsMuds'] as bool?,
          pestsVermin: json['pestsVermin'] as bool?,
          rubbish: json['rubbish'] as bool?,
          listedLooseFill: json['listedLooseFill'] as bool?,
          smokeAlarmInstalled: json['smokeAlarmInstalled'] as bool?,
          smokeAlarmWorking: json['smokeAlarmWorking'] as bool?,
          smokeAlaramLastChecked: json['smokeAlaramLastChecked'] == null
              ? null
              : DateTime.parse(json['smokeAlaramLastChecked'] as String),
          smokeAlarmBttryReplaced: json['smokeAlarmBttryReplaced'] as bool?,
          battryChangedDate: json['battryChangedDate'] == null
              ? null
              : DateTime.parse(json['battryChangedDate'] as String),
          haveRemovableBattry: json['haveRemovableBattry'] as bool?,
          removableBattryChangedDate: json['removableBattryChangedDate'] == null
              ? null
              : DateTime.parse(json['removableBattryChangedDate'] as String),
          visibleSIgnDamage: json['visibleSIgnDamage'] as bool?,
          visibleElectricityHazard: json['visibleElectricityHazard'] as bool?,
          visibleGasHazard: json['visibleGasHazard'] as bool?,
          tenantAgreeSafetyIssues: json['tenantAgreeSafetyIssues'] as bool?,
          additionalTermSafetyIssues:
              json['additionalTermSafetyIssues'] as String?,
          telephoneConnectd: json['telephoneConnectd'] as bool?,
          internetConnected: json['internetConnected'] as bool?,
          seperatedMetered: json['seperatedMetered'] as bool?,
          showerheadMaximumFlow: json['showerheadMaximumFlow'] as bool?,
          dualFlushToilet: json['dualFlushToilet'] as bool?,
          coldWatrTapsMaximumFlow: json['coldWatrTapsMaximumFlow'] as bool?,
          checkedWaterLeakage: json['checkedWaterLeakage'] as bool?,
          waterEfficiencyDateChecked: json['waterEfficiencyDateChecked'] == null
              ? null
              : DateTime.parse(json['waterEfficiencyDateChecked'] as String),
          watermeterReadingStart: json['watermeterReadingStart'] as num?,
          dateofWaterMeterReadingStart: json['dateofWaterMeterReadingStart'] ==
                  null
              ? null
              : DateTime.parse(json['dateofWaterMeterReadingStart'] as String),
          watermeterReadingEnd: json['watermeterReadingEnd'] as num?,
          dateOdWaterMeterReadingEnd: json['dateOdWaterMeterReadingEnd'] == null
              ? null
              : DateTime.parse(json['dateOdWaterMeterReadingEnd'] as String),
          additionalComments: json['additionalComments'] as String?,
          lastDatePaintingExternal: json['lastDatePaintingExternal'] == null
              ? null
              : DateTime.parse(json['lastDatePaintingExternal'] as String),
          lastDatePaintingInternal: json['lastDatePaintingInternal'] == null
              ? null
              : DateTime.parse(json['lastDatePaintingInternal'] as String),
          lastDateInstalledSmokeAlarms: json['lastDateInstalledSmokeAlarms'] ==
                  null
              ? null
              : DateTime.parse(json['lastDateInstalledSmokeAlarms'] as String),
          lastDateFloorCleaned: json['lastDateFloorCleaned'] == null
              ? null
              : DateTime.parse(json['lastDateFloorCleaned'] as String),
          landlordAgreeToUndrtakeWork:
              json['landlordAgreeToUndrtakeWork'] as String?,
          landLordWorkDoneBy: (json['landLordWorkDoneBy'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          landLordWorkDoneNote: (json['landLordWorkDoneNote'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          tenantReceivedOn: json['tenantReceivedOn'] == null
              ? null
              : DateTime.parse(json['tenantReceivedOn'] as String),
          isAutoSubmitted: json['isAutoSubmitted'],
          isSubmited: json['isSubmited'] as bool?,
        );

InspectionDetails _$InspectionDetailsFromJson(Map<String, dynamic> json) =>
    InspectionDetails(
      inspectionId: (json['inspectionId'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: (json['createdBy'] as num?)?.toInt(),
      inspectionUniqueId: json['inspectionUniqueId'] as String?,
      inspectionType: (json['inspectionType'] as num?)?.toInt(),
      sInspectionType: json['sInspectionType'] as String?,
      propertyId: (json['propertyId'] as num?)?.toInt(),
      inspectionDate: json['inspectionDate'] == null
          ? null
          : DateTime.parse(json['inspectionDate'] as String),
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      summary: json['summary'],
      assignedAgent: (json['assignedAgent'] as num?)?.toInt(),
      sAssignedAgent: json['sAssignedAgent'] as String?,
      assignedTo: json['assignedTo'] as String?,
      previousInspection: json['previousInspection'],
      nextInspection: json['nextInspection'],
      inspectionIntervel: (json['inspectionIntervel'] as num?)?.toInt(),
      shareWithOwner: json['shareWithOwner'] as bool?,
      shareWithTenant: json['shareWithTenant'] as bool?,
      rentReview: (json['rentReview'] as num?)?.toInt(),
      waterMeterReading: (json['waterMeterReading'] as num?)?.toInt(),
      generalNotes: json['generalNotes'],
      followupActions: json['followupActions'],
      agencyId: (json['agencyId'] as num?)?.toInt(),
      propertyAddress: json['propertyAddress'] as String?,
      isAgentFinalised: json['isAgentFinalised'],
      isTenantFinalised: json['isTenantFinalised'],
      completedDate: json['completedDate'] == null
          ? null
          : DateTime.parse(json['completedDate'] as String),
      reopenDate: json['reopenDate'] == null
          ? null
          : DateTime.parse(json['reopenDate'] as String),
      status: (json['status'] as num?)?.toInt(),
      tenantFolioId: json['tenantFolioId'],
      label: json['label'] as String?,
      isTenantAccepted: json['isTenantAccepted'] as bool?,
      tenantAcceptedDate: json['tenantAcceptedDate'],
      isSubmited: json['isSubmited'] as bool?,
      tenantDetails: json['tenantDetails'] == null
          ? null
          : TenantDetails.fromJson(
              json['tenantDetails'] as Map<String, dynamic>),
      contactlistModelView: json['contactlistModelView'] as List<dynamic>?,
    );

TenantDetails _$TenantDetailsFromJson(Map<String, dynamic> json) =>
    TenantDetails(
      tenantName: json['tenantName'],
      tenantFolioId: (json['tenantFolioId'] as num?)?.toInt(),
    );

InspectionPropertyInformation _$InspectionPropertyInformationFromJson(
        Map<String, dynamic> json) =>
    InspectionPropertyInformation(
      propertyAddress: json['propertyAddress'] as String?,
      tenants: json['tenants'],
      agentName: json['agentName'] as String?,
      tenantReceivedOn: json['tenantReceivedOn'],
    );

SelectedAttributes _$SelectedAttributesFromJson(Map<String, dynamic> json) =>
    SelectedAttributes(
      inspectionId: (json['inspectionId'] as num?)?.toInt(),
      templateId: (json['templateId'] as num?)?.toInt(),
      templateNotes: json['templateNotes'],
      label: json['label'],
      attribute: json['attribute'],
      isAutoSubmitted: json['isAutoSubmitted'],
      isTenantLogged: json['isTenantLogged'],
      selectedAttributeList: json['selectedAttributeList'] as List<dynamic>?,
      pictures: json['pictures'] as List<dynamic>?,
      addUpdatePictures: json['addUpdatePictures'] as List<dynamic>?,
    );

Template _$TemplateFromJson(Map<String, dynamic> json) => Template(
      inspectionId: (json['inspectionId'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      attribute: json['attribute'] as String?,
      label: json['label'] as String?,
      templateNotes: json['templateNotes'] as String?,
      isSubmited: json['isSubmited'] as bool?,
      templatesDetails: (json['templatesDetails'] as List<dynamic>?)
          ?.map((e) => TemplatesDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

TemplatesDetail _$TemplatesDetailFromJson(Map<String, dynamic> json) =>
    TemplatesDetail(
      id: (json['id'] as num?)?.toInt(),
      inspectionTemplateId: (json['inspectionTemplateId'] as num?)?.toInt(),
      facilityId: (json['facilityId'] as num?)?.toInt(),
      agentProgress: (json['agentProgress'] as num?)?.toInt(),
      facilityName: json['facilityName'] as String?,
      cleaned: json['cleaned'] as bool?,
      undermanaged: json['undermanaged'] as bool?,
      working: json['working'] as bool?,
      agentComment: json['agentComment'],
      tenantComment: json['tenantComment'],
      cleanedByTenant: json['cleanedByTenant'],
      undermanagedByTenant: json['undermanagedByTenant'],
      workingByTenant: json['workingByTenant'],
      isTenantAgree: json['isTenantAgree'],
      addUpdatePictures: json['addUpdatePictures'] as List<dynamic>?,
      templateDetailsPictures: (json['templateDetailsPictures']
              as List<dynamic>?)
          ?.map(
              (e) => TemplateDetailsPicture.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

TemplateDetailsPicture _$TemplateDetailsPictureFromJson(
        Map<String, dynamic> json) =>
    TemplateDetailsPicture(
      id: (json['id'] as num?)?.toInt(),
      inspectionTemplateId: (json['inspectionTemplateId'] as num?)?.toInt(),
      templateId: (json['templateId'] as num?)?.toInt(),
      inspectionId: (json['inspectionId'] as num?)?.toInt(),
      fileName: json['fileName'] as String?,
      fileChecksum: json['fileChecksum'] as String?,
      description: json['description'],
      filePath: json['filePath'],
      inspectionTemplateDetailsId:
          (json['inspectionTemplateDetailsId'] as num?)?.toInt(),
      isTenantUploaded: json['isTenantUploaded'] as bool?,
      photoNumber: (json['photoNumber'] as num?)?.toInt(),
    );

TemplateAttribute _$TemplateAttributeFromJson(Map<String, dynamic> json) =>
    TemplateAttribute(
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      templates: (json['templates'] as List<dynamic>?)
          ?.map((e) => Template.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
