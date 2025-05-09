import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/current.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/pastregistration.dart';

class Past extends ConsumerStatefulWidget {
  const Past({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PastState();
}
class _PastState extends ConsumerState<Past> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBF3F5),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.verticalSpace,
            CurrentContainer(),
            16.verticalSpace,
            PastContainer(),
            50.verticalSpace,
          ],
        ),
      ),
    );
  }
}