import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/inset.dart';
import 'app-bar.dart';

class ScaffoldWithNavBarTabItem extends BottomNavigationBarItem {
  const ScaffoldWithNavBarTabItem(
      {required this.initialLocation,
      required Widget icon,
      String? label,
      Color? backgroundColor})
      : super(icon: icon, label: label, backgroundColor: backgroundColor);
  final String initialLocation;
}

const tabs = [
  ScaffoldWithNavBarTabItem(
      initialLocation: "/home", icon: Icon(Icons.home_filled), label: 'Home'),
  ScaffoldWithNavBarTabItem(
      initialLocation: "/content", icon: Icon(Icons.book), label: 'Content'),
  ScaffoldWithNavBarTabItem(
    initialLocation: "/calendar",
    icon: Icon(Icons.calendar_month_outlined),
    label: 'Calendar',
  ),
  ScaffoldWithNavBarTabItem(
      initialLocation: "/profile",
      icon: Icon(Icons.account_circle_outlined),
      label: 'Profile'),
];

class ScaffoldWithBottomNavBar extends StatefulWidget {
  const ScaffoldWithBottomNavBar({Key? key, required this.child, this.navbar})
      : super(key: key);
  final Widget child;
  final bool? navbar;

  @override
  State<ScaffoldWithBottomNavBar> createState() =>
      _ScaffoldWithBottomNavBarState();
}

class _ScaffoldWithBottomNavBarState extends State<ScaffoldWithBottomNavBar> {
  // TODO: use get location
  int get _currentIndex => _locationToTabIndex(Get.currentRoute);

  int _locationToTabIndex(String location) {
    final index =
        tabs.indexWhere((t) => location.startsWith(t.initialLocation));
    return index < 0 ? 0 : index;
  }

  void _onItemTapped(BuildContext context, int tabIndex) {
    Get.toNamed(tabs[tabIndex].initialLocation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: 50, child: Container()),
      body: Padding(padding: EdgeInsets.all(Insets.sm), child: widget.child),
      bottomNavigationBar: widget.navbar ?? true
          ? BottomNavigationBar(
              showUnselectedLabels: true,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey.shade400,
              items: tabs,
              currentIndex: _currentIndex,
              onTap: (index) => _onItemTapped(context, index),
            )
          : null,
    );
  }
}
