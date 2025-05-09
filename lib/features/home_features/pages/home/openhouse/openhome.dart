import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/registration.dart';


class Openhome extends ConsumerStatefulWidget {
  const Openhome({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OpenhomeState();
}

class _OpenhomeState extends ConsumerState<Openhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: () {
              context.pop();
            },
            child: Image.asset(
              'assets/images/arrow-left.png',
            ),
          ),
        ),
        title: Text(
          'Open Homes',
          style: TextStyle(
            color: const Color(0xFF1A1B28),
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Image.asset(
              'assets/images/edit-2.png',
              color: Color(0xFF292D32),
              height: 24.h,
              width: 24.h,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            24.verticalSpace,
            Image.asset('assets/images/openhomeimage.png'),
            20.verticalSpace,
            Row(
              children: [
                Text(
                  'APPARTMENT',
                  style: TextStyle(
                    color: const Color(0xFF164C63),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Image.asset(
                  'assets/images/edit-2.png',
                  color: Color(0xFF292D32),
                  height: 24.h,
                  width: 24.h,
                )
              ],
            ),
            Text(
              '\$973,000',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/location-3.png',
                  height: 20.h,
                  width: 20.w,
                ),
                4.horizontalSpace,
                Expanded(
                  child: AutoSizeText(
                    softWrap: true,
                    'Albany Highway 1382, Cannington, 6107',
                    style: TextStyle(
                      color: Color(0xFF1A1B28),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      height: 1.4,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            24.verticalSpace,
            Container(
              // width: 328,
             // height: 86.h,
              decoration: ShapeDecoration(
                color: const Color(0xFFEBF3F5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DATE',
                          style: TextStyle(
                            color: const Color(0xFF494D60),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        AutoSizeText(
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          '19th Feb 2025',
                          style: TextStyle(
                            color: const Color(0xFF1A1B28),
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                        
                          ),
                        ),
                      ],
                    ),
                    24.horizontalSpace,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Time',
                          style: TextStyle(
                            color: const Color(0xFF494D60),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        AutoSizeText(
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          '10:00AM-10:45AM',
                          style: TextStyle(
                            color: const Color(0xFF1A1B28),
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                            
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            24.verticalSpace,
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.white,
            //       // foregroundColor: Color(0xFF164C63),
            //       side: BorderSide(
            //         color: Color(0xFF164C63),
            //       )),
            //   onPressed: () {
            //     // context.navigateTo(Verifyemail());
            //   },
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Image.asset(
            //         'assets/images/add2.png',
            //         height: 16.h,
            //         width: 16.w,
            //       ),
            //       13.horizontalSpace,
            //       Text(
            //         'Register Attendees',
            //         style: Theme.of(context).textTheme.titleLarge?.copyWith(
            //               color: Color(0xFF164C63),
            //             ),
            //       ),
            //     ],
            //   ),
            // ),
            16.verticalSpace,
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  // foregroundColor: Color(0xFF164C63),
                  side: BorderSide(
                    color: Color(0xFF164C63),
                  )),
              onPressed: () {
                context.navigateTo(CurrentRegistration());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/add2.png',
                    height: 16.h,
                    width: 16.w,
                  ),
                  13.horizontalSpace,
                  Text(
                    'Registration',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Color(0xFF164C63),
                        ),
                  ),
                ],
              ),
            ),
            16.verticalSpace,
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF164C63),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                //  context.navigateTo(Verifyemail());
              },
              child: Text(
                'Next',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
