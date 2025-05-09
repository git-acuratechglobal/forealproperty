import 'package:freezed_annotation/freezed_annotation.dart';


part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
    const factory UserModel({
        String? userUniqueId,
        dynamic profilePicture,
        dynamic userName,
        dynamic userEmail,
        dynamic isActive,
        dynamic image,
        dynamic imageLink,
        dynamic imageName,
        dynamic lastUpdated,
        bool? isAuthenticated,
        bool? isSoleProp,
        dynamic facebookId,
        int? eAuthenticationType,
        String? token,
        dynamic abn,
        dynamic isNewUser,
        dynamic hideTask,
        dynamic hideCalendar,
        dynamic hideBranches,
        dynamic hideAnalytics,
        dynamic disableeSignature,
        dynamic currentProfile,
        int? userId,
        String? firstName,
        String? lastName,
        String? email,
        int? userType,
        List<int>? userRoles,
        int? userRoleId,
        int? subscriptionId,
        dynamic subscriptionName,
        dynamic agencyUniqueId,
        dynamic addedByAgencyId,
        dynamic address,
        dynamic contact,
        dynamic agencyId,
        bool? isSecondry,
        bool? isBranch,
        bool? hasSolicitorDetails,
        dynamic agentUniqueId,
        dynamic agentId,
        dynamic affiliateUniqueId,
        dynamic affiliateId,
        int? contactId,
        String? contactUniqueId,
        dynamic phone,
        int? staffId,
        dynamic agencyStaffUniqueId,
        bool? isStaff,
        dynamic agentMgt,
        dynamic taskCalendarMgt,
        dynamic contactMgt,
        dynamic propertyMgt,
        dynamic agreementDocsMgt,
        dynamic packagesPricingstructure,
        dynamic subscriptionBilling,
        dynamic paymentsReconcillation,
        dynamic dashboard,
        dynamic support,
        dynamic newsletter,
        bool? hasMultipleProfiles,
        int? tenantId,
        int? tenantFolioId,
        dynamic folioUniqueId,
        int? propertyId,
        int? supplierId,
        dynamic supplierUniqueId,
        List<UserProfile>? userProfiles,
    }) = _UserModel;

    factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class UserProfile with _$UserProfile {
    const factory UserProfile({
        int? userId,
        DateTime? createdAt,
        int? userRoleId,
        String? userRoleLabel,
        bool? isActive,
    }) = _UserProfile;

    factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
}
