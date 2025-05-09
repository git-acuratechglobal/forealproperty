import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';


class Addopenhomes extends ConsumerStatefulWidget {
  const Addopenhomes({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddopenhomesState();
}

class _AddopenhomesState extends ConsumerState<Addopenhomes> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            //height: 270.h,
            // width: 327.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(35)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
          
                  children: [
                    50.horizontalSpace,
                    Text(
                      'Add Open Homes',
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
                  'Property',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                12.verticalSpace,
         WidgetDropdown(
              propertyOptions: ['Agent', 'Owner'],
              selectedValue: selectedValue,
              onChanged: (String? value) {
                selectedValue = value;
                print("Selected Property: $value");
              }, hintText: 'Choose Property',
            ),
                8.verticalSpace,
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
              }, hintText: 'Choose Date',
            ),
                16.verticalSpace,
                Text(
                  'Start Time',
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
                  onPressed: () {},
                  child: Text(
                    'Add Now',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
