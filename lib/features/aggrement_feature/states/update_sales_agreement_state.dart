import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_sales_agreement_state.freezed.dart';

@freezed
sealed class UpdateSalesAgreementState with _$UpdateSalesAgreementState {
  const factory UpdateSalesAgreementState({
    String? response,
    required SalesEventType event,
    String? propertyId,
  }) = _UpdateSalesAgreementState;
}

enum SalesEventType {
  updateSalesDetails,
  updateSolicitor,
  updatePeriodDetails,
  updateRemuneration,
  updateExpensesCharge,
  updatePromotionDetails,
  generatePdfReport,
}
