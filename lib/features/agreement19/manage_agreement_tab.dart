import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/features/agreement19/manage_activity.dart';
import 'package:foreal_property/features/agreement19/manage_agreement7.dart';

class ManageAgreementTab extends StatefulWidget {
  const ManageAgreementTab({super.key});

  @override
  State<ManageAgreementTab> createState() => _ManageAgreementTabState();
}

class _ManageAgreementTabState extends State<ManageAgreementTab> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFEBF3F5),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Customappbar(title: 'Manage Agreement'),
        ),
        body: TabBarView(
          children: [ManageAgreement7(), ManageActivity()],
        ),
      ),
    );
  }
}

class Customappbar extends StatefulWidget {
  final String title;
  const Customappbar({super.key, required this.title});

  @override
  State<Customappbar> createState() => _CustomappbarState();
}

class _CustomappbarState extends State<Customappbar> {
  bool isSelectd = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      centerTitle: true,
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.only(right: 14),
      //     child: InkWell(
      //       onTap: (){
      //         context.navigateTo(AgreementView());
      //       },
      //       child: Image.asset(
      //                          'assets/images/addicon.png',
      //                   height: 34.h,
      //                   width: 34.w,
      //                         ),
      //     ),
      //   ),
      // ],
      title: Text(
        widget.title,
        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
      ),
      bottom: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: const Color(0xFF164C63),
        unselectedLabelColor: const Color(0xFF494D60),
        indicatorColor: const Color(0xFF75CBCD),
        dividerColor: const Color(0xFFE2E2E2),
        labelStyle: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
        unselectedLabelStyle:
            TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
        tabs: const [
          Tab(
            child: Text('Agreement Summary'),
          ),
          Tab(
            child: Text('Activity'),
          ),
        ],
      ),
    );
  }
}
