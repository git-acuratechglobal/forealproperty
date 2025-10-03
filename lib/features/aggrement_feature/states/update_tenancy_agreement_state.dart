import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_tenancy_agreement_state.freezed.dart';

@freezed
sealed class UpdateTenancyAgreementState with _$UpdateTenancyAgreementState {
  const factory UpdateTenancyAgreementState({
    String? response,
    required TenancyEventType event,
    String? propertyId,
  }) = _UpdateTenancyAgreementState;
}

enum TenancyEventType {
  updateTenantDetails,
  updateLandlordDetails,
  updateRentBondDetails,
  updateTenantAgreementInfo,
  generatePdfReport,
}
