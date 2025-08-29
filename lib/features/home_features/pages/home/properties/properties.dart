import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/home_features/pages/home/notification.dart';

import 'package:foreal_property/features/home_features/pages/home/openhouse/property_listing.dart';
import 'package:foreal_property/features/home_features/pages/home/properties/allproprtylist.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/address.dart';

final selectedTabIndexProvider = StateProvider<int>((ref) => 0);

class Properties extends ConsumerStatefulWidget {
  final VoidCallback? onOpenHomesTap;

  const Properties({super.key, this.onOpenHomesTap});

  @override
  ConsumerState<Properties> createState() => _PropertiesState();
}

class _PropertiesState extends ConsumerState<Properties>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        ref.read(selectedTabIndexProvider.notifier).state =
            _tabController.index;
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentTabIndex = ref.watch(selectedTabIndexProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      //  ref.read(selectedTabIndexProvider.notifier).state = 0;
      if (_tabController.length > currentTabIndex &&
          _tabController.index != currentTabIndex) {
        _tabController.animateTo(currentTabIndex);
      }
    });

    return Scaffold(
      backgroundColor: const Color(0xFFEBF3F5),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Customappbar(
          title: 'Properties',
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          AllPropertyList(
            onOpenHomesTap: () {
              ref.read(selectedTabIndexProvider.notifier).state = 1;
              widget.onOpenHomesTap?.call();
            },
          ),
          PropertyListingTab(
            onOpenHomesTap: widget.onOpenHomesTap,
          ),
          //  PropertyListingTab2()
        ],
      ),
    );
  }
}

// class Customappbar extends StatefulWidget {
//   final String title;
//   const Customappbar({super.key, required this.title});

//   @override
//   State<Customappbar> createState() => _CustomappbarState();
// }

// class _CustomappbarState extends State<Customappbar> {
//   bool isSelectd = false;
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.white,
//       automaticallyImplyLeading: false,
//       title: Align(
//           alignment: Alignment.topLeft,
//           child: Text(
//             widget.title,
//             style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
//           )),
//       actions: [
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 24),
//           child: notification(),
//         ),
//       ],
//       bottom: TabBar(
//         tabAlignment: TabAlignment.fill,
//         indicatorSize: TabBarIndicatorSize.tab,
//         labelColor: Color(0xFF164C63),
//         unselectedLabelColor: Color(0xFF494D60),
//         indicatorColor: Color(0xFF75CBCD),
//         dividerColor: Color(0xFFE2E2E2),
//         labelStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700),
//         unselectedLabelStyle:
//             TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
//         tabs: [
//           Tab(
//               child: AutoSizeText(
//             softWrap: false,
//             'All Properties',
//           )),
//           // Tab(
//           //     child: Text(
//           //   'Sold',
//           // )),
//           // Tab(
//           //     child: Text(
//           //   'Rental',
//           // )),
//           Tab(
//             child: Text('Listed'),
//           )
//         ],
//       ),
//     );
//   }
// }

class Customappbar extends StatelessWidget {
  final String title;
  final TabController controller;

  const Customappbar({
    super.key,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Align(
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
        ),
      ),

      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Row(
            children: [
              const notification(),
              8.horizontalSpace,
                InkWell(
            onTap: () {
              context.push( const AdressWidget(
                    isEdit: true,
                  ));
            },
            child: Image.asset('assets/images/addicon.png', height: 34.h, width: 34.w,))
            ],
          ),
        ),
      ],
      bottom: TabBar(
        controller: controller,
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
          Tab(child: Text('All Properties')),
          Tab(child: Text('Listed')),
          //   Tab(child: Text('Listeds')),
        ],
      ),
    );
  }
}
