import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/services/inspection_service/inspection_service.dart';
import '../params/add_template_param.dart';
import 'inspection_provider.dart';
part 'template_provider.g.dart';






@riverpod
class TemplateNotifier extends _$TemplateNotifier {
  @override
  FutureOr<TemplateState?> build() async {
    return null;
  }

  Future<void> addTemplates({required int inspectionId}) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final param = ref.read(addNewTemplateParamsProvider);
      final response = await ref
          .read(inspectionServiceProvider)
          .addTemplate(inspectionId: inspectionId, param: param);
      return TemplateState(response: response, event: TemplateEvent.add);
    });
  }

  Future<void> deleteTemplate(
      {required int inspectionId, required int templateId}) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final response = await ref
          .read(inspectionServiceProvider)
          .deleteTemplate(inspectionId: inspectionId, templateId: templateId);
      return TemplateState(response: response, event: TemplateEvent.delete);
    });
  }
}
