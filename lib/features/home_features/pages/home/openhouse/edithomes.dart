import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';


class Edithomes extends ConsumerStatefulWidget {
  const Edithomes({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EdithomesState();
}

class _EdithomesState extends ConsumerState<Edithomes> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
         // height: 450.h,
          // width: 327.w,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(35)),
          child: SingleChildScrollView(
                 padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
               
                  children: [
                    50.horizontalSpace,
                    Text(
                      'Edit Open Homes',
                      style: TextStyle(
                        color: const Color(0xFF1A1B28),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                  //  20.horizontalSpace,
                    InkWell(
                      onTap: () {
                        context.pop();
                      },
                      child: Image.asset(
                        'assets/images/exit.png',
                        height: 15.h,
                        width: 15.w,
                      ),
                    )
                  ],
                ),
                24.verticalSpace,
                Divider(
                  height: 1,
                  color: Color(0xFFE2E2E2),
                ),
                24.verticalSpace,
                Text(
                  'Choose Property',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                12.verticalSpace,
            
                WidgetDropdown(
              propertyOptions: ['Agent', 'Owner'],
              selectedValue: selectedValue,
              onChanged: (String? value) {
                selectedValue = value;
                print("Selected Property: $value");
              }, hintText: 'Bourke Villa',
            ),
                8.verticalSpace,
                Container(
              //    height: 114,
                  decoration: BoxDecoration(
                      color: Color(0xFFEBF3F5),
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/home3.png',
                              height: 64,
                              width: 80,
                            ),
                            12.horizontalSpace,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bourke Villa',
                                  style: TextStyle(
                                    color: const Color(0xFF1A1B28),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'Residential House ',
                                  style: TextStyle(
                                    color: const Color(0xFF494D60),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            
                            Expanded(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Image.asset('assets/images/ic_exit.png', height: 24, width: 24,)),
                            )
                          ],
                        ),
                        6.verticalSpace,
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
                      ],
                    ),
                  ),
                ),
                16.verticalSpace,
                Text(
                  'Date',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                12.verticalSpace,
                    WidgetDropdown(
              propertyOptions: ['Agent', 'Owner'],
              selectedValue: selectedValue,
              onChanged: (String? value) {
                selectedValue = value;
                print("Selected Property: $value");
              }, hintText: '28/03/2025',
            ),
            
                16.verticalSpace,
                Text(
                  'Time',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                12.verticalSpace,
                 WidgetDropdown(
              propertyOptions: ['Agent', 'Owner'],
              selectedValue: selectedValue,
              onChanged: (String? value) {
                selectedValue = value;
                print("Selected Property: $value");
              }, hintText: '10:00 AM',
            ),
                
                16.verticalSpace,
                Text(
                  'End Time',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                12.verticalSpace,
                 WidgetDropdown(
              propertyOptions: ['Agent', 'Owner'],
              selectedValue: selectedValue,
              onChanged: (String? value) {
                selectedValue = value;
                print("Selected Property: $value");
              }, hintText: 'Choose Time',
            ),
           
                24.verticalSpace,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF164C63),
                      foregroundColor: Color(0xFF164C63),
                      side: BorderSide(
                        color: Color(0xFF164C63),
                      )),
                  onPressed: () {
                    // context.navigateTo(Verifyemail());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/add2.png',
                        height: 16.h,
                        width: 16.w,
                      ),
                      //  13.horizontalSpace,
                      Text(
                        'Save Changes',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
