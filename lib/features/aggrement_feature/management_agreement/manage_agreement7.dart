import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_tenancy_agreement.dart';
import '../model/management_agreement_model.dart';
import '../providers/update_management_agreement.dart';

class ManageAgreement7 extends ConsumerStatefulWidget {
  const ManageAgreement7(
      {super.key,
      this.propertyId = "",
      this.docList = const [],
      this.agreementType = 1});

  final String propertyId;
  final List<DocumentReceipient> docList;
  final int agreementType;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ManageAgreement7State();
}

class _ManageAgreement7State extends ConsumerState<ManageAgreement7> {
  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.scheduleFrameCallback((val) {
    //   ref
    //       .read(getManagementAgreementProvider.notifier)
    //       .getManagementAgreement(widget.propertyId);
    // });
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(updateManagementAgreementProvider).isLoading ||
        ref.watch(updateSalesAgreementProvider).isLoading ||
        ref.watch(updateTenancyAgreementProvider).isLoading;
    return PageLoadingWidget(
        isLoading: isLoading,
        child: Scaffold(
          backgroundColor: const Color(0XFFf2f6f7),
          body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                children: [
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: widget.docList.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return 16.verticalSpace;
                    },
                    itemBuilder: (context, index) {
                      final item = widget.docList[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 6),
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFAB53E),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    item.isSent == true
                                        ? "Awaiting signature"
                                        : "Awaiting to send",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                20.verticalSpace,
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/contract.png',
                                        height: 32.h,
                                        width: 32.w,
                                      ),
                                      10.horizontalSpace,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item.name ?? "",
                                            style: TextStyle(
                                              color: const Color(0xFF1A1B28),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            item.emailAddress ?? "",
                                            style: TextStyle(
                                              color: const Color(0xFF494D60),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                16.verticalSpace,
                                if (item?.isSent == true)
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Divider(
                                      color: Colors.grey.withAlpha(128),
                                    ),
                                  ),
                                if (item.isSent == true)
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/green.png',
                                          height: 20.sp,
                                          width: 20.sp,
                                        ),
                                        10.horizontalSpace,
                                        Expanded(
                                          child: AutoSizeText(
                                            "Document sent Successfully Sent on ${item.formatSentDate}",
                                            maxLines: 3,
                                            style: TextStyle(
                                              color: const Color(0xFF494D60),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                10.verticalSpace,
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  40.verticalSpace,
                  PrimaryButton(
                      title: 'Preview',
                      onClick: () {
                        switch (widget.agreementType) {
                          case 1:
                            ref
                                .read(
                                    updateManagementAgreementProvider.notifier)
                                .generatePdfReport(widget.propertyId);
                            break;
                          case 2:
                            ref
                                .read(updateTenancyAgreementProvider.notifier)
                                .generatePdfReport(widget.propertyId);
                            break;
                          case 3:
                            ref
                                .read(updateSalesAgreementProvider.notifier)
                                .generatePdfReport(widget.propertyId);
                            break;
                        }
                      }),
                  24.verticalSpace
                ],
              )),
        ));
  }
}
