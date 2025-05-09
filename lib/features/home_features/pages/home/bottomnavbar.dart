import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/features/home_features/pages/home/contact/addcontactfield.dart';
import 'package:foreal_property/features/home_features/pages/home/contact/contact.dart';
import 'package:foreal_property/features/home_features/pages/home/dashboard.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/addopenhomes.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/house.dart';
import 'package:foreal_property/features/home_features/pages/home/properties/properties.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/addproperty.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/address.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _showContactDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Dismiss",
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Align(
              alignment: Alignment.center,
              child: Material(
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: AddContactField(),
                ),
              ),
            ),
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeIn;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

  void _showOpenHomeDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Dismiss",
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Align(
              alignment: Alignment.center,
              child: Material(
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Addopenhomes(),
                ),
              ),
            ),
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeIn;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
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
              width: 24.w,
              height: 24.h,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: isSelected ? FontWeight.w800 : FontWeight.normal,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleFabTap() {
    switch (selectedIndex) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddProperty()),
        );
        break;
      case 2:
        _showContactDialog(context);
      case 3:
        _showOpenHomeDialog(context);
        break;
      default:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AdressWidget(isEdit: true,)),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: selectedIndex,
        children: [
          Dashboard(),
          Properties(),
          Contact(),
          House(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 64.h,
        width: 64.w,
        child: FloatingActionButton(
          onPressed: _handleFabTap,
          child: Icon(
            Icons.add,
            size: 32.sp,
            color: Colors.white,
          ),
          backgroundColor: const Color(0xFF164C63),
          shape: const CircleBorder(),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
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
                  label: 'Properties',
                  index: 1,
                  unSelectedAsset: 'assets/images/building-3.png',
                  selectedAsset: 'assets/images/building-3-2.png',
                ),
                30.horizontalSpace,
                _buildNavItem(
                  label: 'Contacts',
                  index: 2,
                  unSelectedAsset: 'assets/images/people.png',
                  selectedAsset: 'assets/images/people-3.png',
                ),
                _buildNavItem(
                  label: 'Open Homes',
                  index: 3,
                  unSelectedAsset: 'assets/images/note-favorite.png',
                  selectedAsset: 'assets/images/note-favorite-2.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

