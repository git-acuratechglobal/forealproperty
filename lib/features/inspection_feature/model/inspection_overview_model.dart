import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inspection_overview_model.g.dart';

@JsonSerializable(createToJson: false)
class InspectionOverviewModel {
  InspectionOverviewModel({
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
  final String? summary;
  final int? assignedAgent;
  final String? sAssignedAgent;
  final dynamic assignedTo;
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
  final bool? isAgentFinalised;
  final dynamic isTenantFinalised;
  final dynamic completedDate;
  final dynamic reopenDate;
  final int? status;
  final dynamic tenantFolioId;
  final dynamic label;
  final bool? isTenantAccepted;
  final dynamic tenantAcceptedDate;
  final bool? isSubmited;
  final TenantDetails? tenantDetails;
  final List<ContactlistModelView>? contactlistModelView;

  factory InspectionOverviewModel.fromJson(Map<String, dynamic> json) => _$InspectionOverviewModelFromJson(json);

  String get formattedInspectionDate {
    if (inspectionDate == null) return "";
    return DateFormat('dd/MM/yyyy').format(inspectionDate!);
  }

  String get formattedStartTime {
    if (startTime == null) return "";
    return DateFormat('hh:mm a').format(startTime!);
  }
  String get formattedEndTime {
    if (endTime == null) return "";
    return DateFormat('hh:mm a').format(endTime!);
  }

  String get formattedDuration {
    if (startTime == null || endTime == null) return "";

    Duration difference = endTime!.difference(startTime!);

    if (difference.inHours > 0) {
      return "${difference.inHours} hour${difference.inHours > 1 ? 's' : ''}";
    } else {
      return "${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''}";
    }
  }

}

@JsonSerializable(createToJson: false)
class ContactlistModelView {
  ContactlistModelView({
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
    required this.contactType,
    required this.address,
    required this.isVerificationLinkSend,
    required this.abn,
    required this.companyName,
    required this.typeIam,
    required this.verificationProofs,
  });

  final int? ownerId;
  final int? contactId;
  final String? contactUId;
  final bool? isPrimary;
  final String? contactName;
  final String? contactEmail;
  final String? name;
  final String? firstName;
  final String? lastName;
  final String? phone;
  final dynamic fromDate;
  final dynamic toDate;
  final int? title;
  final int? contactType;
  final String? address;
  final bool? isVerificationLinkSend;
  final dynamic abn;
  final dynamic companyName;

  @JsonKey(name: 'typeIAM')
  final dynamic typeIam;
  final dynamic verificationProofs;

  factory ContactlistModelView.fromJson(Map<String, dynamic> json) => _$ContactlistModelViewFromJson(json);

}

@JsonSerializable(createToJson: false)
class TenantDetails {
  TenantDetails({
    required this.tenantName,
    required this.tenantFolioId,
  });

  final dynamic tenantName;
  final int? tenantFolioId;

  factory TenantDetails.fromJson(Map<String, dynamic> json) => _$TenantDetailsFromJson(json);

}
