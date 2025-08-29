import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/s3_sigleton/s3_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/home_features/pages/home/properties/propertydetails2.dart';
import 'package:foreal_property/features/home_features/providers/get_property_list.dart';

class AllPropertyList extends ConsumerStatefulWidget {
  final VoidCallback? onOpenHomesTap;
  const AllPropertyList({super.key, this.onOpenHomesTap});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AllPropertyListState();
}

class _AllPropertyListState extends ConsumerState<AllPropertyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBF3F5),
      body: AppPropertiesList(
        onOpenHomesTap: widget.onOpenHomesTap,
      ),
    );
  }
}

class AppPropertiesList extends ConsumerStatefulWidget {
  final VoidCallback? onOpenHomesTap;
  const AppPropertiesList({super.key, this.onOpenHomesTap});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AppPropertiesListState();
}

class _AppPropertiesListState extends ConsumerState<AppPropertiesList> {


  Timer? _debounce;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});

    // searchController.addListener(() {
    //   final newText = searchController.text;
    //   if (searchQuery != newText) {
    //     searchQuery = newText;
    //   }
    // });
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   final propertyId =
    //       ref.watch(localStorageServiceProvider).getPropertyModel()?.id;

    //   if (propertyId != null) {
    //     ref.read(openHomeParamsDataProvider.notifier).update(
    //           (p) => p.copyWith(propertyId: propertyId),
    //         );
    //   }
    // });
  }

  TextEditingController searchController = TextEditingController();
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final propertyList = ref.watch(getAddedPropertyListProvider);
    return RefreshIndicator(
        color: const Color(0xFF164C63),
        onRefresh: () async {
          ref.invalidate(getAddedPropertyListProvider);
          await Future.delayed(const Duration(milliseconds: 100));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: CustomScrollView(slivers: [
            SliverAppBar(
              titleSpacing: 0,
              toolbarHeight: 100,
              backgroundColor: const Color(0xFFEBF3F5),
              floating: true,
              snap: true,
              automaticallyImplyLeading: false,
              title: TextFormField(
                onChanged: (value) async {
                  if (_debounce?.isActive ?? false) _debounce!.cancel();
                  _debounce = Timer(const Duration(seconds: 1), () {
                    ref
                        .read(getAddedPropertyListProvider.notifier)
                        .searchProperty(searchQuery: value);
                  });
                  // ref
                  //     .read(getAddedPropertyListProvider.notifier)
                  //     .searchProperty(searchQuery: value);
                },
                controller: searchController,
                textInputAction: TextInputAction.search,
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: const Color(0xFFB9B9B9),
                      ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(
                      'assets/images/search-normal.png',
                      height: 20,
                      width: 20,
                      color: const Color(0xFFB9B9B9),
                    ),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: 
                       IconButton(
                          icon: const Icon(Icons.close, color: Color(0xFFB9B9B9)),
                          onPressed: () {
                            searchController.clear();
                            ref
                                .read(getAddedPropertyListProvider.notifier)
                                .searchProperty(searchQuery: '');
                            setState(() {}); // Refresh field
                          },
                        )
                      ,
                ),
                cursorColor: const Color(0xFFB9B9B9),
              ),
            ),
            SliverToBoxAdapter(
              child: AsyncWidget(
                  onRetry: () async =>
                      ref.refresh(getAddedPropertyListProvider),
                  value: propertyList,
                  data: (allproperties) {
                    if (allproperties == null || allproperties.isEmpty) {
                      return const Center(child: Text('No properties found.'));
                    }
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: allproperties.length,
                      itemBuilder: (BuildContext context, int index) {
                        final property = allproperties[index];
                        final propertyIdString =
                            property.propertyId?.toString();
                        final propertyId = int.tryParse(propertyIdString ?? '');

                        // final listingIdString =
                        //     listingData[index].listingId?.toString();
                        // final listingId = int.tryParse(listingIdString ?? '');
                        // print(allproperties[index].propertyUniqueId);
                        return InkWell(
                          onTap: () {
                            context.push(Propertydetails2(
                              property.propertyUniqueId.toString(),
                              propertyId,
                            ));
                          },
                          child: Container(
                            // width: 328,
                            //  height: 200,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 14, vertical: 6),
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              color: property.sPropertyStatus ==
                                                      "Listed"
                                                  ? Colors.green
                                                  : Colors.blue,
                                              shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                              ),
                                            ),
                                            child: AutoSizeText(
                                              property.sPropertyStatus ??
                                                  'PROSPECT',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                            
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16, bottom: 40, right: 16),
                                        child: InkWell(
                                          onTap: () {
                                            //    _showDialog2(context);
                                          },
                                          child: SizedBox(
                                            height: 72.h,
                                            width: 72.w,
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                child: property.propertyPic
                                                            ?.isNotEmpty ==
                                                        true
                                                    ? S3ImageDisplayWidget(
                                                        imagePath: property
                                                            .propertyPic!,
                                                      )
                                                    : Image.asset(
                                                        'assets/images/placeholder.png',
                                                        height: 72.h,
                                                        width: 72.w,
                                                        fit: BoxFit.cover,
                                                      )),
                                          ),
                                        ),

                                        // child: GestureDetector(
                                        //   onTap: () {
                                        //     _showDialog(context);
                                        //   },
                                        //   child: ClipRRect(
                                        //     borderRadius: BorderRadius.circular(10.0),
                                        //     child: ExtendedImage.asset(
                                        //       'assets/images/properties.png',
                                        //       height: 48.h,
                                        //       width: 48.w,
                                        //       fit: BoxFit.cover,
                                        //     ),
                                        //   ),
                                        // )
                                        // child: Container(
                                        //   height: 48.h,
                                        //   width: 48.w,
                                        //   decoration: BoxDecoration(
                                        //       borderRadius: BorderRadius.circular(10),
                                        //       image: DecorationImage(
                                        //         image: AssetImage('assets/images/properties.png'),
                                        //         fit: BoxFit.cover,
                                        //       )),
                                        // )
                                      ),
                                      SizedBox(
                                        width: 199.w,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AutoSizeText(
                                              property.sPropertyType ?? 'House',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall
                                                  ?.copyWith(
                                                    color: const Color(0xFF494D60),
                                                  ),
                                            ),
                                            AutoSizeText(
                                              softWrap: true,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              property.getFormatedAddress ?? "",
                                              style: TextStyle(
                                                color: const Color(0xFF1A1B28),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w700,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            8.verticalSpace,
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 80.w,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      AutoSizeText(
                                                        'Owner',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodySmall
                                                            ?.copyWith(
                                                              color: const Color(
                                                                  0xFF494D60),
                                                            ),
                                                      ),
                                                      AutoSizeText(
                                                        property.primaryContactName ??
                                                            " ",
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF1A1B28),
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                16.horizontalSpace,
                                                SizedBox(
                                                  width: 80.w,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      AutoSizeText(
                                                        'Agent',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodySmall
                                                            ?.copyWith(
                                                              color: const Color(
                                                                  0xFF494D60),
                                                            ),
                                                      ),
                                                      AutoSizeText(
                                                        property.agentName ??
                                                            "",
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF1A1B28),
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        minFontSize: 10,
                                                        stepGranularity: 1,
                                                        wrapWords: true,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return 16.verticalSpace;
                      },
                    );
                  }),
            ),
          ]),
        ));
  }
}





            // Padding(
                                        //   padding: EdgeInsets.only(right: 10.sp),
                                        //   child: Align(
                                        //     alignment: Alignment.bottomRight,
                                        //     child: allproperties[index]
                                        //                 .sPropertyStatus ==
                                        //             "Listed"
                                        //         ? TextButton(
                                        //             style: TextButton.styleFrom(
                                        //               backgroundColor:
                                        //                   const Color(0xFFE2E2E2),
                                        //               shape: RoundedRectangleBorder(
                                        //                 borderRadius:
                                        //                     BorderRadius.circular(
                                        //                         10),
                                        //               ),
                                        //             ),
                                        //             onPressed: () {
                                        //               // Update provider with correct ID
                                        //             //  ref
                                        //             //         .read(
                                        //             //             openHomeParamsDataProvider
                                        //             //                 .notifier)
                                        //             //         .update(
                                        //             //           (p) => p.copyWith(
                                        //             //               propertyId:
                                        //             //                   propertyId,
                                        //             //               listingId:
                                        //             //                   listingId),
                                        //             //         );

                                        //               // Show dialog
                                        //               Future.delayed(Duration.zero,
                                        //                   () {
                                        //             //     _showOpenHomeDialog(context, propertyId!,    listingId!);
                                        //               });
                                        //             },
                                        //             child: Text(
                                        //               'Add Open Homes',
                                        //               style: TextStyle(
                                        //                 color:
                                        //                     const Color(0xFF164C63),
                                        //                 fontSize: 12.sp,
                                        //                 fontWeight: FontWeight.w500,
                                        //               ),
                                        //             ),
                                        //           )
                                        //         : PopupMenuButton(
                                        //             shape: RoundedRectangleBorder(
                                        //               borderRadius:
                                        //                   BorderRadius.circular(10),
                                        //               side: BorderSide(
                                        //                 width: 1,
                                        //                 color:
                                        //                     const Color(0xFFE2E2E2),
                                        //               ),
                                        //             ),
                                        //             itemBuilder: (context) =>
                                        //                 <PopupMenuEntry<String>>[
                                        //               PopupMenuItem<String>(
                                        //                 onTap: (){},
                                        //                 child: SizedBox(
                                        //                   width: 126,
                                        //                   child: Text(
                                        //                     'Edit Property',
                                        //                     style: TextStyle(
                                        //                       color: const Color(
                                        //                           0xFF164C63),
                                        //                       fontSize: 12.sp,
                                        //                       fontWeight:
                                        //                           FontWeight.w500,
                                        //                     ),
                                        //                   ),
                                        //                 ),
                                        //               ),
                                        //               PopupMenuItem<String>(
                                        //                 child: Text(
                                        //                   'Notes',
                                        //                   style: TextStyle(
                                        //                     color: const Color(
                                        //                         0xFF164C63),
                                        //                     fontSize: 12.sp,
                                        //                     fontWeight:
                                        //                         FontWeight.w500,
                                        //                   ),
                                        //                 ),
                                        //               ),
                                        //               PopupMenuItem<String>(
                                        //                 child: Text(
                                        //                   'Delete',
                                        //                   style: TextStyle(
                                        //                     color: const Color(
                                        //                         0xFF164C63),
                                        //                     fontSize: 12.sp,
                                        //                     fontWeight:
                                        //                         FontWeight.w500,
                                        //                   ),
                                        //                 ),
                                        //               ),
                                        //             ],
                                        //             child: Image.asset(
                                        //               'assets/images/more-circle.png',
                                        //               height: 24.h,
                                        //               width: 24.w,
                                        //             ),
                                        //           ),
                                        //   ),
                                        // ),