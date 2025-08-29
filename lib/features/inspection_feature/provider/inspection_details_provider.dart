import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/core/services/inspection_service/inspection_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../model/inspection_details_model.dart';
part 'inspection_details_provider.g.dart';

@riverpod
Future<InspectionDetailsModel> getInspectionDetails(Ref ref,
    {required int inspectionId}) async {
  return ref
      .watch(inspectionServiceProvider)
      .getInspectionDetails(inspectionId: inspectionId);
}

@riverpod
Future<TemplateAttribute> getTemplates(Ref ref,
    {required int inspectionId}) async {
  return ref
      .watch(inspectionServiceProvider)
      .getTemplate(inspectionId: inspectionId);
  ;
}
