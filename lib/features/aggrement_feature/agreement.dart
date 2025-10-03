import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/utils/appsnackbar.dart';
import 'package:foreal_property/features/aggrement_feature/management_agreement/manage_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_management_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_tenancy_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_management_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_tenancy_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/states/update_management_agreement_state.dart';
import 'package:foreal_property/features/aggrement_feature/states/update_sales_agreement_state.dart';
import 'package:foreal_property/features/aggrement_feature/states/update_tenancy_agreement_state.dart';
import 'package:go_router/go_router.dart';
import 'sales_agency_agreement/sales_agreement1.dart';
import 'tenancy_agreement/tenancy_agreement1.dart';

class AgreementView extends ConsumerStatefulWidget {
  const AgreementView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AgreementViewState();
}

class _AgreementViewState extends ConsumerState<AgreementView> {
  TextEditingController searchController = TextEditingController();
  String searchQuery = '';
  List<String> propertyOptions = [
    'For Sale',
    'For Rent',
    'Open House',
    'Sold',
  ];
  String selectedProperty = 'For Sale';

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
              context.pushNamed('manage-agreement-tab',
                  pathParameters: {'propertyId': propertyId ?? "",'agreementType': '1'});
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
              context.pushNamed('manage-agreement-tab',
                  pathParameters: {'propertyId': propertyId ?? "",'agreementType': '2'});
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
              context.pushNamed('manage-agreement-tab',
                  pathParameters: {'propertyId': propertyId ?? "",'agreementType': '3'});
              break;
            case SalesEventType.generatePdfReport:
              break;
          }

        case AsyncError error:
          Utils.showSnackBar(context, error.error.toString());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Agreement',
            style: TextStyle(color: Color(0xff1A1B28)),
          ),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
        backgroundColor: const Color(0xFFEBF3F5),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              titleSpacing: 0,
              toolbarHeight: 100,
              backgroundColor: const Color(0xFFEBF3F5),
              floating: true,
              //snap: true,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: TextFormField(
                        controller: searchController,
                        textInputAction: TextInputAction.search,
                        onFieldSubmitted: (value) {
                          setState(() {
                            searchQuery = value.toLowerCase();
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: const Color(0xFFB9B9B9),
                                  ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 15, bottom: 15),
                            child: Image.asset(
                              'assets/images/search-normal.png',
                              height: 16,
                              width: 16,
                              color: const Color(0xFFB9B9B9),
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        cursorColor: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
                child: Column(
              children: [
                InkWell(
                  onTap: () {
                    ref.invalidate(getManagementAgreementProvider);
                    ref.invalidate(updateManagementAgreementParamProvider);
                    context.pushNamed('manage-agreement-2');
                  },
                  child: agreementBox(
                    title: "Management Agreement",
                    date: '01/15/24',
                    onTap: () {
                      ref.invalidate(getManagementAgreementProvider);
                      ref.invalidate(updateManagementAgreementParamProvider);
                      context.pushNamed('manage-agreement-2');
                    },
                    iconAssetPath: 'assets/images/add_circle.png',
                  ),
                ),
                InkWell(
                  onTap: () {
                    ref.invalidate(getTenancyAgreementProvider);
                    ref.invalidate(updateTenantInAgreementProvider);
                    context.pushNamed('tenancy-agreement-1');
                  },
                  child: agreementBox(
                    title: "Residential Tenancy Agree...",
                    date: '01/15/24',
                    onTap: () {
                      ref.invalidate(getTenancyAgreementProvider);
                      ref.invalidate(updateTenantInAgreementProvider);
                      context.pushNamed('tenancy-agreement-1');
                    },
                    iconAssetPath: 'assets/images/add_circle.png',
                  ),
                ),
                InkWell(
                  onTap: () {
                    ref.invalidate(getSalesAgreementProvider);
                    ref.invalidate(updateSalesAgreementParamProvider);
                    context.pushNamed('sales-agreement-1');
                  },
                  child: agreementBox(
                    title: "Exclusive Sales Agency",
                    date: '01/15/24',
                    onTap: () {
                      ref.invalidate(getSalesAgreementProvider);
                      ref.invalidate(updateSalesAgreementParamProvider);
                      context.pushNamed('sales-agreement-1');
                    },
                    iconAssetPath: 'assets/images/add_circle.png',
                  ),
                ),
              ],
            ))
          ],
        ));
  }

  Widget agreementBox({
    required String title,
    required String date,
    required VoidCallback onTap,
    required String iconAssetPath,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            // Left icon from asset
            Image.asset("assets/images/contract.png",
                width: 40, height: 40, fit: BoxFit.cover),
            const SizedBox(width: 11),

            // Title and date
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: "Plus Jakarta Sans",
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: const Color(0xFF1A1B28),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    date,
                    style: const TextStyle(
                      fontFamily: "Plus Jakarta Sans",
                      color: Color(0xff494D60),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),

            // Plus icon
            GestureDetector(
                onTap: onTap,
                child: Image.asset(
                  iconAssetPath,
                  width: 24,
                )),
          ],
        ),
      ),
    );
  }
}
