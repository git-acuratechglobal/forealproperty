import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/core/utils/appbutton.dart';

class ManageAgreement7 extends ConsumerStatefulWidget {
  const ManageAgreement7({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ManageAgreement7State();
}

class _ManageAgreement7State extends ConsumerState<ManageAgreement7> {
  List<Map<String, dynamic>> items = [
    {
      'name': 'Matt Damon',
      'email': 'matt.d@yopmail.com',
      'onPressed': (BuildContext context) {
        //    context.navigateTo(ReportScreen());
      },
      'title': 'AWAITING SIGNATURE',
      'image': 'assets/images/green.png',
      'title2': 'Document sent Successfully Sent on 25/07/2025 · 03:20PM'
    },
    {
      'name': 'Matt Damon',
      'email': 'matt.d@yopmail.com',
      'onPressed': (BuildContext context) {
        //    context.navigateTo(ReportScreen());
      },
      'title': 'AWAITING TO SEND',
      'image': '',
      'title2': ''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFf2f6f7),
        body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              children: [
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: items.length, // use actual item length
                  separatorBuilder: (BuildContext context, int index) {
                    return 16.verticalSpace;
                  },
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 6),
                                decoration: const ShapeDecoration(
                                  color: Color(0xFFFAB53E),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  item['title'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              20.verticalSpace,
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/contract.png',
                                      height: 32.h,
                                      width: 32.w,
                                    ),
                                    10.horizontalSpace,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item['name'],
                                          style: TextStyle(
                                            color: const Color(0xFF1A1B28),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          item['email'],
                                          style: TextStyle(
                                            color: const Color(0xFF494D60),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              16.verticalSpace,
                              if ((item['image'] as String).isNotEmpty)
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Divider(
                                    color: Colors.grey.withAlpha(128),
                                  ),
                                ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  children: [
                                    if ((item['image'] as String).isNotEmpty)
                                      Image.asset(
                                        item['image'],
                                        height: 20.sp,
                                        width: 20.sp,
                                      ),
                                    if ((item['image'] as String).isNotEmpty)
                                      10.horizontalSpace,
                                    Expanded(
                                      child: AutoSizeText(
                                        item['title2'],
                                        maxLines: 3,
                                        style: TextStyle(
                                          color: const Color(0xFF494D60),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              10.verticalSpace,
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
                PrimaryButton(title: 'Preview', onClick: () {}),
                24.verticalSpace
              ],
            )));
  }
}
