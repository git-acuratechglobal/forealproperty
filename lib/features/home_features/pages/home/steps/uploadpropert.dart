import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/features/home_features/pages/home/bottomnavbar.dart';


class Uploadpropert extends StatefulWidget {
  const Uploadpropert({super.key});

  @override
  State<Uploadpropert> createState() => _UploadpropertState();
}

class _UploadpropertState extends State<Uploadpropert> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 290.h,
          width: 327.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Center(
                      child: Text(
                        'Upload property to',
                        style: TextStyle(
                          color: const Color(0xFF1A1B28),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){
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
              ),
              24.verticalSpace,
              Divider(
                height: 1,
                color: Color(0xFFE2E2E2),
              ),
              16.verticalSpace,
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 24),
                child: SizedBox(
                    height: 100,
                    width: 200,
                    child: OptionalFeatures(['REA', 'Domain'])),
              ),
              20.verticalSpace,
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 24),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF164C63),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 32),
                    ),
                    onPressed: () {
                     context.navigateTo(HomeScreen());
                    },
                    child: Text('Save and Publish ')),
              )
            ],
          ),
        )
      ],
    );
  }
}
