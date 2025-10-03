import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/s3_sigleton/s3_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/home_features/models/get_openhomelist_model.dart';
import 'package:foreal_property/features/home_features/models/get_property_details.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/edithomes.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/openhome.dart';
import 'package:foreal_property/features/home_features/providers/openhomelist.dart';
import 'package:intl/intl.dart';

class CurrentPage extends ConsumerStatefulWidget {
  final PropertyDetailModel? propertyData;
  final bool? isCurrent;
  const CurrentPage({this.propertyData, super.key, this.isCurrent});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CurrentPageState();
}

class _CurrentPageState extends ConsumerState<CurrentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBF3F5),
      body: Current(
        PropertyData: widget.propertyData,
        isCurrent: widget.isCurrent,
      ),
    );
  }
}

class Current extends ConsumerStatefulWidget {
  final PropertyDetailModel? PropertyData;
  final bool? isCurrent;
  const Current({super.key, this.PropertyData, this.isCurrent});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CurrentState();
}

class _CurrentState extends ConsumerState<Current> {
  void _showDialog(
    BuildContext context,
    PropertyDetailModel? propertyData,
    int propertyId,
    int propertyListing,
    int listingId,
  ) {
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
                  child: Edithomes(
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

  DateTime? fromDate;
  DateTime? toDate;
  List<GetOpenHomeListModel>? filteredOpenHomeData;

  TextEditingController searchController = TextEditingController();
  String searchQuery = '';
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final openHomes =
        ref.watch(openHomeListProvider(isCurrent: widget.isCurrent ?? true));

    return AsyncWidget(
        onRetry: () {
          ref.invalidate(openHomeListProvider);
        },
        value: openHomes,
        data: (openHomeData) {
          final List<GetOpenHomeListModel> fullList = openHomeData ?? [];
          final List<GetOpenHomeListModel> dataToShow = filteredOpenHomeData ??
              (searchQuery.isEmpty
                  ? fullList
                  : fullList.where((item) {
                      final heading = item.heading?.toLowerCase() ?? '';
                      final address = item.property?.toLowerCase() ?? '';
                      return heading.contains(searchQuery) ||
                          address.contains(searchQuery);
                    }).toList());

          openHomeData?.sort((a, b) {
            if (a.eventDate == null && b.eventDate == null) return 0;
            if (a.eventDate == null) return 1;
            if (b.eventDate == null) return -1;
            return a.eventDate!.compareTo(b.eventDate!);
          });
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: RefreshIndicator(
              color: const Color(0xFF164C63),
              onRefresh: () async {
                setState(() {
                  fromDate = null;
                  toDate = null;
                  filteredOpenHomeData = null;
                  searchQuery = '';
                  searchController.clear();
                });

                ref.invalidate(
                    openHomeListProvider(isCurrent: widget.isCurrent ?? true));
              },
              child: CustomScrollView(
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
                          ),
                        ),
                        10.horizontalSpace,
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(16)),
                              ),
                              isScrollControlled: true,
                              builder: (context) {
                                return StatefulBuilder(
                                  builder: (context, setModalState) {
                                    Future<void> pickDate(bool isFrom) async {
                                      final today = DateTime.now();

                                      final picked = await showDatePicker(
                                        context: context,
                                        initialDate: today,
                                        firstDate: (widget.isCurrent ?? true)
                                            ? today
                                            : DateTime(2000),
                                        lastDate: (widget.isCurrent ?? true)
                                            ? DateTime(2100)
                                            : today,
                                      );

                                      if (picked != null) {
                                        setModalState(() {
                                          if (isFrom) {
                                            fromDate = picked;
                                          } else {
                                            toDate = picked;
                                          }
                                        });
                                      }
                                    }

                                    return Padding(
                                      padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom,
                                        left: 16,
                                        right: 16,
                                        top: 24,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text("Filter",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge),
                                          const SizedBox(height: 16),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: () => pickDate(true),
                                                  child: InputDecorator(
                                                    decoration: const InputDecoration(
                                                      labelText: 'From',
                                                      border:
                                                          OutlineInputBorder(),
                                                    ),
                                                    child: Text(
                                                      fromDate != null
                                                          ? "${fromDate!.day}/${fromDate!.month}/${fromDate!.year}"
                                                          : "Select date",
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              12.horizontalSpace,
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: () => pickDate(false),
                                                  child: InputDecorator(
                                                    decoration: const InputDecoration(
                                                      labelText: 'To',
                                                      border:
                                                          OutlineInputBorder(),
                                                    ),
                                                    child: Text(
                                                      toDate != null
                                                          ? "${toDate!.day}/${toDate!.month}/${toDate!.year}"
                                                          : "Select date",
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          20.verticalSpace,
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xFF164C63),
                                                foregroundColor:
                                                    const Color(0xFF164C63),
                                                side: const BorderSide(
                                                  color: Color(0xFF164C63),
                                                )),
                                            onPressed: () {
                                              Navigator.pop(context);

                                              final filteredList =
                                                  openHomeData!.where((item) {
                                                final eventDate =
                                                    item.eventDate;
                                                if (eventDate == null)
                                                  return false;

                                                if (fromDate != null &&
                                                    eventDate
                                                        .isBefore(fromDate!)) {
                                                  return false;
                                                }
                                                if (toDate != null &&
                                                    eventDate
                                                        .isAfter(toDate!)) {
                                                  return false;
                                                }
                                                return true;
                                              }).toList();

                                              setState(() {
                                                filteredOpenHomeData =
                                                    filteredList;
                                              });

                                              print(
                                                  "Filtered From: $fromDate, To: $toDate → ${filteredList.length} items");

                                              // Auto-reset after 10 seconds (adjust time as needed)
                                              Future.delayed(
                                                  const Duration(seconds: 10), () {
                                                if (mounted) {
                                                  setState(() {
                                                    fromDate = null;
                                                    toDate = null;
                                                    filteredOpenHomeData = null;
                                                  });
                                                  print(
                                                      "Filter auto-reset after timeout.");
                                                }
                                              });
                                            },
                                            child: const Text(
                                              "Apply",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          20.verticalSpace
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                          child: Image.asset(
                            'assets/images/filter1.png',
                            height: 45.h,
                            width: 45.w,
                          ),
                        ),

                        // GestureDetector(
                        //   onTap: () {
                        //     setState(() {
                        //       // isCurrent = !isCurrent; // toggle true <-> false
                        //       // print('Filter applied: $isCurrent');
                        //     });
                        //   },
                        //   child: Image.asset(
                        //     'assets/images/filter1.png',
                        //     height: 45.h,
                        //     width: 45.w,
                        //   ),
                        // )
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: dataToShow.length,
                        itemBuilder: (BuildContext context, int index) {
                          //  final item = dataToShow[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: InkWell(
                              onTap: () {
                                context.navPush(Openhome(dataToShow[index]
                                    .openHomeuniqueId
                                    .toString()));

                                //context.navigateTo(Past());
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
                                      height: 60.h,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 20),
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const ShapeDecoration(
                                                color: Color.fromARGB(
                                                    255, 94, 194, 198),
                                                shape: RoundedRectangleBorder(
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
                                                dataToShow[index].eventDate !=
                                                            null &&
                                                        dataToShow[index]
                                                                .startTime !=
                                                            null &&
                                                        dataToShow[index]
                                                                .endTime !=
                                                            null
                                                    ? "${DateFormat('MMM dd yyyy').format(dataToShow[index].eventDate!)} | "
                                                        "${DateFormat('hh:mm a').format(dataToShow[index].startTime!)} - "
                                                        "${DateFormat('hh:mm a').format(dataToShow[index].endTime!)}"
                                                    : "No Schedule",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (widget.isCurrent == true)
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 18.sp),
                                              child: Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: InkWell(
                                                  onTap: () {
                                                    final listingDetails =
                                                        widget.PropertyData
                                                            ?.listingDetails;
                                                    final propertyId =
                                                        listingDetails !=
                                                                    null &&
                                                                listingDetails
                                                                    .isNotEmpty
                                                            ? listingDetails[0]
                                                                .propertyId
                                                            : 0;
                                                    final listingId =
                                                        listingDetails !=
                                                                    null &&
                                                                listingDetails
                                                                    .isNotEmpty
                                                            ? listingDetails[0]
                                                                    .listingId ??
                                                                0
                                                            : 0;
                                                    final propertyListing =
                                                        listingDetails !=
                                                                    null &&
                                                                listingDetails
                                                                    .isNotEmpty
                                                            ? listingDetails[0]
                                                                    .propertySaleRental ??
                                                                0
                                                            : 0;

                                                    print(
                                                        'propertyId: $propertyId');
                                                    print(
                                                        'listingId: $listingId');
                                                    print(
                                                        'propertySaleRental: $propertyListing');
                                                    _showDialog(
                                                        context,
                                                        widget.PropertyData,
                                                        propertyId!,
                                                        propertyListing,
                                                        listingId);
                                                  },
                                                  child: Container(
                                                    width: 64.w,
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            horizontal: 9,
                                                            vertical: 4),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24),
                                                      border: Border.all(
                                                        color:
                                                            const Color(0xFF164C63),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Image.asset(
                                                          'assets/images/edit-2.png',
                                                          height: 16.h,
                                                          width: 14.w,
                                                        ),
                                                        const SizedBox(width: 2),
                                                        Expanded(
                                                          child: AutoSizeText(
                                                            maxLines: 1,
                                                            'Edit',
                                                            style: TextStyle(
                                                              color: const Color(
                                                                  0xFF164C63),
                                                              fontSize: 9.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    10.verticalSpace,
                                    // Property Content
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  // _showDialog2(context);
                                                },
                                                child: SizedBox(
                                                  height: 72.h,
                                                  width: 72.w,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    child: dataToShow[index]
                                                                .propertyPic
                                                                ?.isNotEmpty ==
                                                            true
                                                        ? S3ImageDisplayWidget(
                                                            imagePath: dataToShow[
                                                                    index]
                                                                .propertyPic!,
                                                          )
                                                        : Image.asset(
                                                            'assets/images/placeholder.png',
                                                            height: 72.h,
                                                            width: 72.w,
                                                            fit: BoxFit.cover,
                                                          ),
                                                  ),
                                                ),
                                              ),
                                              10.verticalSpace,

                                              /// Row for price and badge
                                              Text(
                                                '\$${dataToShow[index].propertyPrice.toString()}',
                                                style: TextStyle(
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                          12.horizontalSpace,
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                // AutoSizeText(
                                                //   'House', // or property.sPropertyType
                                                //   style: Theme.of(context)
                                                //       .textTheme
                                                //       .bodySmall
                                                //       ?.copyWith(
                                                //         color: const Color(
                                                //             0xFF494D60),
                                                //       ),
                                                // ),
                                                Text(
                                                  dataToShow[index]
                                                      .property
                                                      .toString(),
                                                  style: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                Text(
                                                  dataToShow[index]
                                                      .heading
                                                      .toString(),
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xFF1A1B28),
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.4,
                                                  ),
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                const SizedBox(height: 8),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    //  40.horizontalSpace,
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          'assets/images/bed.png',
                                                          height: 15.h,
                                                          width: 15.w,
                                                        ),
                                                        8.horizontalSpace,
                                                        Text(
                                                          "0",
                                                          textAlign:
                                                              TextAlign.right,
                                                          style: TextStyle(
                                                            color: const Color(
                                                                0xFF1A1B28),
                                                            fontSize: 13.sp,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        12.horizontalSpace,
                                                        Image.asset(
                                                          'assets/images/bathtub.png',
                                                          height: 15.h,
                                                          width: 15.w,
                                                        ),
                                                        8.horizontalSpace,
                                                        Text(
                                                          "0",
                                                          textAlign:
                                                              TextAlign.right,
                                                          style: TextStyle(
                                                            color: const Color(
                                                                0xFF1A1B28),
                                                            fontSize: 13.sp,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        12.horizontalSpace,
                                                        Image.asset(
                                                          'assets/images/car.png',
                                                          height: 15.h,
                                                          width: 15.w,
                                                        ),
                                                        8.horizontalSpace,
                                                        Text(
                                                          "0",
                                                          textAlign:
                                                              TextAlign.right,
                                                          style: TextStyle(
                                                            color: const Color(
                                                                0xFF1A1B28),
                                                            fontSize: 13.sp,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 4),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color:
                                              dataToShow[index].sListingType ==
                                                      "Sale"
                                                  ? Colors.green
                                                  : const Color.fromARGB(
                                                      255, 5, 84, 7),
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          dataToShow[index].sListingType ?? "",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return 16.verticalSpace;
                        }

                        // Number of property cards
                        ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
