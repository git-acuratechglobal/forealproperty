import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:foreal_property/features/home_features/pages/home/notification.dart';
import 'package:foreal_property/features/home_features/pages/home/properties/allproperties2.dart';
import 'package:foreal_property/features/home_features/pages/home/properties/allproprtylist.dart';

class Properties extends StatefulWidget {
  const Properties({super.key});

  @override
  State<Properties> createState() => _PropertiesState();
}

class _PropertiesState extends State<Properties> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFFEBF3F5),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Customappbar(title: 'Properties'),
        ),
        body: TabBarView(
          children: [
            AllPropertyList(),
            Allproperties2(),
            Allproperties2()
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
          child: notification(),
        ),
      ],
      bottom: TabBar(
        
        tabAlignment: TabAlignment.fill,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: Color(0xFF164C63),
        unselectedLabelColor: Color(0xFF494D60),
        indicatorColor: Color(0xFF75CBCD),
        dividerColor: Color(0xFFE2E2E2),
        labelStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700),
        unselectedLabelStyle:
            TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
        tabs: [
          Tab(
              child: AutoSizeText(
            
                softWrap: false,
            'All Properties',
          )),
          Tab(
              child: Text(
            'Sold',
          )),
          Tab(
              child: Text(
            'Rental',
          )),
        ],
      ),
    );
  }
}
