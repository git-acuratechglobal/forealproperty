// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_overview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InspectionOverviewModel _$InspectionOverviewModelFromJson(
        Map<String, dynamic> json) =>
    InspectionOverviewModel(
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
      summary: json['summary'] as String?,
      assignedAgent: (json['assignedAgent'] as num?)?.toInt(),
      sAssignedAgent: json['sAssignedAgent'] as String?,
      assignedTo: json['assignedTo'],
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
      isAgentFinalised: json['isAgentFinalised'] as bool?,
      isTenantFinalised: json['isTenantFinalised'],
      completedDate: json['completedDate'],
      reopenDate: json['reopenDate'],
      status: (json['status'] as num?)?.toInt(),
      tenantFolioId: json['tenantFolioId'],
      label: json['label'],
      isTenantAccepted: json['isTenantAccepted'] as bool?,
      tenantAcceptedDate: json['tenantAcceptedDate'],
      isSubmited: json['isSubmited'] as bool?,
      tenantDetails: json['tenantDetails'] == null
          ? null
          : TenantDetails.fromJson(
              json['tenantDetails'] as Map<String, dynamic>),
      contactlistModelView: (json['contactlistModelView'] as List<dynamic>?)
          ?.map((e) => ContactlistModelView.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

ContactlistModelView _$ContactlistModelViewFromJson(
        Map<String, dynamic> json) =>
    ContactlistModelView(
      ownerId: (json['ownerId'] as num?)?.toInt(),
      contactId: (json['contactId'] as num?)?.toInt(),
      contactUId: json['contactUId'] as String?,
      isPrimary: json['isPrimary'] as bool?,
      contactName: json['contactName'] as String?,
      contactEmail: json['contactEmail'] as String?,
      name: json['name'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phone: json['phone'] as String?,
      fromDate: json['fromDate'],
      toDate: json['toDate'],
      title: (json['title'] as num?)?.toInt(),
      contactType: (json['contactType'] as num?)?.toInt(),
      address: json['address'] as String?,
      isVerificationLinkSend: json['isVerificationLinkSend'] as bool?,
      abn: json['abn'],
      companyName: json['companyName'],
      typeIam: json['typeIAM'],
      verificationProofs: json['verificationProofs'],
    );

TenantDetails _$TenantDetailsFromJson(Map<String, dynamic> json) =>
    TenantDetails(
      tenantName: json['tenantName'],
      tenantFolioId: (json['tenantFolioId'] as num?)?.toInt(),
    );
