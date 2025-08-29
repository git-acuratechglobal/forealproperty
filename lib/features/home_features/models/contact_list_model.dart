import 'package:json_annotation/json_annotation.dart';

part 'contact_list_model.g.dart';

@JsonSerializable(createToJson: false)
class ContactList {
    ContactList({
        required this.contactId,
        required this.contactUniqueId,
        required this.contactDisplayId,
        required this.companyName,
        required this.isInvestor,
        required this.isDeveloper,
        required this.isAgent,
        required this.isFirstHomeBuyer,
        required this.type,
        required this.typeIam,
        required this.mobileNumber,
        required this.priceRange,
        required this.postcode,
        required this.regions,
        required this.shareStatus,
        required this.loggedAgent,
        required this.agent,
        required this.canUpdateShareStatus,
        required this.userId,
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.userType,
        required this.userRoles,
        required this.userRoleId,
        required this.subscriptionId,
        required this.subscriptionName,
        required this.agencyUniqueId,
        required this.addedByAgencyId,
        required this.address,
        required this.contact,
        required this.agencyId,
        required this.isSecondry,
        required this.isBranch,
        required this.hasSolicitorDetails,
        required this.agentUniqueId,
        required this.agentId,
        required this.affiliateUniqueId,
        required this.affiliateId,
        required this.phone,
        required this.staffId,
        required this.agencyStaffUniqueId,
        required this.isStaff,
        required this.agentMgt,
        required this.taskCalendarMgt,
        required this.contactMgt,
        required this.propertyMgt,
        required this.agreementDocsMgt,
        required this.packagesPricingstructure,
        required this.subscriptionBilling,
        required this.paymentsReconcillation,
        required this.dashboard,
        required this.support,
        required this.newsletter,
        required this.hasMultipleProfiles,
        required this.tenantId,
        required this.tenantFolioId,
        required this.folioUniqueId,
        required this.propertyId,
        required this.supplierId,
        required this.supplierUniqueId,
        required this.userProfiles,
    });

    final int? contactId;
    final String? contactUniqueId;
    final dynamic contactDisplayId;
    final dynamic companyName;
    final bool? isInvestor;
    final bool? isDeveloper;
    final dynamic isAgent;
    final bool? isFirstHomeBuyer;
    final String? type;

    @JsonKey(name: 'typeIAM') 
    final dynamic typeIam;
    final String? mobileNumber;
    final dynamic priceRange;
    final dynamic postcode;
    final dynamic regions;
    final int? shareStatus;
    final dynamic loggedAgent;
    final int? agent;
    final bool? canUpdateShareStatus;
    final int? userId;
    final String? firstName;
    final String? lastName;
    final String? email;
    final int? userType;
    final dynamic userRoles;

    @JsonKey(name: 'userRoleID') 
    final int? userRoleId;
    final int? subscriptionId;
    final dynamic subscriptionName;

    @JsonKey(name: 'agencyUniqueID') 
    final dynamic agencyUniqueId;

    @JsonKey(name: 'addedByAgencyID') 
    final dynamic addedByAgencyId;
    final dynamic address;
    final dynamic contact;

    @JsonKey(name: 'agencyID') 
    final int? agencyId;
    final bool? isSecondry;
    final bool? isBranch;
    final bool? hasSolicitorDetails;
    final dynamic agentUniqueId;
    final int? agentId;
    final dynamic affiliateUniqueId;
    final dynamic affiliateId;
    final String? phone;
    final int? staffId;
    final dynamic agencyStaffUniqueId;
    final bool? isStaff;
    final dynamic agentMgt;
    final dynamic taskCalendarMgt;
    final dynamic contactMgt;
    final dynamic propertyMgt;
    final dynamic agreementDocsMgt;
    final dynamic packagesPricingstructure;
    final dynamic subscriptionBilling;
    final dynamic paymentsReconcillation;
    final dynamic dashboard;
    final dynamic support;
    final dynamic newsletter;
    final bool? hasMultipleProfiles;
    final int? tenantId;
    final int? tenantFolioId;
    final dynamic folioUniqueId;
    final int? propertyId;
    final int? supplierId;
    final dynamic supplierUniqueId;
    final dynamic userProfiles;

    factory ContactList.fromJson(Map<String, dynamic> json) => _$ContactListFromJson(json);

}
