


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:foreal_property/features/home_features/pages/home/notification.dart';

import 'package:foreal_property/features/home_features/pages/home/openhouse/current.dart';

import 'package:foreal_property/features/home_features/pages/home/openhouse/past.dart';



class House extends StatefulWidget {
  const House({super.key});

  @override
  State<House> createState() => _HouseState();
}

class _HouseState extends State<House> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFEBF3F5),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Customappbar(title: 'Open Homes'),
        ),
        body: TabBarView(
          children: [
        CurrentPage(),
        Past()
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
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Align(
          alignment: Alignment.topLeft,
          child: Text(
            widget.title,
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
          )),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
            
                12.horizontalSpace,
              notification(),
            ],
          ),
        ),
      ],
      bottom: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: Color(0xFF164C63),
        unselectedLabelColor: Color(0xFF494D60),
        indicatorColor: Color(0xFF75CBCD),
        dividerColor: Color(0xFFE2E2E2),
        labelStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
        unselectedLabelStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
        tabs: [
          Tab(
              child: Text(
            'Current',
          )),
          Tab(
              child: Text(
            'Past',
          )),
          
        ],
      ),
    );
  }
}
