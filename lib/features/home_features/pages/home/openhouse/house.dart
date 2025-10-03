import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/addopenhomes.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/current.dart';

class House extends StatefulWidget {
  final int? selectTab;
  final int? initialInnerTab;
  const House({super.key, this.initialInnerTab, this.selectTab});

  @override
  State<House> createState() => _HouseState();
}

class _HouseState extends State<House> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFEBF3F5),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Customappbar(title: 'Open Homes'),
        ),
        body: TabBarView(
          children: [
            CurrentPage(
              isCurrent: true,
            ),
            CurrentPage(
              isCurrent: false,
            )
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
      automaticallyImplyLeading: true,
// leading: IconButton(onPressed: (){
//   context.navigateTo(HomeScreen(selectTab: 2,));
//}, icon: Icon(Icons.arrow_back)),
      centerTitle: true,
      title: Text(
        widget.title,
        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              12.horizontalSpace,
              InkWell(
                  onTap: () {
                    context.navPush(const Addopenhomes());
                  },
                  child: Image.asset(
                    'assets/images/addicon.png',
                    height: 34.h,
                    width: 34.w,
                  ))
            ],
          ),
        ),
      ],
      bottom: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: const Color(0xFF164C63),
        unselectedLabelColor: const Color(0xFF494D60),
        indicatorColor: const Color(0xFF75CBCD),
        dividerColor: const Color(0xFFE2E2E2),
        labelStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
        unselectedLabelStyle:
            TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
        tabs: const [
          Tab(
            child: Text('Current'),
          ),
          Tab(
              child: Text(
            'Past',
          )),
        ],
      ),
    );
  }
}
