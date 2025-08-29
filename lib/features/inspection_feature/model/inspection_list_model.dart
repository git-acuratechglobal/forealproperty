import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inspection_list_model.g.dart';

@JsonSerializable(createToJson: false)
class InspectionListModel {
  InspectionListModel({
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
  final dynamic completedDate;
  final dynamic reopenDate;
  final int? status;
  final dynamic tenantFolioId;
  final String? label;
  final bool? isTenantAccepted;
  final dynamic tenantAcceptedDate;
  final bool? isSubmited;
  final TenantDetails? tenantDetails;
  final List<dynamic>? contactlistModelView;

  factory InspectionListModel.fromJson(Map<String, dynamic> json) =>
      _$InspectionListModelFromJson(json);

  String get scheduledFormattedDate {
    final dateFormatter = DateFormat('dd/MM/yyyy');
    final timeFormatter = DateFormat('hh:mma');
    final formatted =
        '${dateFormatter.format(inspectionDate!)} · ${timeFormatter.format(startTime!)} - ${timeFormatter.format(endTime!)}';
    return formatted;
  }
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
