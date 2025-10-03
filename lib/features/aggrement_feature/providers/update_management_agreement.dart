import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/services/agreement_service/agreement_service.dart';
import '../states/update_management_agreement_state.dart';
import 'get_agreement_doc_list.dart';
part 'update_management_agreement.g.dart';

@riverpod
class UpdateManagementAgreement extends _$UpdateManagementAgreement {
  @override
  FutureOr<UpdateManagementAgreementState?> build() async {
    return null;
  }

  Future<void> updatePropertyDetails() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.read(updateManagementAgreementParamProvider);
      final response = await ref
          .read(agreementServiceProvider)
          .updateManagementAgreementPropertyDetails(params);
      return UpdateManagementAgreementState(
        event: EventType.updatePropertyDetails,
        response: response,
      );
    });
  }

  Future<void> updateAgreementPeriodDetails() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.read(managementAgreementPeriodDetailsParamProvider);
      final response = await ref
          .read(agreementServiceProvider)
          .updateAgreementPeriodDetails(params);
      return UpdateManagementAgreementState(
        event: EventType.updatePeriodDetails,
        response: response,
      );
    });
  }

  Future<void> updateAgreementFeeCharges() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.read(managementAgreementFeeChargesParamProvider);
      final response = await ref
          .read(agreementServiceProvider)
          .updateAgreementFeeCharges(params);
      return UpdateManagementAgreementState(
        event: EventType.updateFeeCharges,
        response: response,
      );
    });
  }

  Future<void> updateTribunalFees() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.read(managementAgreementTribunalParamProvider);
      final response =
          await ref.read(agreementServiceProvider).updateTribunalFees(params);
      return UpdateManagementAgreementState(
        event: EventType.updateTribunalFees,
        response: response,
      );
    });
  }

  Future<void> updatePromotionalActivity() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.read(managementAgreementPromotionParamProvider);
      final response = await ref
          .read(agreementServiceProvider)
          .updatePromotionalActivity(params);
      return UpdateManagementAgreementState(
        event: EventType.updatePromotionDetails,
        response: response,
      );
    });
  }

  Future<void> updateRepairDetails(String propertyId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.read(managementAgreementRepairDetailsParamProvider);
      final response = await ref
          .read(agreementServiceProvider)
          .updateAgreementRepairDetails(params);
      return UpdateManagementAgreementState(
          event: EventType.updateRepairDetails,
          response: response,
          propertyId: propertyId);
    });
  }

  Future<void> generatePdfReport(String propertyId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final response = await ref
          .read(agreementServiceProvider)
          .generatePdfReport(propertyId);
      return const UpdateManagementAgreementState(
        event: EventType.generatePdfReport,
      );
    });
  }
}

@riverpod
class DeleteAgreement extends _$DeleteAgreement {
  @override
  FutureOr<String?> build() async {
    return null;
  }

  Future<void> deleAgreement(
      int agreementId, int agreementType, bool? isCompleted) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final response = await ref
          .read(agreementServiceProvider)
          .deleteAgreement(agreementId, agreementType);
      await ref.read(getAgreementDocListProvider.notifier).refreshData(isCompleted);
      return response;
    });
  }
}
