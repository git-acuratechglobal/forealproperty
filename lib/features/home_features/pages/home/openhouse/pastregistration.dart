import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Pastregistration extends ConsumerStatefulWidget {
  const Pastregistration({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PastregistrationState();
}

class _PastregistrationState extends ConsumerState<Pastregistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBF3F5),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.verticalSpace,
          //  CurrentContainer(),
            16.verticalSpace,
            const PastContainer()
          ],
        ),
      ),
    );
  }
}

class PastContainer extends StatefulWidget {
  const PastContainer({super.key});

  @override
  State<PastContainer> createState() => _PastContainerState();
}

class _PastContainerState extends State<PastContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
    //  height: 200,
      // width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '11TH JAN 25',
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
                )
              ],
            ),
            10.verticalSpace,
            const History(),
            const History(),
            20.verticalSpace,
             Row(
              children: [
                Text(
                  '11TH JAN 25',
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
                )
              ],
            ),
       
          ],
        ),
      ),
    );
  }
}

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.2,
      startChild: Text(
        '9:00AM',
        style: TextStyle(
          color: const Color(0xFF494D60),
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      beforeLineStyle: const LineStyle(thickness: 2, color: Color(0xFFE2E2E2)),
      indicatorStyle:
          IndicatorStyle(width: 10.w, height: 10.h, color: const Color(0xFF164C63)),
      endChild: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            4.verticalSpace,
            Text(
              'Jane Doe',
              style: TextStyle(
                color: const Color(0xFF1A1B28),
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            4.verticalSpace,
            Text(
              'jane.doe@example.com',
              style: TextStyle(
                color: const Color(0xFF494D60),
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            4.verticalSpace,
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'by ',
                    style: TextStyle(
                      color: const Color(0xFF164C63),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'Brues Wills',
                    style: TextStyle(
                      color: const Color(0xFF164C63),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ), 20.verticalSpace
          ],
        ),
      ),
    );
  }
}
