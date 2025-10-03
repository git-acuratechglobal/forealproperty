import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/features/aggrement_feature/manage_agreement_list_tab.dart';
import 'package:foreal_property/features/home_features/pages/home/contact/contact.dart';

import 'package:foreal_property/features/home_features/pages/home/notification.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/house.dart';
import 'package:foreal_property/features/inspection_feature/inspection.dart';
import 'package:go_router/go_router.dart';

class Services extends ConsumerStatefulWidget {
  const Services({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ServicesState();
}

class _ServicesState extends ConsumerState<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Service',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
              )),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: notification(),
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xFFEBF3F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Stack(children: [
                Image.asset('assets/images/serviceimage.png'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brings Property \nBusiness World\nto Reality',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      26.verticalSpace,
                      Row(
                        children: [
                          Text(
                            'Explore More',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ServiceContainer(
                    height: 102.h,
                    width: 158.w,
                    color: Colors.white,
                    imagePath: 'assets/images/inspection.png',
                    imageheight: 37.h,
                    imagewidth: 79.w,
                    title: 'Inspection',
                    onTap: () {
                     // context.navPush(const InspectionScreen());
                     context.pushNamed('inspection');
                    },
                  ),
                ),
                ServiceContainer(
                  height: 102.h,
                  width: 158.w,
                  color: Colors.white,
                  imagePath: 'assets/images/openhome.png',
                  imageheight: 37.h,
                  imagewidth: 79.w,
                  title: 'Open Homes',
                  onTap: () {
                    context.navPush(const House());
                  },
                ),
              ],
            ),
            15.verticalSpace,
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 20),
                  child: ServiceContainer(
                    height: 102.h,
                    width: 99.w,
                    color: Colors.white,
                    imagePath: 'assets/images/contact.png',
                    imageheight: 37.h,
                    imagewidth: 79.w,
                    title: 'Contacts',
                    onTap: () {
                      context.navPush(const Contact());
                    },
                  ),
                ),
                ServiceContainer(
                  height: 102.h,
                  width: 99.w,
                  color: Colors.white,
                  imagePath: 'assets/images/jobs.png',
                  imageheight: 37.h,
                  imagewidth: 79.w,
                  title: 'Jobs',
                  onTap: () {
            
                  },
                ),
                20.horizontalSpace,
                ServiceContainer(
                  height: 102.h,
                  width: 99.w,
                  color: Colors.white,
                  imagePath: 'assets/images/aggrement.png',
                  imageheight: 37.h,
                  imagewidth: 79.w,
                  title: 'Aggrement',
                  onTap: () {
                    // context.navPush(const ManageAgreementListTab());
                    context.pushNamed('management-agreement');
                  },
                ),
              ],
            ),
            15.verticalSpace,
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ServiceContainer(
                    height: 102.h,
                    width: 158.w,
                    color: Colors.white,
                    imagePath: 'assets/images/maintain.png',
                    imageheight: 37.h,
                    imagewidth: 79.w,
                    title: 'Maintenance',
                    onTap: () {},
                  ),
                ),
                ServiceContainer(
                    height: 102.h,
                    width: 158.w,
                    color: Colors.white,
                    imagePath: 'assets/images/maintain.png',
                    imageheight: 37.h,
                    imagewidth: 79.w,
                    title: 'Maintenance',
                    onTap: () {},
                  ),
                
              ],
            ),
            150.verticalSpace,
          ],
        ),
      ),
    );
  }
}
