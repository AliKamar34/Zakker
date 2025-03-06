import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:zaker/core/utils/app_colors.dart';
import 'package:zaker/features/doaa/presentation/view/doaa_view.dart';
import 'package:zaker/features/home/presentation/views/home_view.dart';
import 'package:zaker/features/salah/presentation/views/salah_view.dart';
import 'package:zaker/features/sebha/presentation/views/sebha_view.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int selectedIndex = 0;
  static const List<Widget> pages = [
    HomeView(),
    SebhaView(),
    SalahView(),
    DoaaView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            haptic: true,
            tabBorderRadius: 15,
            curve: Curves.easeOutExpo,
            duration: const Duration(milliseconds: 500),
            gap: 8,
            color: AppColors.scaffoldColor,
            activeColor: AppColors.primaryColor,
            iconSize: 24,
            tabBackgroundColor: AppColors.primaryColor.withAlpha(50),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tabs: [
              GButton(icon: Icons.home_rounded, iconSize: 32),
              GButton(icon: FlutterIslamicIcons.tasbih2, iconSize: 32),
              GButton(icon: FlutterIslamicIcons.sajadah, iconSize: 32),
              GButton(icon: FlutterIslamicIcons.prayer, iconSize: 32),
            ],
            selectedIndex: selectedIndex,
            onTabChange: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
