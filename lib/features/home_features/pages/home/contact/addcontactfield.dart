import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';

class AddContactField extends StatefulWidget {
  const AddContactField({super.key});

  @override
  State<AddContactField> createState() => _AddContactFieldState();
}

class _AddContactFieldState extends State<AddContactField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(35)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    80.horizontalSpace,
                    Text(
                      'Add Contacts',
                      style: TextStyle(
                        color: const Color(0xFF1A1B28),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    //Spacer(),
                    55.horizontalSpace,
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
                16.verticalSpace,
                Text(
                  'Full Name',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                12.verticalSpace,
                CommonTextField(label: 'Full Name'),
                16.verticalSpace,
                Text(
                  'Email',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                12.verticalSpace,
                CommonTextField(label: 'Email'),
                16.verticalSpace,
                Text(
                  'Phone',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                12.verticalSpace,
                CommonTextField(label: 'Phone'),
                16.verticalSpace,
                Text(
                  'Property Address',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                12.verticalSpace,
                CommonTextField(label: 'Property Address'),
                24.verticalSpace,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF164C63),
                      foregroundColor: Color(0xFF164C63),
                      side: BorderSide(
                        color: Color(0xFF164C63),
                      )),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'Add Now',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
