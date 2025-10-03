import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/manage_activity.dart';
import 'package:foreal_property/features/aggrement_feature/management_agreement/manage_agreement7.dart';
import 'package:foreal_property/features/aggrement_feature/model/tenancy_agreement_model.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_management_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_tenancy_agreement.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'model/management_agreement_model.dart';
import 'model/sales_agreement_model.dart';

class ManageAgreementTab extends ConsumerStatefulWidget {
  const ManageAgreementTab(
      {super.key, this.propertyId = '', this.agreementType = 1});
  final String propertyId;
  final int agreementType;
  @override
  ConsumerState<ManageAgreementTab> createState() => _ManageAgreementTabState();
}

class _ManageAgreementTabState extends ConsumerState<ManageAgreementTab> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      switch (widget.agreementType) {
        case 1:
          ref
              .read(getManagementAgreementProvider.notifier)
              .getManagementAgreement(widget.propertyId);
          break;
        case 2:
          ref
              .read(getTenancyAgreementProvider.notifier)
              .getTenancyAgreement(widget.propertyId);
          break;
        case 3:
          ref
              .read(getSalesAgreementProvider.notifier)
              .getSalesAgreement(widget.propertyId);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final managementData = ref.watch(getManagementAgreementProvider);
    final tenancyData = ref.watch(getTenancyAgreementProvider);
    final salesData = ref.watch(getSalesAgreementProvider);
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        if (!didPop) {
          context.go('/home/management-agreement/agreement');
        }
      },
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: const Color(0xFFEBF3F5),
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(120),
              child: Customappbar(
                  title: widget.agreementType == 1
                      ? 'Management Agreement'
                      : widget.agreementType == 2
                          ? 'Tenancy Agreement'
                          : 'Sales Agreement'),
            ),
            body: AsyncWidget(
                value: widget.agreementType == 1
                    ? managementData
                    : widget.agreementType == 2
                        ? tenancyData
                        : salesData,
                data: (data) {
                  dynamic docList;
                  late final String propertyId;
                  dynamic actvityList;
                  switch (widget.agreementType) {
                    case 1:
                      docList = (data as ManagementAgreementModel)
                          .documentReceipients;
                      propertyId = (data).propertyUId ?? '';
                      actvityList = data.activities?.activities;
                      break;
                    case 2:
                      docList =
                          (data as TenantAgreementModel).documentReceipients;
                      propertyId = (data).propertyUId ?? '';
                      actvityList = data.activities?.activities;
                      break;
                    case 3:
                      docList =
                          (data as SalesAgreementModel).documentReceipients;
                      propertyId = (data).propertyUId ?? '';
                      actvityList = data.activities?.activities;
                      break;
                  }
                  return TabBarView(
                    children: [
                      ManageAgreement7(
                        docList: docList,
                        propertyId: propertyId,
                        agreementType: widget.agreementType,
                      ),
                      ManageActivity(
                        activityList: actvityList,
                      )
                    ],
                  );
                })),
      ),
    );
  }
}

class Customappbar extends StatefulWidget {
  final String title;
  const Customappbar({super.key, required this.title});

  @override
  State<Customappbar> createState() => _CustomappbarState();
}

class _CustomappbarState extends State<Customappbar> {
  bool isSelectd = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      centerTitle: true,
      title: Text(
        widget.title,
        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
      ),
      bottom: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: const Color(0xFF164C63),
        unselectedLabelColor: const Color(0xFF494D60),
        indicatorColor: const Color(0xFF75CBCD),
        dividerColor: const Color(0xFFE2E2E2),
        labelStyle: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
        unselectedLabelStyle:
            TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
        tabs: const [
          Tab(
            child: Text('Agreement Summary'),
          ),
          Tab(
            child: Text('Activity'),
          ),
        ],
      ),
    );
  }
}
