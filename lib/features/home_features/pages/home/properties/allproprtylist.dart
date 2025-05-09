import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/home_features/pages/home/properties/propertydetails2.dart';
import 'package:foreal_property/features/home_features/providers/get_property_list.dart';

class AllPropertyList extends ConsumerStatefulWidget {
  const AllPropertyList({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AllPropertyListState();
}

class _AllPropertyListState extends ConsumerState<AllPropertyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFEBF3F5),
     body: AppPropertiesList(),
    );
  }
}

class AppPropertiesList extends ConsumerStatefulWidget {
  const AppPropertiesList({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AppPropertiesListState();
}

class _AppPropertiesListState extends ConsumerState<AppPropertiesList> {
  @override
  Widget build(BuildContext context) {
    final propertyList = ref.watch(getAddedPropertyListProvider);
    return AsyncWidget(
        value: propertyList,
        data: (allproperties) {
          if (allproperties == null || allproperties.isEmpty) {
            return Center(child: Text('No properties found.'));
          }
          return CustomScrollView(slivers: [
            SliverAppBar(
              titleSpacing: 0,
              toolbarHeight: 100,
              backgroundColor: Color(0xFFEBF3F5),
              floating: true,
              snap: true,
              automaticallyImplyLeading: false,
              title: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color(0xFFB9B9B9),
                      ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(12),
                    child: Image.asset(
                      'assets/images/search-normal.png',
                      height: 20,
                      width: 20,
                      color: Color(0xFFB9B9B9),
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  filled: true,
                  fillColor: Colors.white,
                ),
                cursorColor: Color(0xFFB9B9B9),
              ),
            ),
            SliverList.separated(
              itemCount: allproperties.length,
              itemBuilder: (BuildContext context, int index) {
                print(allproperties[index].propertyUniqueId);
                return InkWell(
                  onTap: () {
                    context.navigateTo(Propertydetails2(
                        allproperties[index].propertyUniqueId.toString()));
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
                      padding: EdgeInsets.only(bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 14, vertical: 6),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF75CBCD),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                    child: AutoSizeText(
                                      'PROSPECT',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10.sp),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: PopupMenuButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                            width: 1,
                                            color: const Color(0xFFE2E2E2),
                                          )),
                                      itemBuilder: (context) =>
                                          <PopupMenuEntry<String>>[
                                        PopupMenuItem<String>(
                                            // value: 'Edit',
                                            child: SizedBox(
                                          width: 126,
                                          child: Text(
                                            'Edit Property ',
                                            style: TextStyle(
                                              color: const Color(0xFF164C63),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        )),
                                        PopupMenuItem<String>(
                                            // value: 'Edit',
                                            child: Text(
                                          'Notes',
                                          style: TextStyle(
                                            color: const Color(0xFF164C63),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                        PopupMenuItem<String>(
                                            // value: 'Edit',
                                            child: Text(
                                          'Delete',
                                          style: TextStyle(
                                            color: const Color(0xFF164C63),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                      ],
                                      child: Image.asset(
                                        'assets/images/more-circle.png',
                                        height: 24.h,
                                        width: 24.w,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, bottom: 40, right: 16),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      allproperties[index].propertyType ??
                                          'House',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            color: Color(0xFF494D60),
                                          ),
                                    ),
                                    AutoSizeText(
                                      softWrap: true,
                                      maxLines: 2,
                                      allproperties[index].getFormatedAddress ??
                                          "",
                                      style: TextStyle(
                                        color: const Color(0xFF1A1B28),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 80.w,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AutoSizeText(
                                                'Owner',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall
                                                    ?.copyWith(
                                                      color: Color(0xFF494D60),
                                                    ),
                                              ),
                                              AutoSizeText(
                                                allproperties[index]
                                                        .primaryContactName ??
                                                    "Pare Graham",
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
                                        16.horizontalSpace,
                                        SizedBox(
                                          width: 80.w,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AutoSizeText(
                                                'Agent',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall
                                                    ?.copyWith(
                                                      color: Color(0xFF494D60),
                                                    ),
                                              ),
                                              AutoSizeText(
                                                allproperties[index]
                                                        .agentName ??
                                                    "",
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xFF1A1B28),
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
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
            ),
          ]);
        });
  }
}
