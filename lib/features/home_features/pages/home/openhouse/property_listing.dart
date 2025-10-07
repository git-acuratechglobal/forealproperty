import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/s3_sigleton/s3_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/home_features/add_property_params/open_home_params.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/addopenhomes.dart';
import 'package:foreal_property/features/home_features/pages/home/properties/propertydetails2.dart';
import 'package:foreal_property/features/home_features/providers/get_property_listing.dart';

import '../../../../../core/network/apiend_points.dart';
import '../../../../../core/utils/network_image_widget.dart';

class PropertyListingTab extends ConsumerStatefulWidget {
  final String? id;
  final int? propertyId;
  final VoidCallback? onOpenHomesTap;
  const PropertyListingTab(
      {super.key, this.id, this.propertyId, this.onOpenHomesTap});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PropertyListingTabState();
}

class _PropertyListingTabState extends ConsumerState<PropertyListingTab> {
  @override
  Widget build(BuildContext context) {
    return CurrentListing(
      onOpenHomesTap: widget.onOpenHomesTap,
    );
  }
}

class CurrentListing extends ConsumerStatefulWidget {
  final int? propertyType;
  final int? propertyId;
  final int? listingId;
  final VoidCallback? onOpenHomesTap;
  const CurrentListing(
      {super.key,
      this.onOpenHomesTap,
      this.propertyType,
      this.listingId,
      this.propertyId});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CurrentListingState();
}

class _CurrentListingState extends ConsumerState<CurrentListing> {
  int _propertyType = 1;
  @override
  void initState() {
    super.initState();
    if (widget.propertyType != null) {
      _propertyType = widget.propertyType!;
    }
    searchController.addListener(() {
      searchQuery = searchController.text.trim().toLowerCase();
    });
  }

  // void _showOpenHomeDialog(
  //     BuildContext context, int propertyId, int listingId) {
  //   showGeneralDialog(
  //     context: context,
  //     barrierDismissible: true,
  //     barrierLabel: "Dismiss",
  //     transitionDuration: const Duration(milliseconds: 300),
  //     pageBuilder: (context, animation, secondaryAnimation) {
  //       return BackdropFilter(
  //         filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
  //         child: Padding(
  //           padding: const EdgeInsets.symmetric(horizontal: 24),
  //           child: Align(
  //             alignment: Alignment.center,
  //             child: Material(
  //               color: Colors.transparent,
  //               child: Container(
  //                 decoration: BoxDecoration(
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.circular(20),
  //                 ),
  //                 child: Addopenhomes(
  //                   propertyId: propertyId,
  //                   listingId: listingId,
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //     transitionBuilder: (context, animation, secondaryAnimation, child) {
  //       const begin = Offset(0.0, 1.0);
  //       const end = Offset.zero;
  //       const curve = Curves.easeIn;
  //       var tween =
  //           Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  //       var offsetAnimation = animation.drive(tween);

  //       return SlideTransition(position: offsetAnimation, child: child);
  //     },
  //   );
  // }

  TextEditingController searchController = TextEditingController();
  String searchQuery = '';
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final propertyListing =
        ref.watch(getPropertyListingProvider(_propertyType));

    return AsyncWidget(
        value: propertyListing,
        data: (listingData) {
          final filteredList = (listingData ?? []).where((item) {
            final heading = item.heading?.toLowerCase() ?? '';
            final address = item.address?.toLowerCase() ?? '';
            return heading.contains(searchQuery) ||
                address.contains(searchQuery);
          }).toList();

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  titleSpacing: 0,
                  toolbarHeight: 100,
                  backgroundColor: const Color(0xFFEBF3F5),
                  floating: true,
                  snap: true,
                  automaticallyImplyLeading: false,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: searchController,
                          // onChanged: (value) {
                          //   setState(() {
                          //     searchQuery = value.toLowerCase();
                          //   });
                          // },
                          onFieldSubmitted: (value) {
                            setState(() {
                              searchQuery = value.toLowerCase();
                            });
                          },
                          decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: const Color(0xFFB9B9B9),
                                  ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(12),
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
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.close,
                                    color: Color(0xFFB9B9B9)),
                                onPressed: () {
                                  setState(() {
                                    searchController.clear();
                                    searchQuery = '';
                                  });
                                },
                              )),
                          cursorColor: const Color(0xFFB9B9B9),
                          textInputAction: TextInputAction.search,
                        ),
                      ),
                      10.horizontalSpace,
                      Flexible(
                        flex: 0,
                        child: PopupMenuButton<int>(
                          icon: Image.asset(
                            'assets/images/filter1.png',
                            height: 45.h,
                            width: 45.w,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          onSelected: (int selectedType) {
                            setState(() {
                              _propertyType = selectedType;
                            });
                          },
                          itemBuilder: (context) => [
                            const PopupMenuItem(
                              value: 1,
                              child: Text('Sale'),
                            ),
                            const PopupMenuItem(
                              value: 2,
                              child: Text('Rent'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                /// 👉 SliverList with property card
                SliverToBoxAdapter(
                  child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: filteredList.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = filteredList[index];
                        final propertyIdString =
                            listingData![index].propertyId?.toString();
                        final propertyId = int.tryParse(propertyIdString ?? '');

                        final propertySaleRental =
                            listingData[index].propertySaleRental?.toString();
                        final propertylistingStatus =
                            int.tryParse(propertySaleRental ?? "");

                        final listingIdString =
                            listingData[index].listingId?.toString();
                        final listingId = int.tryParse(listingIdString ?? '');

                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: InkWell(
                            onTap: () {
                              //  context.navigateTo(Openhome());
                              context.navPush(Propertydetails2(
                                  listingData[index].propertyUId.toString(),
                                  propertyId));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.1),
                                    blurRadius: 10,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  // Top Row with Date & Edit Button
                                  Container(
                                    height: 55.h,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 6, vertical: 8),
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              color:
                                                  item.propertySaleRental == 1
                                                      ? Colors.green // Sale
                                                      : const Color.fromARGB(
                                                          255, 5, 84, 7),
                                              shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                              ),
                                            ),
                                            child: AutoSizeText(
                                              item.propertySaleRental == 1
                                                  ? 'Sale'
                                                  : 'Rent',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(right: 10.sp),
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: TextButton(
                                              onPressed: () {
                                                //  if (listingData[index].sListingStatus == "Active") {
                                                //    widget.onOpenHomesTap?.call();
                                                //   } else {
                                                ref
                                                    .read(
                                                        openHomeParamsDataProvider
                                                            .notifier)
                                                    .update(
                                                      (p) => p.copyWith(
                                                        propertyId: propertyId,
                                                        listingId: listingId,
                                                      ),
                                                    );

                                                Future.delayed(Duration.zero,
                                                    () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Addopenhomes(
                                                        propertyId: propertyId,
                                                        listingId: listingId,
                                                        propertySaleRental:
                                                            propertylistingStatus,
                                                      ),
                                                    ),
                                                  );
                                                });
                                                //  }
                                              },
                                              style: TextButton.styleFrom(
                                                foregroundColor: Colors.black,
                                                //  backgroundColor: Colors.blue,
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 5, vertical: 5),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  side: const BorderSide(
                                                      color: Colors.green),
                                                ),
                                              ),
                                              child: const Text(
                                                // listingData[index]
                                                //            .sListingStatus ==
                                                //        "Active"
                                                //    ? 'Go Open Home'
                                                //:
                                                'Add Open Homes',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  // Property Content
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            InkWell(
                                                onTap: () {
                                                  //_showDialog2(context);
                                                },
                                                child: SizedBox(
                                                  height: 72.h,
                                                  width: 72.w,
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      child: item.propertyPic
                                                                  ?.isNotEmpty ==
                                                              true
                                                          ? NetworkImageWidget(
                                                          imageUrl:
                                                          '${ApiEndPoints.imageUrl}${item.propertyPic}')
                                                          : Image.asset(
                                                              'assets/images/placeholder.png',
                                                              height: 72.h,
                                                              width: 72.w,
                                                              fit: BoxFit.cover,
                                                            )),
                                                )),
                                            14.verticalSpace,
                                            Text(
                                              '\$${item.propertySaleRental == 1 ? (item.propertyPrice ?? 0) : (listingData[index].rent ?? 0)}',
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 12.w),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // AutoSizeText(
                                              //property.sPropertyType ??
                                              //   'House',
                                              //   style: Theme.of(context)
                                              //       .textTheme
                                              //       .bodySmall
                                              //       ?.copyWith(
                                              //         color: Color(0xFF494D60),
                                              //       ),
                                              // ),
                                              Text(
                                                item.address.toString(),
                                                style: TextStyle(
                                                  color: const Color(0xFF1A1B28),
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.4,
                                                ),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              // Text(
                                              //   item.heading ?? 'No Heading',
                                              //   style: TextStyle(
                                              //     fontSize: 12.sp,
                                              //     fontWeight: FontWeight.w500,
                                              //   ),
                                              // ),
                                              8.verticalSpace,
                                              AutoSizeText(
                                                'Agent',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall
                                                    ?.copyWith(
                                                      color: const Color(0xFF494D60),
                                                    ),
                                              ),
                                              const SizedBox(height: 4),
                                              Text(
                                                item.agentName.toString(),
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xFF1A1B28),
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: 10,
                        );
                      }
                      // Number of property cards
                      ),
                ),
              ],
            ),
          );
        });
  }
}
