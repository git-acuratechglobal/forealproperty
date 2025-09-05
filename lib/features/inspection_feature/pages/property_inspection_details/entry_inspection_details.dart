import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/inspection_feature/pages/property_inspection_details/widgets/expansion_tile_widget.dart';
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
        body: ExpansionTileWidget(
          templatesDetails: template.templatesDetails ?? [],
          inspectionId: template.inspectionId ?? 0,
        ));
  }
}
