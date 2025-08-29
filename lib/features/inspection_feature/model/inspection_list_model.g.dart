// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InspectionListModel _$InspectionListModelFromJson(Map<String, dynamic> json) =>
    InspectionListModel(
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
      completedDate: json['completedDate'],
      reopenDate: json['reopenDate'],
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
