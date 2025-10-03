import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/core/services/inspection_service/inspection_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/property_address_model.dart';

part 'get_property_for_plan_inspection.g.dart';

@Riverpod(keepAlive: true)
Future<List<PlanInspectionModel>> getPropertyForInspection(Ref ref) async {
  return ref.watch(inspectionServiceProvider).getPropertyForPlanInspection();
}
