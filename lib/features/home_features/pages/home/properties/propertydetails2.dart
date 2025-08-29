import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/s3_sigleton/s3_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/home_features/pages/home/properties/propertydetails.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/add_tenant.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/addproperty.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/attributes.dart';
import 'package:foreal_property/features/home_features/providers/get_property_detail.dart';

class Propertydetails2 extends ConsumerStatefulWidget {
  const Propertydetails2(this.id, this.propertyId, {super.key});

  final String id;
  final int? propertyId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _Propertydetails2State();
}

class _Propertydetails2State extends ConsumerState<Propertydetails2> {
  bool isColumnVisible = false;
  bool isContainerVisible = true;
  bool isContainerVisible2 = false;
  bool isContainerVisible3 = false;
  bool isContainerVisible4 = false;

  void _showDialog2(BuildContext context, String imagePath) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Dismiss",
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Align(
            alignment: Alignment.center,
            child: Material(
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Popupimage3(
                  imagePath: imagePath,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.invalidate(getPropertyDetailProvider);

      ref.read(getPropertyDetailProvider.notifier).getDetail(widget.id);
      print(widget.id);
    });
  }

  void toggleContainer() {
    setState(() {
      isContainerVisible = !isContainerVisible;
    });
  }

  // void toggleContainer2() {
  //   setState(() {
  //     isContainerVisible2 = !isContainerVisible2;
  //   });
  // }

  void toggleContainer3() {
    setState(() {
      isContainerVisible3 = !isContainerVisible3;
    });
  }

  void toggleContainer4() {
    setState(() {
      isContainerVisible4 = !isContainerVisible4;
    });
  }

  void toggleContainer5() {
    setState(() {
      isColumnVisible = !isColumnVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final propertyDetail = ref.watch(getPropertyDetailProvider);

    return Scaffold(
        appBar: AppBar(
        //  leadingWidth: 90,
          automaticallyImplyLeading: true,
          // leading: Padding(
          //   padding: const EdgeInsets.all(12.0),
          //   child: InkWell(
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //     child: Image.asset(
          //       'assets/images/arrow-left.png',
          //     ),
          //   ),
          // ),
          title: Text(
            'Property Details',
            style: TextStyle(
              color: const Color(0xFF1A1B28),
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: RefreshIndicator(
          color: const Color(0xFF164C63),
          onRefresh: () {
            return ref
                .read(getPropertyDetailProvider.notifier)
                .getDetail(widget.id);
          },
          child: AsyncWidget(
              onRetry: () async => ref.refresh(getPropertyDetailProvider),
              value: propertyDetail,
              data: (propertyData) {
                // // Or .userId, depending on your class
                // final localUserId = ref
                //     .watch(localStorageServiceProvider)
                //     .getuser()!
                //     .userId; // adjust as per your class
                // bool canEdit =
                //     localUserId != null && propertyData?.userId != null
                //         ? localUserId == propertyData!.userId
                //         : false;
                // final hasHeadingOrDescription = (propertyData
                //             ?.addUpdatePropertyAdditionalDetailsModel
                //             ?.propertyHeading
                //             ?.trim()
                //             .isNotEmpty ??
                //         false) ||
                //     (propertyData?.addUpdatePropertyAdditionalDetailsModel
                //             ?.propertyDescription
                //             ?.trim()
                //             .isNotEmpty ??
                //         false);

                // final isListingMissing = propertyData?.listingDetails == null ||
                //     propertyData!.listingDetails!.isEmpty;

                // final showEditButton =
                //     hasHeadingOrDescription && isListingMissing;
                print(propertyData);
                return SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomInkWell(
                        text: 'Property',
                        onTap: toggleContainer,
                      ),
                      16.verticalSpace,
                      if (isContainerVisible)
                        PropertyDetailContainerWidget(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'PROPERTY DETAILS',
                                      style: TextStyle(
                                        color: const Color(0xFF164C63),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    // propertyData != "" &&

                                    //         (propertyData?.listingDetails ==
                                    //                 null ||
                                    //             propertyData
                                    //                 !.listingDetails!.isEmpty ||
                                    //             propertyData.listingDetails![0]
                                    //                     .sListingStatus
                                    //                     ?.toString()
                                    //                     .toLowerCase() !=
                                    //                 'active')
                                    //     ?
                                    InkWell(
                                      onTap: () {
                                        context.push(
                                          AddProperty(
                                            propertyData: propertyData,
                                            propertyUniqueId: widget.id,
                                            propertyId: widget.propertyId,
                                          ),
                                        );
                                      },
                                      child: SizedBox(
                                        width: 50.w,
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/edit-2.png',
                                              height: 16.h,
                                              width: 16.w,
                                            ),
                                            8.horizontalSpace,
                                            Text(
                                              'Edit',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: const Color(0xFF164C63),
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                    //: SizedBox.shrink(),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                  title: 'ADDRESS',
                                  title2: propertyData != null
                                      ? propertyData
                                              .propertyGooglePlacesLocation ??
                                          ""
                                      : "",
                                ),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                    title: 'TYPE',
                                    title2: propertyData?.sPropertyType ?? ''),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'ATTRIBUTES',
                                      style: TextStyle(
                                        color: Color(0xFF494D60),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/bed.png',
                                          height: 20.h,
                                          width: 20.w,
                                        ),
                                        8.horizontalSpace,
                                        Text(
                                          propertyData != null
                                              ? propertyData.countEnsuites
                                                  .toString()
                                              : "0",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: const Color(0xFF1A1B28),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        8.horizontalSpace,
                                        Image.asset(
                                          'assets/images/bathtub.png',
                                          height: 20.h,
                                          width: 20.w,
                                        ),
                                        8.horizontalSpace,
                                        Text(
                                          propertyData != null
                                              ? propertyData.countLivingAreas
                                                  .toString()
                                              : "0",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: const Color(0xFF1A1B28),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        8.horizontalSpace,
                                        Image.asset(
                                          'assets/images/car.png',
                                          height: 20.h,
                                          width: 20.w,
                                        ),
                                        8.horizontalSpace,
                                        Text(
                                          propertyData != null
                                              ? propertyData.countCarParking
                                                  .toString()
                                              : "0",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: const Color(0xFF1A1B28),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                // child: CustomContainerText(
                                //     title: 'Attributes', title2: '',),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                    title: 'ASSIGNED TO',
                                    title2: propertyData != null
                                        ? propertyData.agencyName.toString()
                                        : ""),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                    title: 'FEATURES', title2: ''),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                            ],
                          ),
                        ),
                      24.verticalSpace,
                      CustomInkWell(
                        text: 'Owner',
                        onTap: () async {
                          // If owner data is already present, don't do anything
                          final hasOwnerData =
                              propertyData?.contactlistModel?.isNotEmpty ==
                                  true;

                          if (!hasOwnerData) {
                            // Go to AddProperty screen

                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => AddProperty(
                                  propertyData: propertyData,
                                  propertyUniqueId: widget.id,
                                  propertyId: widget.propertyId,
                                  selectedTabIndex: 1, // Owner tab
                                ),
                              ),
                            );

                            // Refresh data
                            await ref
                                .read(getPropertyDetailProvider.notifier)
                                .getDetail(widget.id);
                            final updatedData =
                                ref.read(getPropertyDetailProvider).value;

                            if (updatedData?.contactlistModel?.isNotEmpty ==
                                true) {
                              setState(() {
                                propertyData = updatedData;
                                isContainerVisible2 = true;
                              });
                            }
                          }
                        },
                        imagePath1:
                            propertyData?.contactlistModel?.isEmpty ?? true
                                ? 'assets/images/add2.png'
                                : null,
                      ),
                      16.verticalSpace,
                      if (propertyData?.contactlistModel?.isNotEmpty == true)
                        PropertyDetailContainerWidget(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'PRIMARY OWNER',
                                      style: TextStyle(
                                        color: const Color(0xFF164C63),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    //  propertyData != "" &&

                                    //         (propertyData?.listingDetails ==
                                    //                 null ||
                                    //             propertyData
                                    //                 !.listingDetails!.isEmpty ||
                                    //             propertyData!.listingDetails![0]
                                    //                     .sListingStatus
                                    //                     ?.toString()
                                    //                     .toLowerCase() !=
                                    //                 'active')
                                    //     ?
                                    InkWell(
                                      onTap: () {
                                        context.push(AddProperty(
                                          propertyData: propertyData,
                                          propertyUniqueId: widget.id,
                                          propertyId: widget.propertyId,
                                          selectedTabIndex: 1,
                                          isEditMode: true,
                                        ));
                                      },
                                      child: SizedBox(
                                        width: 50.w,
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/edit-2.png',
                                              height: 16.h,
                                              width: 16.w,
                                            ),
                                            8.horizontalSpace,
                                            Text(
                                              'Edit',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: const Color(0xFF164C63),
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                    //: SizedBox()
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: CustomContainerText(
                                  title: 'OWNER FOLIO',
                                  title2: propertyData?.ownerAccountFolio ?? "",
                                ),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                  title: 'NAME',
                                  title2: propertyData
                                              ?.contactlistModel?.isNotEmpty ==
                                          true
                                      ? propertyData!
                                              .contactlistModel![0].name ??
                                          ''
                                      : '',
                                ),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                  title: 'EMAIL',
                                  title2: propertyData
                                              ?.contactlistModel?.isNotEmpty ==
                                          true
                                      ? propertyData!.contactlistModel![0]
                                              .contactEmail ??
                                          ''
                                      : '',
                                ),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                  title: 'PHONE',
                                  title2: propertyData
                                              ?.contactlistModel?.isNotEmpty ==
                                          true
                                      ? propertyData!
                                              .contactlistModel![0].phone ??
                                          ''
                                      : '',
                                ),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: (propertyData?.contactlistModel
                                                ?.isNotEmpty ==
                                            true &&
                                        propertyData!
                                                .contactlistModel![0].address !=
                                            null &&
                                        propertyData!
                                            .contactlistModel![0].address!
                                            .trim()
                                            .isNotEmpty)
                                    ? CustomContainerText(
                                        title: 'ADDRESS',
                                        title2: propertyData!
                                            .contactlistModel![0].address!,
                                      )
                                    : null, // returns nothing if address is null or empty
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                            ],
                          ),
                        ),
                      24.verticalSpace,
                      CustomInkWell(
                        imagePath1: 'assets/images/add2.png',
                        text: 'Tenant',
                        onTap: toggleContainer3,
                      ),
                      16.verticalSpace,
                      if (isContainerVisible3)
                        PropertyDetailContainerWidget(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'TENANT ACCOUNT FOLIO',
                                      style: TextStyle(
                                        color: const Color(0xFF164C63),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        context.push(const AttributeWidget(
                                          isEdit: true,
                                        ));
                                      },
                                      child: SizedBox(
                                        width: 50.w,
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/edit-2.png',
                                              height: 16.h,
                                              width: 16.w,
                                            ),
                                            8.horizontalSpace,
                                            Text(
                                              'Edit',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: const Color(0xFF164C63),
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                  title: 'TENANT ACCOUNT FOLIO',
                                  title2: "",
                                ),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                    title: 'TENANT CHECKSUM', title2: ""),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                    title: 'RENT REVIEW FREQUENCY', title2: ""),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                    title: 'RENT INCLUDE TAX', title2: ""),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                    title: 'RENT', title2: ""),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                    title: 'PERIOD', title2: ""),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                    title: 'AGREEMENT START', title2: ""),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                    title: 'AGREEMENT END', title2: ""),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                    title: 'ABN', title2: ""),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                    title: 'Balance', title2: ""),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                    title: 'Bond Amount', title2: ""),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                    title: 'BOND IN-TRUST', title2: ""),
                              ),
                            ],
                          ),
                        ),
                      24.verticalSpace,
                      CustomInkWell(
                        imagePath1:
                            (propertyData?.tenantDetails?.isEmpty ?? true)
                                ? 'assets/images/add2.png'
                                : null,
                        text: 'Tenant Details',
                        onTap: () async {
                          final hasTenantData =
                              propertyData?.tenantDetails?.isNotEmpty == true;

                          if (!hasTenantData) {
                            // Go to AddTenant screen
                            context.push(
                              AddTenant(
                                propertyId: propertyData?.propertyId,
                                userId: propertyData?.userId,
                              ),
                            );

                            // Refresh property data
                            await ref
                                .read(getPropertyDetailProvider.notifier)
                                .getDetail(widget.id);
                            final updatedData =
                                ref.read(getPropertyDetailProvider).value;

                            if (updatedData?.tenantDetails?.isNotEmpty ==
                                true) {
                              setState(() {
                                propertyData = updatedData;
                                isContainerVisible3 = true;
                              });
                            }
                          }
                        },
                      ),

                      16.verticalSpace,
                      if 
                          (propertyData?.tenantDetails?.isNotEmpty ?? false)
                        PropertyDetailContainerWidget(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'TENANT DETAILS',
                                      style: TextStyle(
                                        color: const Color(0xFF164C63),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    // InkWell(
                                    //   onTap: () {
                                    //     context.navigateTo(AttributeWidget(
                                    //       isEdit: true,
                                    //     ));
                                    //   },
                                    //   child: SizedBox(
                                    //     width: 50.w,
                                    //     child: Row(
                                    //       children: [
                                    //         Image.asset(
                                    //           'assets/images/edit-2.png',
                                    //           height: 16.h,
                                    //           width: 16.w,
                                    //         ),
                                    //         8.horizontalSpace,
                                    //         Text(
                                    //           'Edit',
                                    //           textAlign: TextAlign.center,
                                    //           style: TextStyle(
                                    //             color: const Color(0xFF164C63),
                                    //             fontSize: 12.sp,
                                    //             fontWeight: FontWeight.w700,
                                    //           ),
                                    //         )
                                    //       ],
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 16),
                                  child: CustomContainerText(
                                      title: 'NAME',
                                      title2: propertyData
                                                  ?.tenantDetails?.isNotEmpty ==
                                              true
                                          ? propertyData!.tenantDetails!.first
                                                  .tenantFname ??
                                              ''
                                          : '')),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                    title: 'EMAIL',
                                    title2: propertyData
                                                ?.tenantDetails?.isNotEmpty ==
                                            true
                                        ? propertyData!.tenantDetails!.first
                                                .tenantEmail ??
                                            ''
                                        : ''),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                    title: 'PHONE',
                                    title2: propertyData
                                                ?.tenantDetails?.isNotEmpty ==
                                            true
                                        ? propertyData!.tenantDetails!.first
                                                .tenantMobile ??
                                            ''
                                        : ''),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                            ],
                          ),
                        ),
                      16.verticalSpace,

                      CustomInkWell(
                          imagePath1: (propertyData
                                          ?.addUpdatePropertyAdditionalDetailsModel
                                          ?.propertyHeading ==
                                      null ||
                                  propertyData!
                                      .addUpdatePropertyAdditionalDetailsModel!
                                      .propertyHeading!
                                      .trim()
                                      .isEmpty)
                              ? 'assets/images/add2.png'
                              : null,
                          text: 'Listing Details',
                          onTap: () async {
                            // Check if listing data is present
                            final hasListingData = propertyData
                                        ?.addUpdatePropertyAdditionalDetailsModel
                                        ?.propertyHeading !=
                                    null &&
                                propertyData!
                                    .addUpdatePropertyAdditionalDetailsModel!
                                    .propertyHeading!
                                    .trim()
                                    .isNotEmpty;

                            if (!hasListingData) {
                              // Go to AddProperty screen
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => AddProperty(
                                    propertyData: propertyData,
                                    propertyUniqueId: widget.id,
                                    propertyId: widget.propertyId,
                                    selectedTabIndex: 2, // Owner tab
                                  ),
                                ),
                              );

                              // Refresh data
                              await ref
                                  .read(getPropertyDetailProvider.notifier)
                                  .getDetail(widget.id);
                              final updatedData =
                                  ref.read(getPropertyDetailProvider).value;

                              if (updatedData
                                          ?.addUpdatePropertyAdditionalDetailsModel
                                          ?.propertyHeading !=
                                      null &&
                                  updatedData!
                                      .addUpdatePropertyAdditionalDetailsModel!
                                      .propertyHeading!
                                      .trim()
                                      .isNotEmpty) {
                                setState(() {
                                  propertyData = updatedData;
                                  isContainerVisible2 = true;
                                });
                              }
                            } else {
                              setState(() {
                                isContainerVisible2 = !isContainerVisible2;
                              });
                            }
                          }),
                      24.verticalSpace,
                      if ((propertyData?.propertyHeading?.isNotEmpty ??
                              false) ||
                          (propertyData?.listingDetails?.isNotEmpty ?? false))
                        PropertyDetailContainerWidget(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Listing DETAILS',
                                      style: TextStyle(
                                        color: const Color(0xFF164C63),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    //if (showEditButton)
                                    InkWell(
                                      onTap: () {
                                        context.push(
                                          AddProperty(
                                            propertyData: propertyData,
                                            propertyUniqueId: widget.id,
                                            propertyId: widget.propertyId,
                                            selectedTabIndex: 2,
                                            isEditMode: true,
                                            selectedInnerTabIndex: 2,
                                          ),
                                        );
                                      },
                                      child: SizedBox(
                                        width: 50.w,
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/edit-2.png',
                                              height: 16.h,
                                              width: 16.w,
                                            ),
                                            8.horizontalSpace,
                                            Text(
                                              'Edit',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: const Color(0xFF164C63),
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                  title: 'HEADING',
                                  title2: propertyData
                                          ?.addUpdatePropertyAdditionalDetailsModel
                                          ?.propertyHeading ??
                                      '',
                                ),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: CustomContainerText(
                                  title: 'DESCRIPTION',
                                  title2: propertyData
                                          ?.addUpdatePropertyAdditionalDetailsModel
                                          ?.propertyDescription ??
                                      '',
                                ),
                              ),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),

                              /// RENT / PRICE
                              (propertyData?.listingDetails != null &&
                                      propertyData!.listingDetails!.isNotEmpty)
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 16),
                                      child: CustomContainerText(
                                        title: propertyData!.listingDetails!
                                                    .first.propertySaleRental ==
                                                2
                                            ? 'RENT PRICE'
                                            : 'PROPERTY PRICE',
                                        title2: propertyData!.listingDetails!
                                                    .first.propertySaleRental ==
                                                2
                                            ? (propertyData!.listingDetails!
                                                        .first.rent !=
                                                    null
                                                ? '\$${propertyData!.listingDetails!.first.rent!.toStringAsFixed(2)}'
                                                : 'Rent not available')
                                            : (propertyData!.listingDetails!
                                                        .first.propertyPrice !=
                                                    null
                                                ? '\$${propertyData!.listingDetails!.first.propertyPrice!.toStringAsFixed(2)}'
                                                : 'Price not available'),
                                      ),
                                    )
                                  : const SizedBox.shrink(),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),

                              /// AGREEMENT TYPE
                              (propertyData?.listingDetails != null &&
                                      propertyData!.listingDetails!.isNotEmpty)
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 16),
                                      child: CustomContainerText(
                                        title: 'AGREEMENT TYPE',
                                        title2: propertyData!.listingDetails!
                                                    .first.propertySaleRental ==
                                                2
                                            ? 'Rental'
                                            : (propertyData!
                                                            .listingDetails!
                                                            .first
                                                            .sAgreementType !=
                                                        null &&
                                                    propertyData!
                                                        .listingDetails!
                                                        .first
                                                        .sAgreementType!
                                                        .isNotEmpty
                                                ? propertyData!.listingDetails!
                                                    .first.sAgreementType!
                                                : 'Agreement type not available'),
                                      ),
                                    )
                                  : const SizedBox.shrink(),
                              const Divider(height: 1, color: Color(0xFFE2E2E2)),

                              /// DATE AVAILABLE
                              (propertyData?.listingDetails != null &&
                                      propertyData!
                                          .listingDetails!.isNotEmpty &&
                                      propertyData!.listingDetails!.first
                                              .propertySaleRental ==
                                          2 &&
                                      propertyData!.listingDetails!.first
                                              .dateAvailable !=
                                          null)
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 16),
                                      child: CustomContainerText(
                                        title: 'DATE AVAILABLE',
                                        title2: propertyData!.listingDetails!
                                            .first.dateAvailable!
                                            .split('T')
                                            .first,
                                      ),
                                    )
                                  : const SizedBox.shrink(),
                            ],
                          ),
                        ),
                      //: SizedBox.shrink(),
                      14.verticalSpace,
                      // CustomInkWell(
                      //   imagePath1: 'assets/images/add2.png',
                      //   text: 'Agreements',
                      //   onTap: toggleContainer5,
                      // ),
                      // 16.verticalSpace,
                      // if (isColumnVisible)
                      //   Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       InkWell(
                      //         onTap: () {
                      //           Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //               builder: (context) => const PDFViewerScreen(
                      //                 pdfAssetPath: 'assets/pdfs/file.pdf',
                      //               ),
                      //             ),
                      //           );
                      //         },
                      //         child: CommonAggrementCard(
                      //             title: 'Management Agreement',
                      //             Subtitle: '01/15/24'),
                      //       ),
                      //       32.verticalSpace,
                      //     ],
                      //   ),
                      if (propertyData?.propertyPics != null &&
                          propertyData!.propertyPics!.isNotEmpty)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Property Images',
                              style: TextStyle(
                                color: const Color(0xFF164C63),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            10.verticalSpace,
                            SizedBox(
                              height: 100,
                              width: double.infinity,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  final imagePath =
                                      propertyData?.propertyPics?[index];
                                  return SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: GestureDetector(
                                          onTap: () =>
                                              _showDialog2(context, imagePath),
                                          child: S3ImageDisplayWidget(
                                              imagePath: imagePath!),
                                        ),
                                      ));
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return 10.horizontalSpace;
                                },
                                itemCount: propertyData!.propertyPics!.length,
                              ),
                            ),
                          ],
                        ),
                      10.verticalSpace,
                      if (propertyData?.floorPics != null &&
                          propertyData!.floorPics!.isNotEmpty)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Floor Images',
                              style: TextStyle(
                                color: const Color(0xFF164C63),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            10.verticalSpace,
                            SizedBox(
                              height: 100,
                              width: double.infinity,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  final imagePath = propertyData
                                      ?.addUpdatePropertyAdditionalDetailsModel
                                      ?.floorPics?[index];
                                  return SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: GestureDetector(
                                          onTap: () =>
                                              _showDialog2(context, imagePath),
                                          child: S3ImageDisplayWidget(
                                              imagePath: imagePath!),
                                        ),
                                      ));
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return 10.horizontalSpace;
                                },
                                itemCount: propertyData!.floorPics!.length,
                              ),
                            ),
                          ],
                        ),
                      45.verticalSpace,
                    ],
                  ),
                );
              }),
        )
        // bottomNavigationBar:      SizedBox(
        //         height: 100.h,
        //         child: Bottomnavbar()),
        );
  }
}

class Popupimage3 extends StatelessWidget {
  final String imagePath; // Just the S3 key like "property/xyz.jpg"

  const Popupimage3({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: S3ImageDisplayWidget(imagePath: imagePath),
      ),
    );
  }
}

class PropertyDetailContainerWidget extends StatefulWidget {
  const PropertyDetailContainerWidget({super.key, required this.child});

  final Widget child;

  @override
  State<PropertyDetailContainerWidget> createState() =>
      _PropertyDetailContainerWidgetState();
}

class _PropertyDetailContainerWidgetState
    extends State<PropertyDetailContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFEBF3F5),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xFFE2E2E2),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: widget.child,
    );
  }
}

class CustomInkWell extends StatelessWidget {
  const CustomInkWell({
    super.key,
    required this.text,
    required this.onTap,
    this.imagePath1,
  });

  final String? imagePath1;
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Row(
          children: [
            if (imagePath1 != null)
              InkWell(
                onTap: onTap,
                child: Image.asset(
                  imagePath1 ?? "",
                  height: 16.h,
                  width: 16.w,
                  color: const Color(0xFF292D32),
                ),
              ),
            // 20.horizontalSpace,
            // InkWell(
            //   onTap: onTap,
            //   child: Image.asset(
            //     'assets/images/Vector-2.png',
            //     height: 16.h,
            //     width: 16.w,
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}
