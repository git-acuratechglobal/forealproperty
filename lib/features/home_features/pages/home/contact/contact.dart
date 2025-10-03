import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/home_features/pages/home/contact/addcontactfield.dart';
import 'package:foreal_property/features/home_features/pages/home/contact/allcontacts.dart';

class Contact extends StatefulWidget {
  final VoidCallback? onOpenHomesTap;
  const Contact({super.key, this.onOpenHomesTap});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFEBF3F5),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Customappbar(title: 'Contacts'),
        ),
        body: TabBarView(
          children: [
            Allcontacts(
              filterType: 'all',
              onOpenHomesTap: widget.onOpenHomesTap,
            ),
            const Allcontacts(filterType: '1'), // owner
            //  Allcontacts(filterType: '7'), // supplier
            const Allcontacts(filterType: '2'),
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
      // leading: IconButton(
      //     onPressed: () {
      //       context.navigateTo(HomeScreen(
      //         selectTab: 2,
      //       ));
      //     },
      //     icon: Icon(Icons.arrow_back)),
      centerTitle: true,
      title: Text(
        widget.title,
        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
      ),
      actions: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: InkWell(
                onTap: () {
                  context.navPush(const AddContactField());
                },
                child: Image.asset(
                  'assets/images/addicon.png',
                  height: 34.h,
                  width: 34.w,
                ))),
      ],
      bottom: TabBar(
        tabAlignment: TabAlignment.fill,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: const Color(0xFF164C63),
        unselectedLabelColor: const Color(0xFF494D60),
        indicatorColor: const Color(0xFF75CBCD),
        dividerColor: const Color(0xFFE2E2E2),
        labelStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700),
        unselectedLabelStyle:
            TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
        tabs: const [
          Tab(
              child: Text(
            'All',
          )),
          Tab(
              child: Text(
            'Owners',
          )),
          // Tab(
          //     child: Text(
          //   'Supplies',
          // )),
          Tab(
              child: Text(
            'Tenant',
          )),
        ],
      ),
    );
  }
}
