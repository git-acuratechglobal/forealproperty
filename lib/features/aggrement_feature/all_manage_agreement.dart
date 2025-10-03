import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/model/agreement_document_model.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_agreement_doc_list.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_management_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_tenancy_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_management_agreement.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/custom_refreshIndicator.dart';

class AllManageAgreement extends ConsumerStatefulWidget {
  const AllManageAgreement({super.key, this.isCompleted});
  final bool? isCompleted;
  @override
  ConsumerState<AllManageAgreement> createState() => _AllManageAgreementState();
}

class _AllManageAgreementState extends ConsumerState<AllManageAgreement> {
  bool _isReachedMax = false;
  final scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      final inspectionNotifier = ref.read(getAgreementDocListProvider.notifier);
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent - 200) {
        if (inspectionNotifier.canLoadMore()) {
          inspectionNotifier.loadMoreData(isCompleted: widget.isCompleted);
        }
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final agreementDoc = ref.read(getAgreementDocListProvider.notifier);
    return PageLoadingWidget(
      isLoading: ref.watch(deleteAgreementProvider).isLoading,
      child: CustomRefreshIndicator(
        onRefresh: () async => agreementDoc.refreshData(widget.isCompleted),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: PaginationWidgetC(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  retry: () => ref.refresh(getAgreementDocListProvider),
                  value: ref.watch(getAgreementDocListProvider),
                  itemBuilder: (index, AgreementDocument data) =>
                      GestureDetector(
                          onTap: () {
                            switch (data.agreementType) {
                              case 1:
                                ref.invalidate(getSalesAgreementProvider);
                                ref.invalidate(
                                    updateSalesAgreementParamProvider);
                                ref
                                    .read(getSalesAgreementProvider.notifier)
                                    .getSalesAgreement(
                                        data.propertyUniqueId ?? "");
                                context.pushNamed('sales-agreement-1');
                                break;
                              case 8:
                                ref.invalidate(getManagementAgreementProvider);
                                ref.invalidate(
                                    updateManagementAgreementParamProvider);
                                ref
                                    .read(
                                        getManagementAgreementProvider.notifier)
                                    .getManagementAgreement(
                                        data.propertyUniqueId ?? "");
                                context.pushNamed('manage-agreement-2');
                                break;
                              case 9:
                                ref.invalidate(getTenancyAgreementProvider);
                                ref.invalidate(updateTenantInAgreementProvider);
                                ref
                                    .read(getTenancyAgreementProvider.notifier)
                                    .getTenancyAgreement(
                                        data.propertyUniqueId ?? "");
                                context.pushNamed('tenancy-agreement-1');
                                break;
                            }
                          },
                          child: AgreementCard(
                            isCompleted: widget.isCompleted,
                            doc: data,
                          )),
                  onLoadMore: agreementDoc.loadMoreData,
                  separator: 16.verticalSpace,
                  emptyWidget: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("No Agreement Found"),
                    ],
                  ),
                  canLoadMore: agreementDoc.canLoadMore),
            ),
          ],
        ),
      ),
    );
  }
}

class AgreementCard extends ConsumerWidget {
  const AgreementCard({super.key, required this.doc, this.isCompleted});
  final AgreementDocument doc;
  final bool? isCompleted;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.only(right: 24, bottom: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: doc.isCompleted == true
                        ? const Color(0xFF75CBCD)
                        : const Color(0xFFFAB53E),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: Text(
                    doc.isCompleted == true ? "Completed" : "Incompleted",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
              if (doc.isCompleted == false)
                PopupMenuButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xFFE2E2E2),
                      )),
                  itemBuilder: (context) => <PopupMenuEntry<String>>[
                    PopupMenuItem(
                      //  value: 1,
                      child: const Text('View'),
                      onTap: () {
                        switch (doc.agreementType) {
                          case 1:
                            ref.invalidate(getSalesAgreementProvider);
                            ref.invalidate(updateSalesAgreementParamProvider);
                            ref
                                .read(getSalesAgreementProvider.notifier)
                                .getSalesAgreement(doc.propertyUniqueId ?? "");
                            context.pushNamed('sales-agreement-1');
                            break;
                          case 8:
                            ref.invalidate(getManagementAgreementProvider);
                            ref.invalidate(
                                updateManagementAgreementParamProvider);
                            ref
                                .read(getManagementAgreementProvider.notifier)
                                .getManagementAgreement(
                                    doc.propertyUniqueId ?? "");
                            context.pushNamed('manage-agreement-2');
                            break;
                          case 9:
                            ref.invalidate(getTenancyAgreementProvider);
                            ref.invalidate(updateTenantInAgreementProvider);
                            ref
                                .read(getTenancyAgreementProvider.notifier)
                                .getTenancyAgreement(
                                    doc.propertyUniqueId ?? "");
                            context.pushNamed('tenancy-agreement-1');
                            break;
                        }
                      },
                    ),
                    PopupMenuItem(
                      //  value: 2,
                      child: const Text('Delete'),
                      onTap: () {
                        showDeleteConfirmationDialog(context: context,onConfirm: (){
                          ref
                              .read(deleteAgreementProvider.notifier)
                              .deleAgreement(doc.agreementId ?? 0,
                              doc.agreementType ?? 0, isCompleted);
                        });

                      },
                    ),
                  ],
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Image.asset(
                      'assets/images/more-circle.png',
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, right: 24),
            child: Row(
              children: [
                SizedBox(
                    height: 72.h,
                    width: 72.w,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/home3.png',
                          fit: BoxFit.cover,
                        ))),
                10.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'House',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF494D60),
                        ),
                      ),
                      AutoSizeText(
                        doc.propertyAddress ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          16.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Agreement Type',
                  style: TextStyle(
                    color: const Color(0xFF494D60),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  doc.sAgreementType ?? "",
                  style: TextStyle(
                    color: const Color(0xFF1A1B28),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          16.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Created',
                      style: TextStyle(
                        color: const Color(0xFF494D60),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      doc.formmatedDate ?? "",
                      style: TextStyle(
                        color: const Color(0xFF75CBCD),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> showDeleteConfirmationDialog({
    required BuildContext context,
    required VoidCallback onConfirm,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          content: const Text(
            'Are you sure you want to delete this Agreement?',
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Delete'),
              onPressed: () {
                onConfirm();
                Navigator.of(context).pop();
              },
            ),

            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),

          ],
        );
      },
    );
  }
}
