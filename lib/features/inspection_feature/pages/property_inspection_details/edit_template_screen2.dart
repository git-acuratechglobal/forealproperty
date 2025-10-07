import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/features/inspection_feature/pages/property_inspection_details/widgets/edit_template_from_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../model/inspection_details_model.dart';
import '../../model/property_inspection_view_model.dart';
import '../../params/update_inspection_params.dart';
import '../../provider/inspection_provider.dart';

class EditTemplateScreen2 extends HookConsumerWidget {
  const EditTemplateScreen2(
      {super.key, required this.templatesDetail, required this.inspectionId});
  final TemplatesDetail templatesDetail;
  final int inspectionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late PropertyInspectionViewModel savingData;
    final updateParam = ref.read(updateInspectionParamProvider.notifier);
    final initialData =
        useState<PropertyInspectionViewModel>(PropertyInspectionViewModel(
          inspectionId: inspectionId,
          templateId: templatesDetail.inspectionTemplateId ?? 0,
      id: templatesDetail.id ?? 0,
      initialImages: templatesDetail.templateDetailsPictures
              ?.where((e) => e.isTenantUploaded == false)
              .map((e) => e.fileName ?? "")
              .toList() ??
          [],
      comments: templatesDetail.agentComment,
      images: [],
      clean: templatesDetail.cleaned ?? false,
      unDamage: templatesDetail.undermanaged ?? false,
      working: templatesDetail.working ?? false,
      tenantImages: templatesDetail.templateDetailsPictures
              ?.where((e) => e.isTenantUploaded == true)
              .map((e) => e.fileName ?? "")
              .toList() ??
          [],
      tenantComment: templatesDetail.tenantComment,
      isTenantAgree: templatesDetail.isTenantAgree,
      cleanByTenant: templatesDetail.cleanedByTenant ?? false,
      unDamageByTenant: templatesDetail.undermanagedByTenant ?? false,
      workingByTenant: templatesDetail.workingByTenant ?? false,
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
          AddUpdatePictures:
              data.images.map((e) => {'id': 0, 'PicturePath': e.path}).toList(),
          AgentComment: data.comments,
          IsTenantAgree: data.isTenantAgree,
          CleanedByTenant: data.cleanByTenant,
          UndermanagedByTenant: data.unDamageByTenant,
          WorkingByTenant: data.workingByTenant,
          TenantComment: data.tenantComment,
        );
        updateParam.update((e) => e.copyWith(SelectedAttributeList: [obj]));
        savingData=data;
      },
      onNext: () {
        // ref.read(inspectionNotifierProvider.notifier).updateInspection();
        ref.read(localStorageServiceProvider).addInspection(savingData);
      },
      isLoading: ref.watch(inspectionNotifierProvider).isLoading,
    );
  }
}
