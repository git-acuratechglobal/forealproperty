import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_provider.dart';
import 'package:foreal_property/features/inspection_feature/provider/template_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/common_widgets.dart';
import '../../../../core/utils/appbutton.dart';
import '../../../../core/utils/appsnackbar.dart';
import '../../provider/inspection_details_provider.dart';

class AddNewTemplates extends HookConsumerWidget {
  const AddNewTemplates({super.key, required this.inspectionId});
  final int inspectionId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedAttribute = useState<String?>(null);
    final attributeLabelController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Template'),
        centerTitle: true,
      ),
      body: AsyncWidget(
        value: ref.watch(getTemplatesProvider(inspectionId: inspectionId)),
        data: (data) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Attribute', style: Theme.of(context).textTheme.bodyLarge),
                12.verticalSpace,
                SizedBox(
                  height: 60,
                  child: DynamicWidgetDropdown<String>(
                    propertyOptions: data.attributes,
                    selectedValue: selectedAttribute.value,
                    onChanged: (String? value) {
                      if (value != null) {
                        selectedAttribute.value = value;
                        ref
                            .read(addNewTemplateParamsProvider.notifier)
                            .update((e) => e.copyWith(Attribute: value));
                      }
                    },
                    hintText: 'Select Attribute',
                    displayText: (String attribute) => attribute ?? "",
                  ),
                ),
                16.verticalSpace,
                AppTextFiled(
                  controller:attributeLabelController ,
                  hintText: "Enter Attribute Label",
                  onChanged: (val) {
                    ref
                        .read(addNewTemplateParamsProvider.notifier)
                        .update((e) => e.copyWith(AttributeLabel: val));
                  },
                ),
                60.verticalSpace,
                PrimaryButton(
                    isLoading: ref.watch(templateNotifierProvider).isLoading,
                    title: 'Add Template',
                    onClick: () {
                      ref
                          .read(templateNotifierProvider.notifier)
                          .addTemplates(inspectionId: inspectionId);
                    }),
              ],
            ),
          );
        },
      ),
    );
  }
}
