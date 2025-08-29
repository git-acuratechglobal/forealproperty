import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../aggrement_feature/sales_agency_agreement/widgets/gradient_progressbar.dart';

class ManageActivity extends StatefulWidget {
  const ManageActivity({super.key});

  @override
  State<ManageActivity> createState() => _ManageActivityState();
}

class _ManageActivityState extends State<ManageActivity> {
  @override
  Widget build(BuildContext context) {
    final fontStyle = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Document Status",
              style:
                  fontStyle.bodyLarge?.copyWith(color: const Color(0xff164C63)),
            ),
            20.verticalSpace,
            Container(
              padding: EdgeInsets.all(16.sp),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.sp)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/agreement_icon.png'),
                      10.horizontalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contract Agreement",
                            style: fontStyle.bodyLarge,
                          ),
                          Text(
                            "Waiting for Signature",
                            style: fontStyle.bodyMedium?.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff494D60)),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            20.verticalSpace,
            Text(
              "Recipients",
              style:
                  fontStyle.bodyLarge?.copyWith(color: const Color(0xff164C63)),
            ),
            20.verticalSpace,
            const RecipientsCard(
              activity: RecipientsActivity.signAndViewed,
            ),
            20.verticalSpace,
            const RecipientsCard(
              activity: RecipientsActivity.opened,
            ),
            20.verticalSpace,
            const RecipientsCard(
              activity: RecipientsActivity.noActivity,
            ),
            20.verticalSpace,
            Text(
              "Activity",
              style:
                  fontStyle.bodyLarge?.copyWith(color: const Color(0xff164C63)),
            ),
            20.verticalSpace,
            Container(
                padding: EdgeInsets.all(16.sp),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.sp)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/send-2.png",
                          height: 28,
                        ),
                        DashedLine(
                            height: 45.h, color: const Color(0xff75CBCD)),
                        Image.asset(
                          "assets/images/Frame.png",
                          height: 28,
                        ),
                        DashedLine(
                            height: 45.h, color: const Color(0xff75CBCD)),
                        Image.asset(
                          "assets/images/signature-svgrepo-com (3) 1.png",
                          height: 28,
                        ),
                      ],
                    ),
                    16.horizontalSpace,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Document Sent",
                              style: fontStyle.bodyLarge?.copyWith(
                                color: const Color(0xFF164C63),
                              ),
                            ),
                            5.verticalSpace,
                            Text(
                              "Aug 10, 2025",
                              style: fontStyle.bodyMedium?.copyWith(
                                color: const Color(0xFF164C63),
                              ),
                            ),
                          ],
                        ),
                        20.verticalSpace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Document Viewed",
                              style: fontStyle.bodyLarge?.copyWith(
                                color: const Color(0xFF164C63),
                              ),
                            ),
                            5.verticalSpace,
                            Text(
                              "Aug  11, 2025",
                              style: fontStyle.bodyMedium?.copyWith(
                                color: const Color(0xFF164C63),
                              ),
                            ),
                          ],
                        ),
                        20.verticalSpace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Document Signed",
                              style: fontStyle.bodyLarge?.copyWith(
                                color: const Color(0xFF164C63),
                              ),
                            ),
                            5.verticalSpace,
                            Text(
                              "Aug  12, 2025",
                              style: fontStyle.bodyMedium?.copyWith(
                                color: const Color(0xFF164C63),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )),
            60.verticalSpace,
          ],
        ),
      ),
    );
  }
}

class RecipientsCard extends HookConsumerWidget {
  const RecipientsCard({super.key, required this.activity});
  final RecipientsActivity activity;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fontStyle = Theme.of(context).textTheme;
    return Container(
        padding: EdgeInsets.all(16.sp),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.sp)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/person_image.png',
                      height: 50.h,
                    ),
                    10.horizontalSpace,
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (activity == RecipientsActivity.signAndViewed)
                            Text(
                              "Jane Doe",
                              style: fontStyle.bodyLarge,
                            ),
                          if (activity == RecipientsActivity.opened)
                            Text(
                              "John Smith",
                              style: fontStyle.bodyLarge,
                            ),
                          if (activity == RecipientsActivity.noActivity)
                            Text(
                              "Emily Jones",
                              style: fontStyle.bodyLarge,
                            ),
                          Text(
                            "Recipient",
                            style: fontStyle.bodyMedium?.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff494D60)),
                          ),
                        ]),
                  ],
                ),
                if (activity == RecipientsActivity.opened)
                  SizedBox(
                    width: 120,
                    height: 45,
                    child: PrimaryButton(
                        radius: 10, title: "Resend", onClick: () {}),
                  ),
                if (activity == RecipientsActivity.noActivity)
                  SizedBox(
                    width: 120,
                    height: 45,
                    child: SecondaryButton(
                        radius: 10, title: "Sent", onClick: () {}),
                  ),
              ],
            ),
            if (activity == RecipientsActivity.signAndViewed) 20.verticalSpace,
            if (activity != RecipientsActivity.signAndViewed)
              const Divider(
                color: Color(0xffE2E2E2),
              ),
            switch (activity) {
              RecipientsActivity.signAndViewed => Column(
                  children: [
                    _activityChip(
                      label: "Signed",
                      bgColor: const Color(0xffcafbf1),
                      textColor: const Color(0xff437971),
                      icon: Icons.check_circle,
                      date: "Aug 12, 2025, 10:15 AM",
                    ),
                    _activityChip(
                      label: "Viewed",
                      bgColor: const Color(0xffdaeafe),
                      textColor: const Color(0xff6a85b7),
                      icon: Icons.check_circle,
                      date: "Aug 11, 2025, 3:30 PM",
                    ),
                  ],
                ),
              RecipientsActivity.opened => _activityChip(
                  label: "Opened",
                  bgColor: const Color(0xfffbf9c3),
                  textColor: const Color(0xff724309),
                  icon: Icons.mail_outline_outlined,
                  date: "Aug 10, 2025, 9:02 AM",
                ),
              RecipientsActivity.noActivity => const Text("No activity yet"),
            },
          ],
        ));
  }

  Widget _activityChip({
    required String label,
    required Color bgColor,
    required Color textColor,
    required IconData icon,
    required String date,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: bgColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: textColor,
                  size: 20,
                ),
                5.horizontalSpace,
                Text(
                  label,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ),
        Text(date),
      ],
    );
  }
}

enum RecipientsActivity { signAndViewed, opened, noActivity }
