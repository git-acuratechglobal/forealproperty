import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';

import '../../../../../core/utils/appbutton.dart';

class PropertyDetailScreen extends ConsumerStatefulWidget {
  const PropertyDetailScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PropertyDetailScreenState();
}

class _PropertyDetailScreenState extends ConsumerState<PropertyDetailScreen> {
   String? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Property Details'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 128.h,
              width: 327.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFEBF3F5)),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/home3.png',
                        height: 96.h,
                        width: 80.w,
                        fit: BoxFit.cover,
                      )),
                  10.horizontalSpace,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        16.verticalSpace,
                        Text(
                          'House',
                          style: TextStyle(
                              color: const Color(0xFF494D60),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        AutoSizeText('780 Bourke Street, Moore Park, 2021',
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xFF1A1B28),
                                fontWeight: FontWeight.w700)),
                        10.verticalSpace,
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/bed.png',
                              height: 15.h,
                              width: 15.w,
                            ),
                            8.horizontalSpace,
                            Text(
                              "0",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: const Color(0xFF1A1B28),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            12.horizontalSpace,
                            Image.asset(
                              'assets/images/bathtub.png',
                              height: 15.h,
                              width: 15.w,
                            ),
                            8.horizontalSpace,
                            Text(
                              "0",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: const Color(0xFF1A1B28),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            12.horizontalSpace,
                            Image.asset(
                              'assets/images/car.png',
                              height: 15.h,
                              width: 15.w,
                            ),
                            8.horizontalSpace,
                            Text(
                              "0",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: const Color(0xFF1A1B28),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            24.verticalSpace,
            Text(
              'Owner',
              style: TextStyle(
                  color: const Color(0xFF1A1B28),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700),
            ),
            16.verticalSpace,
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                // height: 284.h,
                // width: 327.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFEBF3F5)),
                child: Column(
                  children: [
                    const OwnerCard(
                      title: 'Primary Owner',
                      name: 'Natasha Seip',
                      email: 'natasha_seip85@outlook.com',
                      phone: '0435533572',
                      // onEdit: () {
                      // //  context.navigateTo(AddContactField());
                      //   print('Edit Owner Info');
                      // },
                    ),
                    16.verticalSpace,
                    const Divider(
                      color: Color(0xFFE2E2E2),
                    ),
                    16.verticalSpace,
                    const OwnerCard(
                      title: 'Primary Owner',
                      name: 'Natasha Seip',
                      email: 'natasha_seip85@outlook.com',
                      phone: '0435533572',
                      // onEdit: () {

                      // //  context.navigateTo(AddContactField());
                      //   print('Edit Owner Info');
                      // },
                    ),
                  ],
                )),
            24.verticalSpace,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              // height: 284.h,
              // width: 327.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFEBF3F5)),
              child: OwnerCard(
                title: 'Manager',
                name: 'Natasha Seip',
                email: 'natasha_seip85@outlook.com',
                phone: '0435533572',
                onEdit: () {

                     //   context.navigateTo(AddContactField());
                
                },
              ),
            ),
            24.verticalSpace,
            Text(
              'Tenant Received on',
              style: TextStyle(
                color: const Color(0xFF1A1B28),
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ), 
            12.verticalSpace,
              //  DatePickerDropdown(
              //   validator: (value) => value == null || value.trim().isEmpty
              //       ? 'This field is required'
              //       : null,
              //   selectedDate: selectedDate,
              //   onDateSelected: (date) {
              //     setState(() {
              //       selectedDate = date;
              //       print("Selected Date: $date");
              //     });
              //     // ref
              //     //     .read(openHomeParamsDataProvider.notifier)
              //     //     .update((p) => p.copyWith(eventDate: date));
              //   },
              //   hintText: 'mm-dd-yyyy',
              // ),
              24.verticalSpace,
              PrimaryButton(title: 'Next', onClick: (){     context.navPop();}),
              24.verticalSpace,
          ],
        ),
      ),
    );
  }
}

class OwnerCard extends StatelessWidget {
  final String title;
  final String name;
  final String email;
  final String phone;
  final VoidCallback? onEdit;

  const OwnerCard({
    super.key,
    required this.title,
    required this.name,
    required this.email,
    required this.phone,
     this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: const Color(0xFF164C63),
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            // GestureDetector(
            //   onTap: onEdit,
            //   child: Row(
            //     children: [
            //       Image.asset(
            //         'assets/images/edit-2.png',
            //         height: 16,
            //         width: 16,
            //       ),
            //       8.horizontalSpace,
            //       Text(
            //         'Edit',
            //         style: TextStyle(
            //           color: const Color(0xFF164C63),
            //           fontSize: 12.sp,
            //           fontWeight: FontWeight.w700,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
        26.verticalSpace,
        Text(
          name,
          style: TextStyle(
            color: const Color(0xFF1A1B28),
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          email,
          style: TextStyle(
            color: const Color(0xFF1A1B28),
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          phone,
          style: TextStyle(
            color: const Color(0xFF1A1B28),
            fontSize: 14.sp,
            fontFamily: 'Plus Jakarta Sans',
          ),
        ),
      ],
    );
  }
}
