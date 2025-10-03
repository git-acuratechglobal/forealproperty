import 'package:foreal_property/core/services/agreement_service/agreement_service.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../model/management_agreement_model.dart';
part 'get_management_agreement.g.dart';

@Riverpod(keepAlive: true)
class GetManagementAgreement extends _$GetManagementAgreement {
  @override
  FutureOr<ManagementAgreementModel?> build() async {
    return null;
  }

  Future<void> getManagementAgreement(String propertyId) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      // assert(propertyId.isEmpty, 'propertyId must not be null or empty');
      final data = await ref
          .watch(agreementServiceProvider)
          .getManagementAgreement(propertyId);

      ref
          .read(updateManagementAgreementParamProvider.notifier)
          .updateFromApi(data);

      ref
          .read(managementAgreementPeriodDetailsParamProvider.notifier)
          .updateDataFromApi(data);

      ref
          .read(managementAgreementFeeChargesParamProvider.notifier)
          .updateDataFromApi(data);

      ref
          .read(managementAgreementTribunalParamProvider.notifier)
          .updateDataFromApi(data);

      ref
          .read(managementAgreementPromotionParamProvider.notifier)
          .updateDataFromApi(data);

      ref
          .read(managementAgreementRepairDetailsParamProvider.notifier)
          .updateDataFromApi(data);

      return data;
    });
  }
}
