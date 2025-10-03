import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/core/services/inspection_service/inspection_service.dart';
import 'package:foreal_property/features/inspection_feature/model/active_agent_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../model/inspection_activity_model.dart';
import '../model/inspection_details_model.dart';
import '../model/inspection_overview_model.dart';
import '../model/sub_template_model.dart';
part 'inspection_details_provider.g.dart';

@riverpod
Future<InspectionDetailsModel> getInspectionDetails(Ref ref,
    {required int inspectionId}) async {
  return ref
      .watch(inspectionServiceProvider)
      .getInspectionDetails(inspectionId: inspectionId);
}

@riverpod
Future<InspectionOverviewModel> getInspectionOverview(Ref ref,
    {required String uniqueId}) async {
  return ref
      .watch(inspectionServiceProvider)
      .getInspectionOverview(inspectionUniqueId: uniqueId);
}

@riverpod
Future<TemplateAttribute> getTemplates(Ref ref,
    {required int inspectionId}) async {
  return ref
      .watch(inspectionServiceProvider)
      .getTemplate(inspectionId: inspectionId);
}

@riverpod
Future<List<ActiveAgentModel>> getActiveAgent(Ref ref,
    {required String agencyId}) async {
  return await ref.watch(inspectionServiceProvider).getActiveAgent(agencyId);
}

@riverpod
Future<List<InspectionActivityModel>> getInspectionActivity(
  Ref ref, {
  required int inspectionId,
}) async {
  return ref
      .watch(inspectionServiceProvider)
      .getInspectionActivity(inspectionId: inspectionId);
}

@riverpod
Future<SubTemplateModel> getSubTemplate(Ref ref, int templateId) async {
  return ref.watch(inspectionServiceProvider).getSubTemplate(templateId);
}
