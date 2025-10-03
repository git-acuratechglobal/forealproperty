import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import '../../model/inspection_list_model.dart';
import '../../pages/property_inspection_details/edit_report.dart';
import '../../pages/property_inspection_details/inspection_details_tab.dart';

class InspectionCardWidget extends StatelessWidget {
  const InspectionCardWidget({super.key, required this.obj});
  final InspectionListModel obj;
  @override
  Widget build(BuildContext context) {
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
                    color: obj.sInspectionType == "Routine"
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
                    obj.sInspectionType ?? "",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
              Text(
                'Share',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF164C63),
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
                        obj.propertyAddress ?? "",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Assigned',
                    style: TextStyle(
                      color: const Color(0xFF494D60),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 0.4.sw,
                    child: Text(
                      obj.sAssignedAgent ?? "",
                      style: TextStyle(
                        color: const Color(0xFF1A1B28),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Key',
                    style: TextStyle(
                      color: const Color(0xFF494D60),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '147',
                    style: TextStyle(
                      color: const Color(0xFF1A1B28),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Type',
                    style: TextStyle(
                      color: const Color(0xFF494D60),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    obj.sInspectionType ?? "",
                    style: TextStyle(
                      color: const Color(0xFF1A1B28),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              )
            ],
          ),
          16.verticalSpace,
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Scheduled',
                      style: TextStyle(
                        color: const Color(0xFF494D60),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      obj.scheduledFormattedDate,
                      style: TextStyle(
                        color: const Color(0xFF75CBCD),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 76.w,
                  height: 32.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF164C63),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8), // adjust radius if needed
                      ),
                    ),
                    onPressed: () {
                      context.navPush(InspectionDetailsTab(
                        inspectionId: obj.inspectionId ?? 0,
                        inspectionUniqueId: obj.inspectionUniqueId ?? "",
                      ));
                    },
                    child: AutoSizeText(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      "Start",
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
