import 'package:foreal_property/features/aggrement_feature/providers/get_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/services/agreement_service/agreement_service.dart';
import '../states/update_sales_agreement_state.dart';
part 'update_sales_agreement.g.dart';

@riverpod
class UpdateSalesAgreement extends _$UpdateSalesAgreement {
  @override
  FutureOr<UpdateSalesAgreementState?> build() async {
    return null;
  }

  Future<void> updateSalesForm1( String propertyId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(updateSalesAgreementParamProvider);
      final response = await ref
          .watch(agreementServiceProvider)
          .updateSalesAgreement1(params);
      ref.read(getSalesAgreementProvider.notifier).getSalesAgreement(propertyId);
      return UpdateSalesAgreementState(
          event: SalesEventType.updateSalesDetails, response: response);
    });
  }

  Future<void> updateSalesForm2() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(updateSolicitorParamProvider);
      final response = await ref
          .watch(agreementServiceProvider)
          .updateSalesAgreement2(params);
      return UpdateSalesAgreementState(
          event: SalesEventType.updateSolicitor, response: response);
    });
  }

  Future<void> updateSalesForm3(String propertyUniId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(updatePeriodDetailsParamProvider);
      final response = await ref
          .watch(agreementServiceProvider)
          .updateSalesAgreement3(params);
      ref.read(getSalesAgreementProvider.notifier).getSalesAgreement(propertyUniId);
      return UpdateSalesAgreementState(
          event: SalesEventType.updatePeriodDetails, response: response);
    });
  }

  Future<void> updateSalesForm4() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(updateRemunerationDetailsParamProvider);
      final response = await ref
          .watch(agreementServiceProvider)
          .updateSalesAgreement4(params);
      return UpdateSalesAgreementState(
          event: SalesEventType.updateRemuneration, response: response);
    });
  }

  Future<void> updateSalesForm5() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(expensesChargeDetailsParamProvider);
      final response = await ref
          .watch(agreementServiceProvider)
          .updateSalesAgreement5(params);
      return UpdateSalesAgreementState(
          event: SalesEventType.updateExpensesCharge, response: response);
    });
  }

  Future<void> updateSalesForm6(String propertyId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(updateSalesPromotionDetailsParamProvider);
      final response = await ref
          .watch(agreementServiceProvider)
          .updateSalesAgreement6(params);
      return UpdateSalesAgreementState(
          event: SalesEventType.updatePromotionDetails,
          response: response,
          propertyId: propertyId);
    });
  }

  Future<void> generatePdfReport(String PropertyId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final response = await ref
          .watch(agreementServiceProvider)
          .generateSalesPdfReport(PropertyId);
      return const UpdateSalesAgreementState(
          event: SalesEventType.generatePdfReport);
    });
  }


}
