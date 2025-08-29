import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Image.asset(
          'assets/images/notify.png',
          height: 40.h,
          width: 40.w,
        ));
  }
}
