import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/features/auth_feature/pages/login_page/login_screen.dart';

class WelcomeScreen1 extends ConsumerStatefulWidget {
  const WelcomeScreen1({super.key});

  @override
  ConsumerState<WelcomeScreen1> createState() => _WelcomeScreen1State();
}

class _WelcomeScreen1State extends ConsumerState<WelcomeScreen1> {
  final List<Map<String, dynamic>> onBoardingPages = [
    {'image': 'assets/images/onboarding1.png'},
    {'image': 'assets/images/onboarding2.png'},
    {'image': 'assets/images/onboarding3.png'}
  ];

  int currentPageIndex = 0;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              physics: const BouncingScrollPhysics(),
            controller: pageController,
            itemCount: onBoardingPages.length,
            onPageChanged: (index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              final page = onBoardingPages[index];
              return SizedBox.expand(
                child: Image.asset(
                  page['image'],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          Column(
            children: [
              75.verticalSpace,
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 168.89.sp,
                  height: 41.50.sp,
                ),
              ),
              240.verticalSpace,
              AutoSizeText(
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                'Easy way to Manage your Properties',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: Colors.white),
              ),
              10.verticalSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: AutoSizeText(
                  softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
                     child: SizedBox(
                       width: 100,
                       height: 6,
                       child: Row(
                         children: [
                           ListView.separated(
                             physics: const NeverScrollableScrollPhysics(),
                             scrollDirection: Axis.horizontal,
                             shrinkWrap: true,
                             itemCount: onBoardindPages.length,
                             itemBuilder: (BuildContext context, int index) {
                               final bool isSelected = currentPageIndex == index;
                               return AnimatedContainer(
                                   duration: const Duration(microseconds: 500),
                                   height: 6.h,
                                   width: isSelected ? 26.w : 16.w,
                                   decoration: ShapeDecoration(
                                     color: isSelected
                                         ? const Color(0xFF75CBCD)
                                         : const Color(0xFFDEDEDE),
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(20),
                                     ),
                                   ));
                             },
                             separatorBuilder: (BuildContext context, int index) {
                               return 5.horizontalSpace;
                             },
                           ),
                         ],
                       ),
                     ),
                   ),
            ],
          ),
     
         
          Padding(
         padding: EdgeInsets.symmetric( vertical: 40.h),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 35.h),
                  child: SizedBox(
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        if (currentPageIndex == 2) {
                          ref.read(localStorageServiceProvider).setOnBoardingComplete();
                          context.navPush(const LoginScreen());
                        } else {
                          setState(() {
                            currentPageIndex++;
                            pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut);
                          });
                        }
                      },
                      child: Row(
                        //mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Spacer(),
                          Text(
                            'Get Started',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          //72.horizontalSpace,
                          // Spacer(),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                'assets/images/arrow-right.png',
                                width: 16.w,
                                height: 16.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          ),
          43.verticalSpace,
        ],
      ),
    );
  }
}

List<Widget> onBoardindPages = [
  const WelcomeScreen1(),
  const WelcomeScreen1(),
  const WelcomeScreen1()
];
