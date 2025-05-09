import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/edithomes.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/openhome.dart';
import 'package:foreal_property/features/home_features/pages/home/properties/popupimage.dart';

class CurrentPage extends ConsumerStatefulWidget {
  const CurrentPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CurrentPageState();
}

class _CurrentPageState extends ConsumerState<CurrentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBF3F5),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100, child: Current()),
            16.verticalSpace,
            CurrentContainer(),
            16.verticalSpace,
            CurrentContainer(),
            16.verticalSpace,
            CurrentContainer(),
            16.verticalSpace,
            CurrentContainer(),
            52.verticalSpace,
            60.verticalSpace
          ],
        ),
      ),
    );
  }
}

class Current extends ConsumerStatefulWidget {
  const Current({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CurrentState();
}

class _CurrentState extends ConsumerState<Current> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        titleSpacing: 0,
        toolbarHeight: 100,
        backgroundColor: Color(0xFFEBF3F5),
        floating: true,
        snap: true,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color(0xFFB9B9B9),
                      ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(12),
                    child: Image.asset(
                      'assets/images/search-normal.png',
                      height: 16,
                      width: 16,
                      color: Color(0xFFB9B9B9),
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  filled: true,
                  fillColor: Colors.white,
                ),
                cursorColor: Color(0xFFB9B9B9),
              ),
            ),
            10.horizontalSpace,
            Flexible(
              flex: 0,
              child: Image.asset(
                'assets/images/filter1.png',
                height: 45.h,
                width: 45.w,
              ),
            )
          ],
        ),
      ),
      // SliverList.separated(
      //   itemBuilder: (BuildContext context, int index) {},
      //   separatorBuilder: (BuildContext context, int index) {},
      // )
    ]);
  }
}

class CurrentContainer extends StatefulWidget {
  const CurrentContainer({super.key});

  @override
  State<CurrentContainer> createState() => _CurrentContainerState();
}

class _CurrentContainerState extends State<CurrentContainer> {
  void _showDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Dismiss",
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Align(
              alignment: Alignment.center,
              child: Material(
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Edithomes(),
                ),
              ),
            ),
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeIn;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }
   void _showDialog2(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Dismiss",
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Align(
            alignment: Alignment.center,
            child: Material(
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Popupimage3(),
              ),
            ),
          ),
        );
      },
   
    );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.navigateTo(Openhome());
      },
      child: Container(
       // height: 190.h,
        // width: 328.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              // color: Colors.amber,
              height: 55.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.symmetric(  horizontal: 6,vertical: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF75CBCD),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: AutoSizeText(
                        '13 FEB 2025 · 9:00AM-10:00AM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  //  Spacer(),
      
                  Padding(
                    padding: EdgeInsets.only(right: 18.sp),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        onTap: () {
                          _showDialog(context);
                        },
                        child: Container(
                          width: 60.w,
                          padding:
                              EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                              color: Color(0xFF164C63),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/edit-2.png',
                                height: 16.h,
                                width: 14.w,
                              ),
                              SizedBox(width: 2),
                              Expanded(
                                child: AutoSizeText(
                                  maxLines: 1,
                                  'Edit',
                                  style: TextStyle(
                                    color: Color(0xFF164C63),
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Property Image
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          _showDialog2(context);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/home3.png',
                            height: 72.h,
                            width: 96.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      14.verticalSpace,
                      Text(
                        '\$972,000',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 12.w),
                  // Property Details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bourke Villa',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Residential House',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color(0xFF494D60),
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/location-3.png',
                              height: 16.h,
                              width: 16.w,
                            ),
                            SizedBox(width: 4),
                            Expanded(
                              child: Text(
                                '780 Bourke Street, Moore Park, 2021',
                                style: TextStyle(
                                  color: Color(0xFF1A1B28),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  height: 1.4,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class CurrentContainer extends StatefulWidget {
//   const CurrentContainer({super.key});

//   @override
//   State<CurrentContainer> createState() => _CurrentContainerState();
// }

// class _CurrentContainerState extends State<CurrentContainer> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 154.h,
//       width: 328.w,
//       decoration: BoxDecoration(
//           color: Colors.white, borderRadius: BorderRadius.circular(20)),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: Container(
//                   padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
//                   clipBehavior: Clip.antiAlias,
//                   decoration: ShapeDecoration(
//                     color: const Color(0xFF75CBCD),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(10),
//                         bottomRight: Radius.circular(10),
//                       ),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text(
//                         '13 FEB 2025 · 9:00AM-10:00AM',
//                         textAlign: TextAlign.right,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 12.sp,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               20.horizontalSpace,
//               Container(
//                 width: 70.w,
//                 height: 28.h,
//                 decoration: ShapeDecoration(
//                   color: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     side: BorderSide(
//                       width: 1,
//                       color: const Color(0xFF164C63),
//                     ),
//                     borderRadius: BorderRadius.circular(48),
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       'assets/images/edit-2.png',
//                       height: 16.h,
//                       width: 16.w,
//                     ),
//                     8.horizontalSpace,
//                     Text(
//                       'Edit',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: const Color(0xFF164C63),
//                         fontSize: 12.sp,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//           18.verticalSpace,
//           Padding(
//             padding:  EdgeInsets.only(left: 5),
//             child: Row(
//               children: [
//                 Column(
//                   children: [
//                     Image.asset(
//                       'assets/images/home3.png',
//                       height: 64.h,
//                       width: 80.w,
//                     ),
//                     14.verticalSpace,
//                     Text(
//                       '\$972,000',
//                       style: Theme.of(context).textTheme.bodyLarge,
//                     )
//                   ],
//                 ),
//                 Padding(
//                   padding:  EdgeInsets.only(left: 16, ),
//                   child: Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Bourke Villa',
//                           style: Theme.of(context).textTheme.bodyLarge,
//                         ),
//                         4.verticalSpace,
//                         Text(
//                           'Residential House ',
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodySmall
//                               ?.copyWith(color: Color(0xFF494D60)),
//                         ),
//                         8.verticalSpace,
//                         Row(
//                           children: [
//                             Image.asset(
//                               'assets/images/location-3.png',
//                               height: 16.h,
//                               width: 16.w,
//                             ),
//                             4.horizontalSpace,
//                             Text(
//                               '780 Bourke Street, Moore Park, 2021',
//                               style: TextStyle(

//                                 color: const Color(0xFF1A1B28),
//                                 fontSize: 12.sp,
//                                 fontWeight: FontWeight.w500,
//                                height: 1.30,
//                                 letterSpacing: -0.24,
//                               ),
//                                 maxLines: 2,
//                                 overflow: TextOverflow.ellipsis,
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
