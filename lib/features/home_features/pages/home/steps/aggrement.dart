import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';


class AggrementWidget extends ConsumerStatefulWidget {
  const AggrementWidget({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AggrementWidgetState();
}

class _AggrementWidgetState extends ConsumerState<AggrementWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            16.verticalSpace,
            CommonAggrementCard(
                title: 'Management Agreement', Subtitle: '01/15/24'),
                8.verticalSpace,
                  CommonAggrementCard(
                title: 'Residential Tenancy Agreement', Subtitle: '05/07/24'), 
                8.verticalSpace,
                   CommonAggrementCard(
                title: 'Exclusive Sales Agency', Subtitle: '01/15/24'),
          ],
        ),
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

class CommonAggrementCard extends StatefulWidget {
  final String title;
  final String Subtitle;
  const CommonAggrementCard(
      {super.key, required this.title, required this.Subtitle});

  @override
  State<CommonAggrementCard> createState() => _CommonAggrementCardState();
}

class _CommonAggrementCardState extends State<CommonAggrementCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      // width: 343,
     // height: 73.h,
      decoration: ShapeDecoration(
        color: const Color(0xFFEBF3F5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/contract.png',
            height: 32.h,
            width: 32.w,
          ),
          7.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                 softWrap: false,
                 overflow: TextOverflow.ellipsis,
                  widget.title,
                  style: TextStyle(
                    color: const Color(0xFF1A1B28),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                4.verticalSpace,
                Text(
                  widget.Subtitle,
                  style: TextStyle(
                    color: const Color(0xFF494D60),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
   5.horizontalSpace,
          Image.asset(
            'assets/images/more-circle.png',
            height: 24.h,
            width: 24.w,
          ),
        ],
      ),
    );
  }
}
