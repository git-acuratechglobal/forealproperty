import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';

import '../properties/properties.dart';


class Uploadpropert extends ConsumerStatefulWidget {
  final int? targetTabIndex;
  final Widget Function()? onNavigateTo;
  const Uploadpropert({super.key, this.targetTabIndex, this.onNavigateTo,});

  @override
  ConsumerState<Uploadpropert> createState() => _UploadpropertState();
}

class _UploadpropertState extends ConsumerState<Uploadpropert> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 290.h,
          width: 327.w,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(35)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.verticalSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
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
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        context.navPop();
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
              const Divider(
                height: 1,
                color: Color(0xFFE2E2E2),
              ),
              16.verticalSpace,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 34),
                child: SizedBox(
                    height: 100,
                    width: 200,
                    child: OptionalFeatures(['REA', 'Domain'])),
              ),
              20.verticalSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 130,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF164C63),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(38),
                            side: const BorderSide(
                              color: Color(0xFF164C63),
                              width: 1.5,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 32),
                        ),
                        onPressed: () {
                          ref.read(selectedTabIndexProvider.notifier).state =
                              widget.targetTabIndex ?? 1;
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>  widget.onNavigateTo!()
                              
                            //  HomeScreen(
                                  // selectTab: widget.targetTabIndex ?? 1),
                            ),
                          );
                        },
                        child: const Text('Save'),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 130,
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
                          ref.read(selectedTabIndexProvider.notifier).state = 1;
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>widget.onNavigateTo!()
                              //  HomeScreen(
                              //     selectTab: widget.targetTabIndex ?? 1),
                            ),
                          );
                        },
                        child: const Text('Publish'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
