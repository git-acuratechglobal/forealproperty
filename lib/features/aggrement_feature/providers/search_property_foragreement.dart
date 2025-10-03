import 'dart:async';
import 'package:foreal_property/core/services/agreement_service/agreement_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../inspection_feature/model/property_for_inspection.dart';

part 'search_property_foragreement.g.dart';

@riverpod
class SearchPropertyForAgreement extends _$SearchPropertyForAgreement {
  @override
  FutureOr<List<PropertyForInspection>> build() async {
    return await ref.read(agreementServiceProvider).getPropertyForAgreement("");
  }

  Future<void> searchProperty({String search = ""}) async {
    // state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      return await ref
          .read(agreementServiceProvider)
          .getPropertyForAgreement(search);
    });
  }
}
