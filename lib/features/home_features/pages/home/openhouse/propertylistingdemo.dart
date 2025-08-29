import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/home_features/add_property_params/open_home_params.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/addopenhomes.dart';
import 'package:foreal_property/features/home_features/pages/home/properties/propertydetails2.dart';
import 'package:foreal_property/features/home_features/providers/get_property_listing.dart';

class PropertyListingTab2 extends ConsumerStatefulWidget {
  final String? id;
  final int? propertyId;
  final VoidCallback? onOpenHomesTap;
  const PropertyListingTab2(
      {super.key, this.id, this.propertyId, this.onOpenHomesTap});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PropertyListingTabState();
}

class _PropertyListingTabState extends ConsumerState<PropertyListingTab2> {
  @override
  Widget build(BuildContext context) {
    return CurrentListing(
      onOpenHomesTap: widget.onOpenHomesTap,
    );
  }
}

class CurrentListing extends ConsumerStatefulWidget {
  final int? propertyType;
  final VoidCallback? onOpenHomesTap;
  const CurrentListing({super.key, this.onOpenHomesTap, this.propertyType});
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
    // searchController.addListener(() {
    //   searchQuery = searchController.text.trim().toLowerCase();
    // });
    searchController = TextEditingController();
    _focusNode = FocusNode();
  }

  void _showOpenHomeDialog(
      BuildContext context, int propertyId, int listingId) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Dismiss",
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Padding(
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
                  child: Addopenhomes(
                    propertyId: propertyId,
                    listingId: listingId,
                  ),
                ),
              ),
            ),
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeIn;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

  late TextEditingController searchController;
  late FocusNode _focusNode;

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
          final filteredList = listingData!.where((item) {
            final title = item.address?.toLowerCase() ?? '';
            return title.contains(searchQuery);
          }).toList();

          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(children: [
                /// AppBar with Search and Filter
                Container(
                  color: const Color(0xFFEBF3F5),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: searchController,
                          focusNode: _focusNode,
                          onChanged: (value) {
                            setState(() {
                              searchQuery = value.toLowerCase();
                            });

                            // Keep focus to avoid keyboard hiding
                            Future.delayed(Duration.zero, () {
                              if (!_focusNode.hasFocus) {
                                _focusNode.requestFocus();
                              }
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "Search",
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
                          ),
                          cursorColor: const Color(0xFFB9B9B9),
                          textInputAction: TextInputAction.search,
                        ),
                      ),
                      const SizedBox(width: 10),
                      PopupMenuButton<int>(
                        icon: Image.asset(
                          'assets/images/filter1.png',
                          height: 45,
                          width: 45,
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
                          const PopupMenuItem(value: 1, child: Text('Sale')),
                          const PopupMenuItem(value: 2, child: Text('Rent')),
                        ],
                      ),
                    ],
                  ),
                ),

                /// Main scrollable content
                Expanded(
                    child: ListView.separated(
                        itemCount: filteredList.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 10),
                        itemBuilder: (context, index) {
                          final item = filteredList[index];
                          final propertyId =
                              int.tryParse(item.propertyId?.toString() ?? '');
                          final listingId =
                              int.tryParse(item.listingId?.toString() ?? '');

                          return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: InkWell(
                                onTap: () {
                                  context.push(Propertydetails2(
                                    item.propertyUId.toString(),
                                    propertyId,
                                  ));
                                },
                                child: InkWell(
                                  onTap: () {
                                    //  context.navigateTo(Openhome());
                                    context.push(Propertydetails2(
                                        listingData[index]
                                            .propertyUId
                                            .toString(),
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
                                                      horizontal: 6,
                                                      vertical: 8),
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: ShapeDecoration(
                                                    color:
                                                        item.propertySaleRental ==
                                                                1
                                                            ? Colors
                                                                .green // Sale
                                                            : const Color
                                                                .fromARGB(
                                                                255, 5, 84, 7),
                                                    shape:
                                                        const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(10),
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
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: 10.sp),
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomRight,
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
                                                              propertyId:
                                                                  propertyId,
                                                              listingId:
                                                                  listingId,
                                                            ),
                                                          );

                                                      Future.delayed(
                                                          Duration.zero, () {
                                                        _showOpenHomeDialog(
                                                            context,
                                                            propertyId!,
                                                            listingId!);
                                                      });
                                                      //  }
                                                    },
                                                    style: TextButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      //  backgroundColor: Colors.blue,
                                                      padding:
                                                          const EdgeInsets.symmetric(
                                                              horizontal: 5,
                                                              vertical: 5),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        side: const BorderSide(
                                                            color:
                                                                Colors.green),
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
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      child: Image.asset(
                                                        'assets/images/home3.png',
                                                        height: 72.h,
                                                        width: 96.w,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  14.verticalSpace,
                                                  Text(
                                                    '\$${item.propertySaleRental == 1 ? (item.propertyPrice ?? 0) : (listingData[index].rent ?? 0)}',
                                                    style: TextStyle(
                                                      fontSize: 18.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                    Text(
                                                      'Brokee Villa',
                                                      style: TextStyle(
                                                        fontSize: 16.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 4),
                                                    Text(
                                                      item.agentName.toString(),
                                                      style: TextStyle(
                                                        fontSize: 12.sp,
                                                        color:
                                                            const Color(0xFF494D60),
                                                      ),
                                                    ),
                                                    const SizedBox(height: 8),
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          'assets/images/location-3.png',
                                                          height: 16.h,
                                                          width: 16.w,
                                                        ),
                                                        const SizedBox(width: 4),
                                                        Expanded(
                                                          child: Text(
                                                            item.address
                                                                .toString(),
                                                            style: TextStyle(
                                                              color: const Color(
                                                                  0xFF1A1B28),
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1.4,
                                                            ),
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(height: 10),
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
                              ));
                        }))
              ]));

          // Number of property cards
//                     ),
//               ],
//             ),
//           );
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   },
// );

          // return AsyncWidget(
          //     value: propertyListing,
          //     data: (listingData) {
          //       final filteredList = listingData!.where((item) {
          //         final title = item.address?.toLowerCase() ?? '';
          //         return title.contains(searchQuery);
          //       }).toList();
          //       return Padding(
          //         padding: EdgeInsets.symmetric(horizontal: 24),
          //         child: CustomScrollView(
          //           slivers: [
          //             SliverAppBar(
          //               titleSpacing: 0,
          //               toolbarHeight: 100,
          //               backgroundColor: Color(0xFFEBF3F5),
          //               floating: true,
          //               snap: true,
          //               automaticallyImplyLeading: false,
          //               title: Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                 children: [
          //                   Expanded(
          //                     child: TextFormField(
          //                       controller: searchController,
          //                       // onChanged: (value) {
          //                       //   setState(() {
          //                       //     searchQuery = value.toLowerCase();
          //                       //   });
          //                       // },
          //                       onFieldSubmitted: (value) {
          //                         setState(() {
          //                           searchQuery = value.toLowerCase();
          //                         });
          //                       },
          //                       decoration: InputDecoration(
          //                         hintText: "Search",
          //                         hintStyle: Theme.of(context)
          //                             .textTheme
          //                             .titleMedium
          //                             ?.copyWith(
          //                               color: Color(0xFFB9B9B9),
          //                             ),
          //                         prefixIcon: Padding(
          //                           padding: EdgeInsets.all(12),
          //                           child: Image.asset(
          //                             'assets/images/search-normal.png',
          //                             height: 16,
          //                             width: 16,
          //                             color: Color(0xFFB9B9B9),
          //                           ),
          //                         ),
          //                         contentPadding: EdgeInsets.symmetric(
          //                             horizontal: 20, vertical: 20),
          //                         filled: true,
          //                         fillColor: Colors.white,
          //                       ),
          //                       cursorColor: Color(0xFFB9B9B9),
          //                       textInputAction: TextInputAction.search,
          //                     ),
          //                   ),
          //                   10.horizontalSpace,
          //                   Flexible(
          //                     flex: 0,
          //                     child: PopupMenuButton<int>(
          //                       icon: Image.asset(
          //                         'assets/images/filter1.png',
          //                         height: 45.h,
          //                         width: 45.w,
          //                       ),
          //                       shape: RoundedRectangleBorder(
          //                         borderRadius: BorderRadius.circular(12),
          //                       ),
          //                       onSelected: (int selectedType) {
          //                         setState(() {
          //                           _propertyType = selectedType;
          //                         });
          //                       },
          //                       itemBuilder: (context) => [
          //                         PopupMenuItem(
          //                           value: 1,
          //                           child: Text('Sale'),
          //                         ),
          //                         PopupMenuItem(
          //                           value: 2,
          //                           child: Text('Rent'),
          //                         ),
          //                       ],
          //                     ),
          //                   )
          //                 ],
          //               ),
          //             ),

          //             /// 👉 SliverList with property card
          //             SliverList.separated(
          //                 itemCount: filteredList.length,
          //                 itemBuilder: (BuildContext context, int index) {
          //                   final item = filteredList[index];
          //                   final propertyIdString =
          //                       listingData[index].propertyId?.toString();
          //                   final propertyId = int.tryParse(propertyIdString ?? '');

          //                   final listingIdString =
          //                       listingData[index].listingId?.toString();
          //                   final listingId = int.tryParse(listingIdString ?? '');

          //                   return Padding(
          //                     padding: EdgeInsets.symmetric(vertical: 8),
          //                     child: InkWell(
          //                       onTap: () {
          //                         //  context.navigateTo(Openhome());
          //                         context.navigateTo(Propertydetails2(
          //                             listingData[index].propertyUId.toString(),
          //                             propertyId));
          //                       },
          //                       child: Container(
          //                         decoration: BoxDecoration(
          //                           color: Colors.white,
          //                           borderRadius: BorderRadius.circular(20),
          //                           boxShadow: [
          //                             BoxShadow(
          //                               color: Colors.black.withOpacity(0.1),
          //                               blurRadius: 10,
          //                               offset: const Offset(0, 5),
          //                             ),
          //                           ],
          //                         ),
          //                         child: Column(
          //                           children: [
          //                             // Top Row with Date & Edit Button
          //                             Container(
          //                               height: 55.h,
          //                               child: Row(
          //                                 mainAxisAlignment:
          //                                     MainAxisAlignment.spaceBetween,
          //                                 children: [
          //                                   Align(
          //                                     alignment: Alignment.topLeft,
          //                                     child: Container(
          //                                       padding: EdgeInsets.symmetric(
          //                                           horizontal: 6, vertical: 8),
          //                                       clipBehavior: Clip.antiAlias,
          //                                       decoration: ShapeDecoration(
          //                                         color: item.propertySaleRental == 1
          //                                             ? Colors.green // Sale
          //                                             : const Color.fromARGB(
          //                                                 255, 5, 84, 7),
          //                                         shape: RoundedRectangleBorder(
          //                                           borderRadius: BorderRadius.only(
          //                                             topLeft: Radius.circular(10),
          //                                             bottomRight:
          //                                                 Radius.circular(10),
          //                                           ),
          //                                         ),
          //                                       ),
          //                                       child: AutoSizeText(
          //                                         item.propertySaleRental == 1
          //                                             ? 'Sale'
          //                                             : 'Rent',
          //                                         style: TextStyle(
          //                                           color: Colors.white,
          //                                           fontSize: 16.sp,
          //                                           fontWeight: FontWeight.w700,
          //                                         ),
          //                                       ),
          //                                     ),
          //                                   ),
          //                                   Padding(
          //                                     padding: EdgeInsets.only(right: 10.sp),
          //                                     child: Align(
          //                                       alignment: Alignment.bottomRight,
          //                                       child: TextButton(
          //                                         onPressed: () {
          //                                           //  if (listingData[index].sListingStatus == "Active") {
          //                                           //    widget.onOpenHomesTap?.call();
          //                                           //   } else {
          //                                           ref
          //                                               .read(
          //                                                   openHomeParamsDataProvider
          //                                                       .notifier)
          //                                               .update(
          //                                                 (p) => p.copyWith(
          //                                                   propertyId: propertyId,
          //                                                   listingId: listingId,
          //                                                 ),
          //                                               );

          //                                           Future.delayed(Duration.zero, () {
          //                                             _showOpenHomeDialog(context,
          //                                                 propertyId!, listingId!);
          //                                           });
          //                                           //  }
          //                                         },
          //                                         style: TextButton.styleFrom(
          //                                           foregroundColor: Colors.black,
          //                                           //  backgroundColor: Colors.blue,
          //                                           padding: EdgeInsets.symmetric(
          //                                               horizontal: 5, vertical: 5),
          //                                           shape: RoundedRectangleBorder(
          //                                             borderRadius:
          //                                                 BorderRadius.circular(8),
          //                                             side: BorderSide(
          //                                                 color: Colors.green),
          //                                           ),
          //                                         ),
          //                                         child: Text(
          //                                           // listingData[index]
          //                                           //            .sListingStatus ==
          //                                           //        "Active"
          //                                           //    ? 'Go Open Home'
          //                                           //:
          //                                           'Add Open Homes',
          //                                           style: TextStyle(
          //                                             fontSize: 10,
          //                                             fontWeight: FontWeight.bold,
          //                                           ),
          //                                         ),
          //                                       ),

          //                                       // child: PopupMenuButton(
          //                                       //   shape: RoundedRectangleBorder(
          //                                       //       borderRadius:
          //                                       //           BorderRadius.circular(10),
          //                                       //       side: BorderSide(
          //                                       //         width: 1,
          //                                       //         color:
          //                                       //             const Color(0xFFE2E2E2),
          //                                       //       )),
          //                                       //   itemBuilder: (context) =>
          //                                       //       <PopupMenuEntry<String>>[
          //                                       //     PopupMenuItem<String>(
          //                                       //         // value: 'Edit',
          //                                       //         child: SizedBox(
          //                                       //       width: 126,
          //                                       //       child: Text(
          //                                       //         'Edit Property ',
          //                                       //         style: TextStyle(
          //                                       //           color:
          //                                       //               const Color(0xFF164C63),
          //                                       //           fontSize: 12.sp,
          //                                       //           fontWeight: FontWeight.w500,
          //                                       //         ),
          //                                       //       ),
          //                                       //     )),
          //                                       //     PopupMenuItem<String>(
          //                                       //         // value: 'Edit',
          //                                       //         child: Text(
          //                                       //       'Notes',
          //                                       //       style: TextStyle(
          //                                       //         color:
          //                                       //             const Color(0xFF164C63),
          //                                       //         fontSize: 12.sp,
          //                                       //         fontWeight: FontWeight.w500,
          //                                       //       ),
          //                                       //     )),
          //                                       //     PopupMenuItem<String>(
          //                                       //         // value: 'Edit',
          //                                       //         child: Text(
          //                                       //       'Delete',
          //                                       //       style: TextStyle(
          //                                       //         color:
          //                                       //             const Color(0xFF164C63),
          //                                       //         fontSize: 12.sp,
          //                                       //         fontWeight: FontWeight.w500,
          //                                       //       ),
          //                                       //     )),
          //                                       //     PopupMenuItem<String>(
          //                                       //         // value: 'Edit',

          //                                       //         onTap: () {
          //                                       //           // Update provider with correct ID
          //                                       //           ref
          //                                       //               .read(
          //                                       //                   openHomeParamsDataProvider
          //                                       //                       .notifier)
          //                                       //               .update(
          //                                       //                 (p) => p.copyWith(
          //                                       //                     propertyId:
          //                                       //                         propertyId,
          //                                       //                     listingId:
          //                                       //                         listingId),
          //                                       //               );

          //                                       //           // Show dialog for that specific property
          //                                       //           Future.delayed(
          //                                       //               Duration.zero, () {
          //                                       //             _showOpenHomeDialog(
          //                                       //                 context,
          //                                       //                 propertyId!,
          //                                       //                 listingId!);
          //                                       //           });
          //                                       //         },
          //                                       //         child: Text(
          //                                       //           'Add Open Homes',
          //                                       //           style: TextStyle(
          //                                       //             color: const Color(
          //                                       //                 0xFF164C63),
          //                                       //             fontSize: 12.sp,
          //                                       //             fontWeight:
          //                                       //                 FontWeight.w500,
          //                                       //           ),
          //                                       //         )),
          //                                       //   ],
          //                                       //   child: Image.asset(
          //                                       //     'assets/images/more-circle.png',
          //                                       //     height: 24.h,
          //                                       //     width: 24.w,
          //                                       //   ),
          //                                       // ),
          //                                     ),
          //                                   )
          //                                 ],
          //                               ),
          //                             ),

          //                             // Property Content
          //                             Padding(
          //                               padding: EdgeInsets.all(12),
          //                               child: Row(
          //                                 crossAxisAlignment:
          //                                     CrossAxisAlignment.start,
          //                                 children: [
          //                                   Column(
          //                                     children: [
          //                                       InkWell(
          //                                         onTap: () {
          //                                           //_showDialog2(context);
          //                                         },
          //                                         child: ClipRRect(
          //                                           borderRadius:
          //                                               BorderRadius.circular(12),
          //                                           child: Image.asset(
          //                                             'assets/images/home3.png',
          //                                             height: 72.h,
          //                                             width: 96.w,
          //                                             fit: BoxFit.cover,
          //                                           ),
          //                                         ),
          //                                       ),
          //                                       14.verticalSpace,
          //                                       Text(
          //                                         '\$${item.propertySaleRental == 1 ? (item.propertyPrice ?? 0) : (listingData[index].rent ?? 0)}',
          //                                         style: TextStyle(
          //                                           fontSize: 18.sp,
          //                                           fontWeight: FontWeight.w700,
          //                                           color: Colors.black,
          //                                         ),
          //                                       ),
          //                                     ],
          //                                   ),
          //                                   SizedBox(width: 12.w),
          //                                   Expanded(
          //                                     child: Column(
          //                                       crossAxisAlignment:
          //                                           CrossAxisAlignment.start,
          //                                       children: [
          //                                         Text(
          //                                           'Brokee Villa',
          //                                           style: TextStyle(
          //                                             fontSize: 16.sp,
          //                                             fontWeight: FontWeight.w700,
          //                                           ),
          //                                         ),
          //                                         SizedBox(height: 4),
          //                                         Text(
          //                                           item.agentName.toString(),
          //                                           style: TextStyle(
          //                                             fontSize: 12.sp,
          //                                             color: Color(0xFF494D60),
          //                                           ),
          //                                         ),
          //                                         SizedBox(height: 8),
          //                                         Row(
          //                                           children: [
          //                                             Image.asset(
          //                                               'assets/images/location-3.png',
          //                                               height: 16.h,
          //                                               width: 16.w,
          //                                             ),
          //                                             SizedBox(width: 4),
          //                                             Expanded(
          //                                               child: Text(
          //                                                 item.address.toString(),
          //                                                 style: TextStyle(
          //                                                   color: Color(0xFF1A1B28),
          //                                                   fontSize: 12.sp,
          //                                                   fontWeight:
          //                                                       FontWeight.w500,
          //                                                   height: 1.4,
          //                                                 ),
          //                                                 maxLines: 2,
          //                                                 overflow:
          //                                                     TextOverflow.ellipsis,
          //                                               ),
          //                                             ),
          //                                           ],
          //                                         ),
          //                                         SizedBox(height: 10),
          //                                       ],
          //                                     ),
          //                                   ),
          //                                 ],
          //                               ),
          //                             ),
          //                           ],
          //                         ),
          //                       ),
          //                     ),
          //                   );
          //                 },
          //                 separatorBuilder: (BuildContext context, int index) {
          //                   return SizedBox(
          //                     height: 10,
          //                   );
          //                 }
          //                 // Number of property cards
          //                 ),
          //           ],
          //         ),
          //      );
        });
  }
}
