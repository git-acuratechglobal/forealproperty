import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_details_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/common_widgets.dart';
import '../../model/inspection_details_model.dart';
import 'edit_template_screen.dart';

class EntryInspectionDetails extends HookConsumerWidget {
  const EntryInspectionDetails({super.key, required this.template});
  final Template template;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: Text(template.label ?? ""),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
        body: AsyncWidget(
            skipLoadingOnRefresh: false,
            onRetry: () => ref.refresh(getInspectionDetailsProvider(
                inspectionId: template.inspectionId ?? 0)),
            value: ref.watch(getInspectionDetailsProvider(
                inspectionId: template.inspectionId ?? 0)),
            data: (inspectionDetails) {
              final templateData = inspectionDetails.templates
                  ?.firstWhere((e) => e.id == template.id);
              return SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Column(
                  children: [
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        final templateDetails =
                            templateData?.templatesDetails?[index];
                        return ReportContainer(
                          title: templateDetails?.facilityName ?? '',
                          imageItems: const[
                            // if (templateData?.isSubmited ?? false)
                            //   ImageWithLetter(
                            //       path: 'assets/images/blue.png', letter: 'A')
                            // else
                            //   ImageWithLetter(
                            //       path: 'assets/images/orange.png',
                            //       letter: 'A'),
                            // ImageWithLetter(
                            //     path: 'assets/images/orange.png', letter: 'T'),
                          ],
                          onTap: () {
                            context.push(EditTemplateScreen(
                              inspectionId: templateData?.inspectionId ?? 0,
                              templatesDetail: templateDetails!,
                            ));
                          },
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return 16.verticalSpace;
                      },
                      itemCount: template.templatesDetails?.length ?? 0,
                    )
                  ],
                ),
              );
            }));
  }
}
