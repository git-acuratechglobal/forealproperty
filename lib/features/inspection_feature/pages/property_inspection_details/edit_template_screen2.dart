import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/inspection_feature/pages/property_inspection_details/widgets/edit_template_from_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/appbutton.dart';
import '../../../../core/utils/appsnackbar.dart';
import '../../model/inspection_details_model.dart';
import '../../model/property_inspection_view_model.dart';
import '../../params/update_inspection_params.dart';
import '../../provider/inspection_details_provider.dart';
import '../../provider/inspection_provider.dart';

class EditTemplateScreen2 extends HookConsumerWidget {
  const EditTemplateScreen2(
      {super.key, required this.templatesDetail, required this.inspectionId});
  final TemplatesDetail templatesDetail;
  final int inspectionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final updateParam = ref.read(updateInspectionParamProvider.notifier);
    final initialData =
        useState<PropertyInspectionViewModel>(PropertyInspectionViewModel(
      initialImages: templatesDetail.templateDetailsPictures
              ?.map((e) => e.fileName ?? "")
              .toList() ??
          [],
      comments: templatesDetail.agentComment,
      images: [],
      available: true,
      clean: templatesDetail.cleaned ?? false,
      unDamage: templatesDetail.undermanaged ?? false,
      working: templatesDetail.working ?? false,
    ));
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        updateParam.update((e) => e.copyWith(
              InspectionId: inspectionId,
              TemplateId: templatesDetail.inspectionTemplateId ?? 0,
            ));
      });
      return null;
    }, const []);
    return EditTemplateFromWidget(
      initialData: initialData.value,
      onChanged: (PropertyInspectionViewModel data) {
        final obj = SelectedAttribute(
            Id: templatesDetail.id ?? 0,
            Cleaned: data.clean,
            Undermanaged: data.unDamage,
            Working: data.working,
            AddUpdatePictures: data.images
                .map((e) => {'id': 0, 'PicturePath': e.path})
                .toList(),
            AgentComment: data.comments);
        updateParam.update((e) => e.copyWith(SelectedAttributeList: [obj]));
      },
      onNext: () {
        ref.read(inspectionNotifierProvider.notifier).updateInspection();
      },
      isLoading: ref.watch(inspectionNotifierProvider).isLoading,
    );
  }
}
