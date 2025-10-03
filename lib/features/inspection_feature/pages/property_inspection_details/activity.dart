import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../../core/widgets/asyncwidget.dart';
import '../../provider/inspection_details_provider.dart';

class ActivityScreen extends ConsumerStatefulWidget {
  const ActivityScreen({super.key, required this.inspectionId});
  final int inspectionId;
  @override
  ConsumerState<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends ConsumerState<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBF3F5),
      body: AsyncWidget(
        value: ref.watch(
          getInspectionActivityProvider(inspectionId: widget.inspectionId),
        ),
        data: (data) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  24.verticalSpace,
                  ListView.builder(
                    reverse: true,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final activity = data[index];

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  activity.formateDate,
                                  style: TextStyle(
                                    color: const Color(0xFF164C63),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                8.horizontalSpace,
                                const Expanded(
                                  child: Divider(
                                    thickness: 1,
                                    color: Color(0xFF164C63),
                                  ),
                                ),
                              ],
                            ),
                            TimelineTile(
                              alignment: TimelineAlign.manual,
                              lineXY: 0.2,
                              beforeLineStyle: const LineStyle(
                                thickness: 2,
                                color: Color.fromARGB(255, 188, 188, 188),
                              ),
                              indicatorStyle: IndicatorStyle(
                                width: 10.w,
                                height: 10.h,
                                color: const Color(0xFF164C63),
                              ),
                              startChild: Text(
                                activity.formateTime,
                                style: TextStyle(
                                  color: const Color(0xFF494D60),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              endChild: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    4.verticalSpace,
                                    Text(
                                      activity.userName ?? "",
                                      style: TextStyle(
                                        color: const Color(0xFF1A1B28),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    4.verticalSpace,
                                    Container(
                                      height: 56,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                            255,
                                            198,
                                            193,
                                            193,
                                          ), // Border color
                                          width: 1, // Border thickness
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(activity.description ?? ""),
                                      ),
                                    ),
                                    20.verticalSpace,
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
