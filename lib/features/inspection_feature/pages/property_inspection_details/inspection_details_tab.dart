import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/appsnackbar.dart';
import '../../../../core/widgets/asyncwidget.dart';
import '../../../auth_feature/provider/auth_provider.dart';
import '../../params/add_template_param.dart';
import '../../provider/inspection_details_provider.dart';
import '../../provider/inspection_provider.dart';
import '../../provider/template_provider.dart';
import 'activity.dart';
import 'add_new_templates.dart';
import 'edit_report.dart';
import 'overview.dart';

class InspectionDetailsTab extends ConsumerStatefulWidget {
  const InspectionDetailsTab(
      {super.key,
      required this.inspectionId,
      required this.inspectionUniqueId});
  final int inspectionId;
  final String inspectionUniqueId;

  @override
  ConsumerState<InspectionDetailsTab> createState() =>
      _InspectionDetailsTabState();
}

class _InspectionDetailsTabState extends ConsumerState<InspectionDetailsTab> with SingleTickerProviderStateMixin{

  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    ref.listenManual(inspectionNotifierProvider, (_, next) {
      switch (next) {
        case AsyncData<String?> data when data.value != null:
          if (data.value != null) {
            if (data.value != null) {
              Utils.showSnackBar(context, data.value!);
              ref.invalidate(getInspectionOverviewProvider(
                  uniqueId: widget.inspectionUniqueId));
            }
          }
          break;
        case AsyncError error:
          Utils.showSnackBar(context, error.error.toString());
          break;
      }
    });

    ref.listenManual(templateNotifierProvider, (_, next) {
      switch (next) {
        case AsyncData<TemplateState?> data when data.value != null:
          if (data.value != null) {
            ref.invalidate(
                getInspectionDetailsProvider(inspectionId: widget.inspectionId));
            if (data.value!.response != null) {
              Utils.showSnackBar(context, data.value!.response!);
            }
            if (data.value!.event == TemplateEvent.add) {
              context.navPop();
            }
          }
          break;
        case AsyncError error:
          Utils.showSnackBar(context, error.error.toString());
          break;
      }
    });



  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvider);
    final inspectionOverview = ref.watch(
        getInspectionOverviewProvider(uniqueId: widget.inspectionUniqueId));
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        if (!didPop) {
          context.go('/home/inspection');
        }
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text('View inspection'),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: PopupMenuButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xFFE2E2E2),
                      )),
                  itemBuilder: (context) => <PopupMenuEntry<String>>[
                    PopupMenuItem(
                      //  value: 0,
                      child: const Text('Add New Template'),
                      onTap: () {
                        context.navPush(AddNewTemplates(
                          inspectionId: widget.inspectionId,
                        ));
                      },
                    ),
                    PopupMenuItem(
                      child: const Text('Share'),
                      onTap: () {
                        ref
                            .read(inspectionNotifierProvider.notifier)
                            .shareInspection(
                                inspectionId: widget.inspectionUniqueId,
                                userType: user?.userType ?? 0,
                                userId: user?.userRoleId ?? 0);
                      },
                    ),
                  ],
                  child: Image.asset(
                    'assets/images/more-circle.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
              )
            ],
            bottom: TabBar(
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: const Color(0xFF164C63),
              unselectedLabelColor: const Color(0xFF494D60),
              indicatorColor: const Color(0xFF75CBCD),
              dividerColor: const Color(0xFFE2E2E2),
              labelStyle:
                  TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w700),
              unselectedLabelStyle:
                  TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
              tabs: const [
                Tab(
                  child: Text('Overview'),
                ),
                Tab(
                  child: Text('Edit Report'),
                ),
                Tab(
                  child: Text('Activity'),
                ),
              ],
            ),
          ),
          body: AsyncWidget(
              value: inspectionOverview,
              data: (inspectionOverviewData) {
                return TabBarView(
                  controller: _tabController,
                  children: [
                    OverviewScreen(
                      inspectionOverviewModel: inspectionOverviewData,
                      inspectionId: widget.inspectionId,
                      indexCallBack: (val){
                        _tabController.index=val;
                      },
                    ),
                    EditReport(
                      inspectionId: widget.inspectionId,
                      inspectionUniqueId: widget.inspectionUniqueId,
                    ),
                    ActivityScreen(
                      inspectionId: widget.inspectionId,
                    )
                  ],
                );
              })),
    );
  }
}



