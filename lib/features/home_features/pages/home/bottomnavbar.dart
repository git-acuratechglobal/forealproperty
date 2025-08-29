import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/features/auth_feature/pages/sign_up_page/updateprofile.dart';
import 'package:foreal_property/features/home_features/pages/home/dashboard.dart';
import 'package:foreal_property/features/home_features/pages/home/properties/properties.dart';
import 'package:foreal_property/features/home_features/pages/home/servicepage/service.dart';

class HomeScreen extends ConsumerStatefulWidget {
  final int selectTab;
  final int? initialInnerTab;
  const HomeScreen({this.selectTab = 0, this.initialInnerTab, super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectTab; // <-- set selected tab on load

    // If it's Properties tab, also set the inner tab
    if (selectedIndex == 1) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(selectedTabIndexProvider.notifier).state = selectedIndex;
      });
    }
  }

  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget _buildNavItem({
    required String label,
    required int index,
    required String unSelectedAsset,
    required String selectedAsset,
  }) {
    bool isSelected = selectedIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => _onItemTapped(index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              isSelected ? selectedAsset : unSelectedAsset,
              width: 25.w,
              height: 25.h,
            ),
            Center(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: isSelected ? FontWeight.w800 : FontWeight.normal,
                  color: isSelected ? Colors.black : Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: IndexedStack(
        index: selectedIndex,
        children: [
          Dashboard(onOpenHomesTap: () {
            setState(() {
              selectedIndex = 3; // Navigate to Open Homes tab
            });
          }),
          const Services(),
          Consumer(
            builder: (context, ref, _) => Properties(
              onOpenHomesTap: () {
                setState(() {
                  selectedIndex = 1; // Navigate to Open Homes tab
                });
              },
            ),
          ),
          const Updateprofile()
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: SizedBox(
            height: 130,
            child: BottomAppBar(
              // shape: const CircularNotchedRectangle(),
              //notchMargin: 6,
              color: Colors.white,
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildNavItem(
                      label: 'Dashboard',
                      index: 0,
                      unSelectedAsset: 'assets/images/home-hashtag.png',
                      selectedAsset: 'assets/images/home-hashtag-2.png',
                    ),
                    _buildNavItem(
                      label: 'Services',
                      index: 1,
                      unSelectedAsset: 'assets/images/layer.png',
                      selectedAsset: 'assets/images/layer2.png',
                    ),
                    _buildNavItem(
                      label: 'Properties',
                      index: 2,
                      unSelectedAsset: 'assets/images/building-3.png',
                      selectedAsset: 'assets/images/building-3-2.png',
                    ),

                    _buildNavItem(
                      label: 'Account',
                      index: 3,
                      unSelectedAsset: 'assets/images/profile-circle.png',
                      selectedAsset: 'assets/images/profile-circle-2.png',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
