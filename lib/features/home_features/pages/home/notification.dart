import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/auth_feature/pages/sign_up_page/updateprofile.dart';


class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: (){},
            child: Image.asset(
              'assets/images/notify.png',
              height: 44.h,
              width: 44.w,
            )),
        12.horizontalSpace,
        InkWell(
            onTap: () {
            context.navigateTo(Updateprofile());
            },
            child: Image.asset(
              'assets/images/profile1.png',
              height: 44.h,
              width: 44.w,
            )),
            
      ],
    );
  }
}
