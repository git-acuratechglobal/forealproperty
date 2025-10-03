import 'package:foreal_property/core/services/agreement_service/agreement_service.dart';
import 'package:foreal_property/features/aggrement_feature/model/sales_agreement_model.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'get_sales_agreement.g.dart';

@Riverpod(keepAlive: true)
class GetSalesAgreement extends _$GetSalesAgreement {
  @override
  FutureOr<SalesAgreementModel?> build() async {
    return null;
  }

  Future<void> getSalesAgreement(String propertyId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final data = await ref
          .watch(agreementServiceProvider)
          .getSalesAgreement(propertyId);
      ref.read(updateSalesAgreementParamProvider.notifier).updateFromApi(data);
      ref.read(updateSolicitorParamProvider.notifier).updateFromApi(data);
      ref.read(updatePeriodDetailsParamProvider.notifier).updateFromApi(data);
      ref
          .read(updateRemunerationDetailsParamProvider.notifier)
          .updateFromApi(data);
      ref.read(expensesChargeDetailsParamProvider.notifier).updateFromApi(data);
      ref
          .read(updateSalesPromotionDetailsParamProvider.notifier)
          .updateFromApi(data);
      return data;
    });
  }
}
