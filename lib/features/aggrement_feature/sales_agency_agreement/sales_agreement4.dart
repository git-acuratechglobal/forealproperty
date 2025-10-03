import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/sales_agreement5.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/common_widgets.dart';
import '../../../core/utils/appbutton.dart';
import 'widgets/heading_text.dart';
import 'widgets/sub_heading_text.dart';

class SalesAgreement4 extends HookConsumerWidget {
  const SalesAgreement4({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    final selectedTab = useState(0);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final param = ref.read(updateRemunerationDetailsParamProvider.notifier);
    return PopScope(
      onPopInvokedWithResult: (bool result, T) {
        // periodParam.dissPose();
      },
      child: PageLoadingWidget(
        isLoading: ref.watch(updateSalesAgreementProvider).isLoading,
        child: Scaffold(
          backgroundColor: const Color(0XFFf2f6f7),
          appBar: AppBar(
            title: const Text('Sales Agreement'),
            centerTitle: true,
          ),
          body: Form(
            key: formKey,
            child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
                child: AsyncWidget(
                    value: ref.watch(getSalesAgreementProvider),
                    data: (data) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const HeadingText(
                            text: 'REMUNERATION',
                          ),
                          10.verticalSpace,
                          TabBar(
                            indicatorSize: TabBarIndicatorSize.tab,
                            labelColor: const Color(0xFF164C63),
                            unselectedLabelColor: const Color(0xFF494D60),
                            indicatorColor: const Color(0xFF75CBCD),
                            dividerColor: const Color(0xFFE2E2E2),
                            labelStyle: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w700),
                            unselectedLabelStyle: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w400),
                            dividerHeight: 0,
                            controller: tabController,
                            tabs: const [
                              Tab(
                                text: 'Percentage',
                              ),
                              Tab(
                                text: 'Fixed Amount',
                              )
                            ],
                            onTap: (val) {
                              selectedTab.value = val;
                            },
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            controller: selectedTab.value == 0
                                ? param.flatFeeCntrl
                                : null,
                            isEditable: selectedTab.value == 0,
                            lable:
                                "(e.g. % of sale price; flat fee; formula e.g. a combination of % and flat fee)",
                            hintText: "",
                            onChanged: (val) {
                              param.updateFlatFee(
                                  val, data?.sellingFixedPrice ?? 0);
                            },
                            onSaved: (val) {
                              if (val == null || val.isEmpty) return;
                              param.updateParam((e) => e.copyWith(
                                  SalePriceFlatFee: int.parse(val ?? '')));
                            },
                            validator: (val) {
                              if (selectedTab.value == 0) {
                                if (val == null || val.isEmpty) {
                                  return "Field is required";
                                }
                              }
                              return null;
                            },
                          ),
                          20.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SubHeadingText(text: "Include GST"),
                              CustomCupertinoToggle(
                                initialValue: data?.gst ?? false,
                                onChanged: (val) {
                                  param
                                      .updateParam((e) => e.copyWith(gst: val));
                                },
                              ),
                            ],
                          ),
                          20.verticalSpace,
                          AppTextFiled(
                            controller: param.estmatSaleCntrl,
                            isEditable: selectedTab.value != 1,
                            lable:
                                "e.g. in relation to the Licensee's ESTIMATE of the sale price of",
                            hintText: "",
                            onSaved: (val) {
                              if (val == null || val.isEmpty) return;
                              param.updateParam((e) => e.copyWith(
                                  LicenceeEstimateSalePrice:
                                      double.parse(val).toInt()));
                            },
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            controller: param.gstCntrl,
                            isEditable: selectedTab.value != 1,
                            lable: "the GST inclusive renumeration would be",
                            hintText: "",
                            onSaved: (val) {
                              if (val == null || val.isEmpty) return;
                              param.updateParam((e) => e.copyWith(
                                  GSTInclusiveRenumeration:
                                      double.parse(val).toInt()));
                            },
                          ),
                          const HeadingText(
                            text: 'Payment to Principal',
                          ),
                          20.verticalSpace,
                          Text(
                            "If money held by the Agent becomes due to the principal, then the Principal directs the Agent to pay that money by",
                            style: TextStyle(
                                color: const Color(0XFF7d8089),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          10.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SubHeadingText(
                                  text: "Electronic Funds Transfer (EFT):"),
                              // 20.horizontalSpace,
                              CustomCupertinoToggle(
                                initialValue: data?.isEft == 1 ? true : false,
                                onChanged: (val) {
                                  param.updateParam(
                                      (e) => e.copyWith(IsEFT: val ? 1 : 2));
                                },
                              ),
                            ],
                          ),
                          20.verticalSpace,
                          const SubHeadingText(
                            text: 'if by EFT:',
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            controller: param.accountName,
                            lable: "Account Name",
                            hintText: "",
                            onSaved: (val) {
                              param.updateParam(
                                  (e) => e.copyWith(PAccountName: val));
                            },
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            controller: param.bsbCntrl,
                            lable: "BSB",
                            hintText: "",
                            onSaved: (val) {
                              param.updateParam((e) => e.copyWith(PBSB: val));
                            },
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            controller: param.accountNoCntrl,
                            lable: "Account No",
                            hintText: "",
                            onSaved: (val) {
                              param.updateParam(
                                  (e) => e.copyWith(PAccountNo: val));
                            },
                          ),
                          60.verticalSpace,
                          PrimaryButton(
                              title: "Next",
                              onClick: () {
                                if (formKey.currentState!.validate()) {
                                  formKey.currentState!.save();
                                  ref
                                      .read(
                                          updateSalesAgreementProvider.notifier)
                                      .updateSalesForm4();
                                }
                              }),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.end,
                          //   children: [
                          //     SecondaryButton(
                          //         fixedSize: const Size(150, 55),
                          //         onClick: () {},
                          //         title: "Previews"),
                          //     10.horizontalSpace,
                          //     SizedBox(
                          //         width: 150,
                          //         child: PrimaryButton(
                          //             title: "Save & Next",
                          //             onClick: () {
                          //               context.navigateTo(const SalesAgreement5());
                          //             }))
                          //   ],
                          // ),
                          60.verticalSpace
                        ],
                      );
                    })),
          ),
        ),
      ),
    );
  }
}
