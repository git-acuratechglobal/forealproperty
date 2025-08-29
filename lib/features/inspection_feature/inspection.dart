import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/inspection_feature/pages/add_inspection/add_inspection.dart';
import 'package:foreal_property/features/inspection_feature/tabs/inspection_tab.dart';
import 'package:foreal_property/features/inspection_feature/pages/plan_inspection/plan_inspection.dart';

class InspectionScreen extends StatefulWidget {
  const InspectionScreen({super.key});

  @override
  State<InspectionScreen> createState() => _InspectionState();
}

class _InspectionState extends State<InspectionScreen> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xFFEBF3F5),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Customappbar(title: 'Inspection'),
        ),
        body: TabBarView(
          children: [
            InspectionTab(),
            InspectionTab(),
            InspectionTab(),
            InspectionTab()
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

              Flexible(
                flex: 0,
                child: PopupMenuButton<int>(
                  icon: Image.asset(
                    'assets/images/addicon.png',
                    height: 34.h,
                    width: 34.w,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  onSelected: (int selectedType) {
                    setState(() {
                      // _propertyType = selectedType;
                    });
                  },
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: const Text('Add Inspection'),
                      onTap: () {
                        context.push(const AddInspection());
                      },
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: const Text('Plan Inspection'),
                      onTap: () {
                        context.push(const PlanInspection());
                      },
                    ),
                  ],
                ),
              )
              // InkWell(
              //     onTap: () {
              //       context.push(AddInspection());
              //     },
              //     child: Image.asset(
              //       'assets/images/addicon.png',
              //       height: 34.h,
              //       width: 34.w,
              //     ))
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
        labelStyle: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w700),
        unselectedLabelStyle:
            TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
        tabs: const [
          Tab(
            child: Text('Planned'),
          ),
          Tab(
            child: Text('Today'),
          ),
          Tab(
            child: Text('Inspected'),
          ),
          Tab(
              child: Text(
            'Closed',
          )),
        ],
      ),
    );
  }
}
