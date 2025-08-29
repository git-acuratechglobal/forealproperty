import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      backgroundColor: const Color(0xFFEBF3F5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                height: 92.h,
                width: 327.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.white,
                      Colors.white,
                      Color(0xFFEBF3F5),
                      Color(0xFFEBF3F5),
                    ],
                  ),
                  border: Border.all(
                    color: const Color(0xFF75CBCD), // ✅ border color here
                    width: 1.5,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                        height: 48.h,
                        width: 48.w,
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
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF494D60),
                            ),
                          ),
                          AutoSizeText(
                            '780 Bourke Street, Moore Park, 2021',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16.sp,
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
              24.verticalSpace,
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  // final registration = registrations[index];
                  //  final currentDate = registration.createdOn !=
                  //    null
                  //   ? DateFormat('dd MMM yyyy').format(
                  //       DateTime.parse(registration.createdOn!))
                  //   : '';

                  // check if date is same as previous
                  // final isFirstOfDate = index == 0 ||
                  //    (registrations[index - 1].createdOn !=
                  //            null &&
                  //  DateFormat('dd MMM yyyy').format(
                  //           DateTime.parse(
                  //              // registrations[index - 1]
                  //              //     .createdOn!)) !=
                  //      // currentDate
                  //  );

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //    if (isFirstOfDate) // Show only if it's the first occurrence of that date
                        Row(
                          children: [
                            Text(
                              //       currentDate,
                              '11th Jan 25',
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
                        // if (isFirstOfDate)
                        //4.verticalSpace,
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
                            //registration.createdOn != null
                            // ? DateFormat('h:mm a').format(
                            //     DateTime.parse(
                            //         registration.createdOn!))
                            // :
                            '9:00AM',
                            style: TextStyle(
                              color: const Color(0xFF494D60),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          endChild: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                4.verticalSpace,
                                Text(
                                  // registration.firstName ?? '',
                                  "Jane Doe",
                                  style: TextStyle(
                                    color: const Color(0xFF1A1B28),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                4.verticalSpace,
                                Container(
                                  height: 56,
                                 //s width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: const Color.fromARGB(255, 198, 193, 193), // Border color
                                      width: 1, // Border thickness
                                    ),
                                  ),
                                  child: const Center(child: Text('Inspetion Opened')),
                                ),

                                // InkWell(
                                //   onTap: () async {
                                //     print('tap');
                                //     final phone = "fghfgh";
                                //     //    registration.phone ?? '';
                                //     if (phone.isNotEmpty) {
                                //       final Uri uri = Uri.parse("tel:$phone");
                                //       try {
                                //         await launchUrl(uri);
                                //       } catch (e) {
                                //         ScaffoldMessenger.of(context)
                                //             .showSnackBar(
                                //           SnackBar(
                                //               content: Text(
                                //                   'Could not launch dialer: $e')),
                                //         );
                                //       }
                                //     }
                                //   },
                                //   child: Text(
                                //     //   "${registration.phone ?? ""}",
                                //     "0476886868",
                                //     style: TextStyle(
                                //       color: Colors.blue,
                                //       fontSize: 15.sp,
                                //       fontWeight: FontWeight.w600,
                                //       decoration: TextDecoration.underline,
                                //     ),
                                //   ),
                                // ),
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
      ),
    );
  }
}
