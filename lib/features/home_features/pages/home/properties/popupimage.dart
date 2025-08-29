import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Popupimage extends StatefulWidget {
  const Popupimage({super.key});

  @override
  State<Popupimage> createState() => _PopupimageState();
}

class _PopupimageState extends State<Popupimage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 600.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage('assets/images/properties.png'),
            fit: BoxFit.cover,
          )),
    );
  }
}



class Popupimage2 extends StatefulWidget {
  const Popupimage2({super.key});

  @override
  State<Popupimage2> createState() => _Popupimage2State();
}

class _Popupimage2State extends State<Popupimage2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 600.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage('assets/images/homes.png'),
            fit: BoxFit.cover,
          )),
    );
  }
}



class Popupimage3 extends StatefulWidget {
  const Popupimage3({super.key});

  @override
  State<Popupimage3> createState() => _Popupimage3State();
}

class _Popupimage3State extends State<Popupimage3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 600.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage('assets/images/homes2.png'),
            fit: BoxFit.cover,
          )),
    );
  }
}


