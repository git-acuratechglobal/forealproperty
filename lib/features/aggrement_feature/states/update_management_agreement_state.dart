import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_management_agreement_state.freezed.dart';

@freezed
sealed class UpdateManagementAgreementState
    with _$UpdateManagementAgreementState {
  const factory UpdateManagementAgreementState({
    String? response,
    required EventType event,
    String? propertyId,
  }) = _UpdateManagementAgreementState;
}

enum EventType {
  updatePropertyDetails,
  updatePeriodDetails,
  updateFeeCharges,
  updateTribunalFees,
  updatePromotionDetails,
  updateRepairDetails,
  generatePdfReport,

}
