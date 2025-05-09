import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';

class FeesWidget extends ConsumerStatefulWidget {
  const FeesWidget({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FeesWidgetState();
}

class _FeesWidgetState extends ConsumerState<FeesWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
                        'assets/images/contract.png',
                        height: 60.h,
                        width: 60.w,
                      ),
          ),
          Text(
            'No Agreement Found!',
            style: TextStyle(
              color: const Color(0xFF494D60),
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),

        bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: BottomAppBar(
          color: Colors.white,
          child: PrimaryButton(
            isLoading: ref.watch(propertyNotifierProvider).isLoading,
            title:  'Next',
            onClick: () {},
          ),
        ),
      ),
    );
  }
}
