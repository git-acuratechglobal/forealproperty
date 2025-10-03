import 'package:foreal_property/core/services/agreement_service/agreement_service.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../states/update_tenancy_agreement_state.dart';
part 'update_tenancy_agreement.g.dart';

@riverpod
class UpdateTenancyAgreement extends _$UpdateTenancyAgreement {
  @override
  FutureOr<UpdateTenancyAgreementState?> build() async {
    return null;
  }

  Future<void> updateTenantDetails() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(updateTenantInAgreementProvider);
      final response =
          await ref.watch(agreementServiceProvider).updateTenantDetails(params);
      return UpdateTenancyAgreementState(
          event: TenancyEventType.updateTenantDetails, response: response);
    });
  }

  Future<void> updateLandlordDetails() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(updateLandlordTenantDetailsParamProvider);
      final response = await ref
          .watch(agreementServiceProvider)
          .updateLandlordTenantAgreementDetails(params);
      return UpdateTenancyAgreementState(
          event: TenancyEventType.updateLandlordDetails, response: response);
    });
  }

  Future<void> updateRentBondDetails() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(updateRentBondParamProvider);
      final response =
          await ref.watch(agreementServiceProvider).updateRentBond(params);
      return UpdateTenancyAgreementState(
          event: TenancyEventType.updateRentBondDetails, response: response);
    });
  }

  Future<void> updateTenantAgreementInfo(String propertyId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(updateTenantAgreementInfoParamProvider);
      final response = await ref
          .watch(agreementServiceProvider)
          .updateTenantAgreementInfo(params);
      return UpdateTenancyAgreementState(
          event: TenancyEventType.updateTenantAgreementInfo,
          response: response,
          propertyId: propertyId);
    });
  }

  Future<void> generatePdfReport(String propertyId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final result = await ref
          .watch(agreementServiceProvider)
          .generateTenantPdfReport(propertyId);
      return const UpdateTenancyAgreementState(
        event: TenancyEventType.generatePdfReport,
      );
    });
  }
}
