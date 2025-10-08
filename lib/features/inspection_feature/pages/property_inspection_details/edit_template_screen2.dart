import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/features/inspection_feature/pages/property_inspection_details/widgets/edit_template_from_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../model/inspection_details_model.dart';
import '../../model/property_inspection_view_model.dart';
import '../../provider/inspection_provider.dart';

class EditTemplateScreen2 extends HookConsumerWidget {
  const EditTemplateScreen2(
      {super.key,
      required this.templatesDetail,
      required this.inspectionId,
      required this.onUpdate});
  final TemplatesDetail templatesDetail;
  final int inspectionId;
  final void Function() onUpdate;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localData = ref
        .watch(localStorageServiceProvider)
        .getInspectionById(templatesDetail.id ?? 0);


    return EditTemplateFromWidget(
      initialData: localData ?? templatesDetail.remoteData(inspectionId),
      onChanged: (PropertyInspectionViewModel data) {
        ref.read(localStorageServiceProvider).addInspection(data);
      },
      onNext: () {
        onUpdate.call();
      },
      isLoading: ref.watch(inspectionNotifierProvider).isLoading,
    );
  }
}
