import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/agreement19/agreement.dart';
import 'package:foreal_property/features/agreement19/all_manage_agreement.dart';

class ManageAgreementListTab extends StatefulWidget {
  const ManageAgreementListTab({super.key});

  @override
  State<ManageAgreementListTab> createState() => _ManageAgreementListTabState();
}

class _ManageAgreementListTabState extends State<ManageAgreementListTab> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFFEBF3F5),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Customappbar(title: 'Manage Agreement'),
        ),
        body: TabBarView(
          children: [
            AllManageAgreement(),
            AllManageAgreement(),
            AllManageAgreement()
            // ManageAgreement7(),
            // ManageAgreement7()
          ],
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
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: InkWell(
            onTap: () {
              context.push(const AgreementView());
            },
            child: Image.asset(
              'assets/images/addicon.png',
              height: 34.h,
              width: 34.w,
            ),
          ),
        ),
      ],
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
            child: Text('All'),
          ),
          Tab(
            child: Text('Pending'),
          ),
          Tab(
            child: Text('Completed'),
          ),
        ],
      ),
    );
  }
}
