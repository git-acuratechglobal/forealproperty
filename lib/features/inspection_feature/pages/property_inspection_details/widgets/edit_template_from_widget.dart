import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../common/common_widgets.dart';
import '../../../../../core/network/apiend_points.dart';
import '../../../../../core/utils/appbutton.dart';
import '../../../../../core/utils/imagepicker.dart';
import '../../../../../core/utils/network_image_widget.dart';
import '../../../model/property_inspection_view_model.dart';


class EditTemplateFromWidget extends HookWidget {
  final PropertyInspectionViewModel initialData;
  final void Function(PropertyInspectionViewModel) onChanged;
  final VoidCallback onNext;
  final bool isLoading;

  const EditTemplateFromWidget({
    super.key,
    required this.initialData,
    required this.onChanged,
    required this.onNext,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final formData = useState<PropertyInspectionViewModel>(initialData);

    void _update(PropertyInspectionViewModel data) {
      formData.value = data;
      onChanged(data);
    }

    final formKey = useMemoized(() => GlobalKey<FormState>());
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ToggleContainer(
                label: 'Clean',
                initialValue: formData.value.clean,
                onToggle: (val) => _update(formData.value.copyWith(clean: val)),
              ),
              15.horizontalSpace,
              ToggleContainer(
                label: 'Undamage',
                initialValue: formData.value.unDamage,
                onToggle: (val) =>
                    _update(formData.value.copyWith(unDamage: val)),
              ),
              15.horizontalSpace,
              ToggleContainer(
                label: 'Working',
                initialValue: formData.value.working,
                onToggle: (val) =>
                    _update(formData.value.copyWith(working: val)),
              ),
            ],
          ),
          24.verticalSpace,

          Text(
            'Property Images',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
          ),
          16.verticalSpace,
          ImagePickerForm3(
            context: context,
            initialImages: formData.value.initialImages,
            pickedImages: formData.value.images,
            onSaved: (newImages) {
              // _update(formData.value.copyWith(images: newImages));
            },
            onChanged: (newImages)async{
              _update(formData.value.copyWith(images: newImages));
            },
          ),
          24.verticalSpace,

          Text(
            'Agent Comments',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
          ),
          12.verticalSpace,
          CommonTextField(
            label: 'Enter comment...',
            maxLines: 5,
            initialValue: formData.value.comments,
            onChanged: (val) => _update(formData.value.copyWith(comments: val)),
          ),
          24.verticalSpace,

          if (formData.value.isTenantAgree != null &&
              !formData.value.isTenantAgree!) ...[
            Row(
              children: [
                IgnorePointer(
                  child: ToggleContainer2(
                    label: 'Clean',
                    initialValue: formData.value.cleanByTenant,
                  ),
                ),
                15.horizontalSpace,
                IgnorePointer(
                  child: ToggleContainer2(
                    label: 'Undamage',
                    initialValue: formData.value.unDamageByTenant,
                  ),
                ),
                15.horizontalSpace,
                IgnorePointer(
                  child: ToggleContainer2(
                    label: 'Working',
                    initialValue: formData.value.workingByTenant,
                  ),
                ),
              ],
            ),
            if (formData.value.tenantImages.isNotEmpty ||
                formData.value.images.isNotEmpty) ...[
              24.verticalSpace,
              Text(
                'Tenant Images',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
              ),
              16.verticalSpace,
              Wrap(
                spacing: 10.w,
                runSpacing: 10.h,
                children: [
                  ...formData.value.tenantImages
                      .map(
                        (e) => Stack(
                          alignment: Alignment.topRight,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.sp),
                              child: SizedBox(
                                width: 100.w,
                                height: 100.h,
                                child: NetworkImageWidget(
                                    imageUrl: '${ApiEndPoints.imageUrl}${e}'),
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ],
              ),
            ],
            16.verticalSpace,
            if (formData.value.tenantComment != null &&
                formData.value.tenantComment!.isNotEmpty) ...[
              Text(
                'Tenant Comments',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
              ),
              12.verticalSpace,

              Container(
                padding: const EdgeInsets.all(10),
                height: 150,
                width: 1.sw,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color(0xFFE2E2E2)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(formData.value.tenantComment ?? ""),
              ),

              24.verticalSpace,
            ],
          ],

          // Next Button
          PrimaryButton(
            isLoading: isLoading,
            title: 'Next',
            onClick: () {
              if (formKey.currentState?.validate() ?? false) {
                formKey.currentState?.save();
                onChanged(formData.value);

                onNext();
              }
            },
          ),
        ],
      ),
    );
  }
}
