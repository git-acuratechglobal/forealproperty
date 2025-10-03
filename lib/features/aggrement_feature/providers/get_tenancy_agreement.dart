import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/features/aggrement_feature/model/tenancy_agreement_model.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/services/agreement_service/agreement_service.dart';
import '../model/tenant_contact_model.dart';
part 'get_tenancy_agreement.g.dart';

@Riverpod(keepAlive: true)
class GetTenancyAgreement extends _$GetTenancyAgreement {
  @override
  FutureOr<TenantAgreementModel?> build() async {
    return null;
  }

  Future<void> getTenancyAgreement(String propertyId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final data = await ref
          .watch(agreementServiceProvider)
          .getTenancyAgreement(propertyId);
      ref.read(updateTenantInAgreementProvider.notifier).updateFromApi(data);
      ref
          .read(updateLandlordTenantDetailsParamProvider.notifier)
          .updateFromApi(data);
      ref.read(updateRentBondParamProvider.notifier).updateFromApi(data);
      ref
          .read(updateTenantAgreementInfoParamProvider.notifier)
          .updateFromApi(data);
      return data;
    });
  }
}

@Riverpod(keepAlive: false)
class GetSearchContact extends _$GetSearchContact {
  @override
  FutureOr<List<SearchContactModel>> build() async {
    return ref.watch(agreementServiceProvider).serachContact('');
  }

  Future<void> searchConatct(String name) async {
    state = await AsyncValue.guard(() async {
     return ref.watch(agreementServiceProvider).serachContact(name);
    });
  }
}
