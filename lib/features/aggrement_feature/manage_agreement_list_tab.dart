import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/core/utils/appsnackbar.dart';
import 'package:foreal_property/features/aggrement_feature/all_manage_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_agreement_doc_list.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_management_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_tenancy_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/states/update_management_agreement_state.dart';
import 'package:foreal_property/features/aggrement_feature/states/update_sales_agreement_state.dart';
import 'package:foreal_property/features/aggrement_feature/states/update_tenancy_agreement_state.dart';
import 'package:go_router/go_router.dart';

class ManageAgreementListTab extends ConsumerStatefulWidget {
  const ManageAgreementListTab({super.key});

  @override
  ConsumerState<ManageAgreementListTab> createState() =>
      _ManageAgreementListTabState();
}

class _ManageAgreementListTabState
    extends ConsumerState<ManageAgreementListTab> {
  @override
  void initState() {
    super.initState();

    ref.listenManual(updateManagementAgreementProvider, (_, next) {
      switch (next) {
        case AsyncData<UpdateManagementAgreementState?> data
            when data.value != null:
          final propertyId = data.value?.propertyId;
          if (data.value?.response != null) {
            Utils.showSnackBar(context, data.value?.response ?? "");
          }
          switch (data.value!.event) {
            case EventType.updatePropertyDetails:
              context.pushNamed('manage-agreement-1');
              break;

            case EventType.updatePeriodDetails:
              context.pushNamed('manage-agreement-3');
              break;

            case EventType.updateFeeCharges:
              context.pushNamed('manage-agreement-4');
              break;
            case EventType.updateTribunalFees:
              context.pushNamed('manage-agreement-5');
              break;
            case EventType.updatePromotionDetails:
              context.pushNamed('manage-agreement-6');
              break;
            case EventType.updateRepairDetails:
              context.pushNamed('manage-agreement-tab', pathParameters: {
                'propertyId': propertyId ?? "",
                'agreementType': '1'
              });
              break;
            case EventType.generatePdfReport:
          }

        case AsyncError error:
          Utils.showSnackBar(context, error.error.toString());
      }
    });

    ref.listenManual(updateTenancyAgreementProvider, (_, next) {
      switch (next) {
        case AsyncData<UpdateTenancyAgreementState?> data
            when data.value != null:
          final propertyId = data.value?.propertyId;
          if (data.value?.response != null) {
            Utils.showSnackBar(context, data.value?.response ?? "");
          }
          switch (data.value!.event) {
            case TenancyEventType.updateTenantDetails:
              context.pushNamed('tenancy-agreement-2');
              break;

            case TenancyEventType.updateLandlordDetails:
              context.pushNamed('tenancy-agreement-3');
              break;

            case TenancyEventType.updateRentBondDetails:
              context.pushNamed('tenancy-agreement-4');
              break;
            case TenancyEventType.updateTenantAgreementInfo:
              context.pushNamed('manage-agreement-tab', pathParameters: {
                'propertyId': propertyId ?? "",
                'agreementType': '2'
              });
              break;
            case TenancyEventType.generatePdfReport:
              break;
          }

        case AsyncError error:
          Utils.showSnackBar(context, error.error.toString());
      }
    });
    ref.listenManual(updateSalesAgreementProvider, (_, next) {
      switch (next) {
        case AsyncData<UpdateSalesAgreementState?> data when data.value != null:
          final propertyId = data.value?.propertyId;
          if (data.value?.response != null) {
            Utils.showSnackBar(context, data.value?.response ?? "");
          }
          switch (data.value!.event) {
            case SalesEventType.updateSalesDetails:
              context.pushNamed('sales-agreement-2');
              break;

            case SalesEventType.updateSolicitor:
              context.pushNamed('sales-agreement-3');
              break;

            case SalesEventType.updatePeriodDetails:
              context.pushNamed('sales-agreement-4');
              break;
            case SalesEventType.updateRemuneration:
              context.pushNamed('sales-agreement-5');
              break;
            case SalesEventType.updateExpensesCharge:
              context.pushNamed('sales-agreement-6');
              break;
            case SalesEventType.updatePromotionDetails:
              context.pushNamed('manage-agreement-tab', pathParameters: {
                'propertyId': propertyId ?? "",
                'agreementType': '3'
              });
              break;
            case SalesEventType.generatePdfReport:
              break;
          }

        case AsyncError error:
          Utils.showSnackBar(context, error.error.toString());
      }
    });
    ref.listenManual(deleteAgreementProvider, (_, next) {
      next.whenOrNull(
        data: (data) {
          if (data != null && data.isNotEmpty)
            return Utils.showSnackBar(context, data);
        },
        error: (err, st) => Utils.showSnackBar(context, err.toString()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFFEBF3F5),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Customappbar(title: 'Manage Agreement'),
        ),
        body: TabBarView(
          children: [
            AllManageAgreement(),
            AllManageAgreement(
              isCompleted: false,
            ),
            AllManageAgreement(
              isCompleted: true,
            )
          ],
        ),
      ),
    );
  }
}

class Customappbar extends ConsumerStatefulWidget {
  final String title;
  const Customappbar({super.key, required this.title});

  @override
  ConsumerState<Customappbar> createState() => _CustomappbarState();
}

class _CustomappbarState extends ConsumerState<Customappbar> {
  bool isSelectd = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: InkWell(
            onTap: () {
              // context.navPush(const AgreementView());
              context.pushNamed('agreement');
            },
            child: Image.asset(
              'assets/images/addicon.png',
              height: 34.h,
              width: 34.w,
            ),
          ),
        ),
      ],
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
            child: Text('All'),
          ),
          Tab(
            child: Text('Pending'),
          ),
          Tab(
            child: Text('Completed'),
          ),
        ],
        onTap: (val) {
          final agreementDoc = ref.read(getAgreementDocListProvider.notifier);
          switch (val) {
            case 0:
              agreementDoc.getDocType();
              break;
            case 1:
              agreementDoc.getDocType(isCompleted: false);
              break;
            case 2:
              agreementDoc.getDocType(isCompleted: true);
              break;
          }
        },
      ),
    );
  }
}
