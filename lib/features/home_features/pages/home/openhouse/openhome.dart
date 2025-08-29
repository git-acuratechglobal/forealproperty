import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/s3_sigleton/s3_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/registration.dart';
import 'package:foreal_property/features/home_features/providers/get_open_home_details.dart';
import 'package:intl/intl.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class Openhome extends ConsumerStatefulWidget {
  final String openHomeUniqueId;
  const Openhome(this.openHomeUniqueId, {super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OpenhomeState();
}

class _OpenhomeState extends ConsumerState<Openhome> {
  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //     ref.read(openHomeDetailListProvider.).getDetail(widget.openHomeUniqueId);
  //     print(widget.openHomeUniqueId);
  //   });
  // }
  bool _isFinished = false;
  @override
  Widget build(BuildContext context) {
    final openhomedetail = ref.watch(
        openHomeDetailListProvider(openHomeUniqueId: widget.openHomeUniqueId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Open Homes '),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24, bottom: 4, left: 16),
            child: InkWell(
              onTap: () {
                context.push(CurrentRegistration(
                  openHomeUniqueId: widget.openHomeUniqueId,
                ));
              },
              child: CircleAvatar(
                radius: 18, // Adjust size as needed
                backgroundColor:
                    Colors.grey.shade200, // Optional background color
                child: Image.asset(
                  color: Colors.black,
                  "assets/images/add2.png",
                  height: 16.h,
                  width: 16.w,
                ),
              ),
            ),
          ),

          // Padding(
          //   padding: EdgeInsets.only(right: 10.sp, bottom: 10),
          //   child: Align(
          //     alignment: Alignment.bottomRight,
          //     child:
          //     PopupMenuButton(
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10),
          //         side: BorderSide(
          //           width: 1,
          //           color: const Color(0xFFE2E2E2),
          //         ),
          //       ),
          //       itemBuilder: (context) => <PopupMenuEntry<String>>[
          //         PopupMenuItem<String>(
          //           child: InkWell(
          //             onTap: () async {
          //               Navigator.pop(context);
          //               print("Popup tapped. Showing dialog...");

          //               final confirm = await showCupertinoDialog<bool>(
          //                 context: context,
          //                 builder: (ctx) => CupertinoAlertDialog(
          //                   title: const Text("Delete Open Home"),
          //                   content: const Text(
          //                       "Are you sure you want to delete this open home?"),
          //                   actions: [
          //                     CupertinoDialogAction(
          //                       child: const Text(
          //                         "Cancel",
          //                         style: TextStyle(color: Colors.black),
          //                       ),
          //                       onPressed: () {
          //                         print("Delete canceled");
          //                         Navigator.pop(ctx, false);
          //                       },
          //                     ),
          //                     CupertinoDialogAction(
          //                       isDestructiveAction: true,
          //                       child: const Text("Delete"),
          //                       onPressed: () {
          //                         print("Delete confirmed");
          //                         Navigator.pop(ctx, true);
          //                       },
          //                     ),
          //                   ],
          //                 ),
          //               );

          //               print("Dialog closed. Confirm value: $confirm");

          //               if (confirm == true) {
          //                 print("Proceeding with deletion...");

          //                 await ref
          //                     .read(propertyNotifierProvider.notifier)
          //                     .deleteOpenHomes(widget.openHomeUniqueId);

          //                 ref.invalidate(openHomeDetailListProvider(
          //                   openHomeUniqueId: widget.openHomeUniqueId,
          //                 ));

          //                 if (context.mounted) {
          //                   ScaffoldMessenger.of(context).showSnackBar(
          //                     SnackBar(
          //                         content:
          //                             Text("OpenHome Deleted successfully")),
          //                   );
          //                   Navigator.pop(context);
          //                 }
          //               }
          //             },
          //             child: Text(
          //               'Delete',
          //               style: TextStyle(
          //                 color: const Color(0xFF164C63),
          //                 fontSize: 12.sp,
          //                 fontWeight: FontWeight.w500,
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //       child: Image.asset(
          //         'assets/images/more-circle.png',
          //         height: 24.h,
          //         width: 24.w,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
      body: AsyncWidget(
          onRetry: () {
            ref.invalidate(openHomeDetailListProvider);
          },
          value: openhomedetail,
          data: (openhomedata) {
            // final now = DateTime.now();
            // final eventStart = DateTime.parse(
            //     openhomedata.startTime!); // example: 2025-07-09 10:00:00
            // final eventEnd = DateTime.parse(
            //     openhomedata.endTime!); // example: 2025-07-09 12:00:00

            // final isWithinEventTime =
            //     now.isAfter(eventStart) && now.isBefore(eventEnd);
            // final isEventFinished = now.isAfter(eventEnd);

            final registrations =
                openhomedata.addOpenHomeRegistrationModel ?? [];
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  24.verticalSpace,
                  SizedBox(
                    height: 220.h,
                    width: 340.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: (openhomedata.propertyPic != null &&
                              openhomedata.propertyPic!.isNotEmpty)
                          ? S3ImageDisplayWidget(
                              imagePath: openhomedata.propertyPic!,
                            )
                          : Image.asset(
                              'assets/images/placeholder.png',
                              height: 72.h,
                              width: 72.w,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  20.verticalSpace,
                  Row(
                    children: [
                      Text(
                        "${openhomedata.heading}",
                        style: TextStyle(
                          color: const Color(0xFF164C63),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      // Spacer(),
                      // Image.asset(
                      //   'assets/images/edit-2.png',
                      //   color: Color(0xFF292D32),
                      //   height: 24.h,
                      //   width: 24.h,
                      // )
                    ],
                  ),
                  Text(
                    "\$${openhomedata.propertyPrice}",
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
                          "${openhomedata.property}",
                          style: TextStyle(
                            color: const Color(0xFF1A1B28),
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
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                                openhomedata.eventDate != null
                                    ? DateFormat('MMM dd yyyy').format(
                                        DateTime.parse(openhomedata.eventDate!))
                                    : "",
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
                                openhomedata.startTime != null &&
                                        openhomedata.endTime != null
                                    ? "${DateFormat('hh:mm a').format(DateTime.parse(openhomedata.startTime!))} - ${DateFormat('hh:mm a').format(DateTime.parse(openhomedata.endTime!))}"
                                    : "",
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
                  (openhomedata.eventDate != null &&
                          DateTime.parse(openhomedata.eventDate!)
                              .isAfter(DateTime.now()))
                      ? ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: registrations.length,
                          itemBuilder: (BuildContext context, int index) {
                            final registration = registrations[index];

                            BorderRadius borderRadius = BorderRadius.zero;
                            if (index == 0) {
                              borderRadius = BorderRadius.only(
                                topLeft: Radius.circular(16.r),
                                topRight: Radius.circular(16.r),
                              );
                            } else if (index == registrations.length - 1) {
                              borderRadius = BorderRadius.only(
                                bottomLeft: Radius.circular(16.r),
                                bottomRight: Radius.circular(16.r),
                              );
                            }

                            return InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 22.h, horizontal: 16.w),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: borderRadius,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withValues(alpha: 0.05),
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 25.r,
                                      backgroundImage: const AssetImage(
                                        'assets/images/profile1.png',
                                      ),
                                    ),
                                    16.horizontalSpace,
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            registration.firstName ?? "",
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w700,
                                              color: const Color(0xFF1A1B28),
                                            ),
                                          ),
                                          4.verticalSpace,
                                          registration.email?.isNotEmpty == true
                                              ? InkWell(
                                                  onTap: () async {
                                                    final email =
                                                        registration.email ??
                                                            '';
                                                    final Uri uri = Uri(
                                                      scheme: 'mailto',
                                                      path: email,
                                                      query: Uri.encodeFull(
                                                        'subject=Property Inquiry&body=Hello, I\'m interested in your property.',
                                                      ),
                                                    );
                                                    try {
                                                      await launchUrl(uri);
                                                    } catch (e) {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                            content: Text(
                                                                'Could not open email: $e')),
                                                      );
                                                    }
                                                  },
                                                  child: Text(
                                                    registration.email!,
                                                    style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 15.sp,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                                  ),
                                                )
                                              : const SizedBox.shrink(),
                                          // registration.email?.isNotEmpty == true
                                          //     ? Text(
                                          //         registration.email!,
                                          //         style: Theme.of(context)
                                          //             .textTheme
                                          //             .bodySmall
                                          //             ?.copyWith(
                                          //               color:
                                          //                   const Color(0xFF494D60),
                                          //             ),
                                          //       )
                                          //     : const SizedBox.shrink(),
                                          4.verticalSpace,

                                          InkWell(
                                            onTap: () async {
                                              print('tap');
                                              final phone =
                                                  registration.phone ?? '';
                                              if (phone.isNotEmpty) {
                                                final Uri uri =
                                                    Uri.parse("tel:$phone");
                                                try {
                                                  await launchUrl(uri);
                                                } catch (e) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                        content: Text(
                                                            'Could not launch dialer: $e')),
                                                  );
                                                }
                                              }
                                            },
                                            child: Text(
                                              "${registration.phone ?? ""}",
                                              style: TextStyle(
                                                color: Colors
                                                    .blue, // To indicate it's clickable
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w600,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ),
                                          // Text(
                                          //   registration.phone ?? "",
                                          //   style: Theme.of(context)
                                          //       .textTheme
                                          //       .bodySmall
                                          //       ?.copyWith(
                                          //         color: const Color(0xFF494D60),
                                          //       ),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const Divider(
                              color: Color(0xFFE2E2E2),
                              thickness: 1,
                              height: 1,
                            );
                          },
                        )
                      : Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: registrations.length,
                              itemBuilder: (context, index) {
                                final registration = registrations[index];
                                final currentDate = registration.createdOn !=
                                        null
                                    ? DateFormat('dd MMM yyyy').format(
                                        DateTime.parse(registration.createdOn!))
                                    : '';

                                // check if date is same as previous
                                final isFirstOfDate = index == 0 ||
                                    (registrations[index - 1].createdOn !=
                                            null &&
                                        DateFormat('dd MMM yyyy').format(
                                                DateTime.parse(
                                                    registrations[index - 1]
                                                        .createdOn!)) !=
                                            currentDate);

                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (isFirstOfDate) // Show only if it's the first occurrence of that date
                                        Row(
                                          children: [
                                            Text(
                                              currentDate,
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
                                      if (isFirstOfDate) 10.verticalSpace,
                                      TimelineTile(
                                        alignment: TimelineAlign.manual,
                                        lineXY: 0.2,
                                        beforeLineStyle: const LineStyle(
                                          thickness: 2,
                                          color: Color(0xFFE2E2E2),
                                        ),
                                        indicatorStyle: IndicatorStyle(
                                          width: 10.w,
                                          height: 10.h,
                                          color: const Color(0xFF164C63),
                                        ),
                                        startChild: Text(
                                          registration.createdOn != null
                                              ? DateFormat('h:mm a').format(
                                                  DateTime.parse(
                                                      registration.createdOn!))
                                              : '',
                                          style: TextStyle(
                                            color: const Color(0xFF494D60),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        endChild: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              4.verticalSpace,
                                              Text(
                                                registration.firstName ?? '',
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xFF1A1B28),
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              4.verticalSpace,
                                              InkWell(
                                                onTap: () async {
                                                  print('tap');
                                                  final phone =
                                                      registration.phone ?? '';
                                                  if (phone.isNotEmpty) {
                                                    final Uri uri =
                                                        Uri.parse("tel:$phone");
                                                    try {
                                                      await launchUrl(uri);
                                                    } catch (e) {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                            content: Text(
                                                                'Could not launch dialer: $e')),
                                                      );
                                                    }
                                                  }
                                                },
                                                child: Text(
                                                  "${registration.phone ?? ""}",
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.w600,
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ),
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
                          ),
                        ),
                  16.verticalSpace,
                  // Registration Button (Only between start and end time, and not finished)
//                   (isWithinEventTime && !_isFinished)
//                       ? ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             side: BorderSide(color: Color(0xFF164C63)),
//                           ),
//                           onPressed: () {
//                             context.navigateTo(CurrentRegistration(
//                               openHomeUniqueId: widget.openHomeUniqueId,
//                             ));
//                           },
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Image.asset(
//                                 'assets/images/add2.png',
//                                 height: 16.h,
//                                 width: 16.w,
//                               ),
//                               13.horizontalSpace,
//                               Text(
//                                 'Registration',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .titleLarge
//                                     ?.copyWith(color: Color(0xFF164C63)),
//                               ),
//                             ],
//                           ),
//                         )
//                       : SizedBox.shrink(),

//                   10.verticalSpace,

// // Finish Button (Only if event is still ongoing)
//                   (isWithinEventTime)
//                       ? ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Color(0xFF164C63),
//                           ),
//                           onPressed: () {
//                             setState(() {
//                               _isFinished =
//                                   true; // Hide the registration button
//                             });
//                           },
//                           child: Text('Finish'),
//                         )
//                       : SizedBox.shrink(),

                  (openhomedata.eventDate != null &&
                          DateTime.parse(openhomedata.eventDate!)
                              .isAfter(DateTime.now()) &&
                          !_isFinished)
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: const BorderSide(color: Color(0xFF164C63))),
                          onPressed: () {
                            context.push(CurrentRegistration(
                                openHomeUniqueId: widget.openHomeUniqueId));
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
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(color: const Color(0xFF164C63)),
                              ),
                            ],
                          ),
                        )
                      : const SizedBox.shrink(),
                  10.verticalSpace,
                  (openhomedata.eventDate != null &&
                          DateTime.parse(openhomedata.eventDate!)
                              .isAfter(DateTime.now()))
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF164C63),
                          ),
                          onPressed: () {
                            setState(() {
                              _isFinished =
                                  true; // Hide the registration button
                            });
                          },
                          child: const Text('Finish'))
                      : const SizedBox.shrink(),
                  45.verticalSpace,
                ],
              ),
            );
          }),
    );
  }
}
