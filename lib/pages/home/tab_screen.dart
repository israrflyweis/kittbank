import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import 'home_screen.dart';  // Ensure this import is correct

class TabScreen extends StatefulWidget {
  final int initialIndex;
  const TabScreen({super.key, this.initialIndex = 0});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  late PersistentTabController _controller;

  // Define unique navigator keys for each tab to handle in-tab navigation
  final List<GlobalKey<NavigatorState>> navigatorKeys = List.generate(
    5,
        (_) => GlobalKey<NavigatorState>(),
  );

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: widget.initialIndex);
  }

  // Define screens with custom Navigator for each tab
  List<Widget> _buildScreens() {
    return [
      Navigator(
        key: navigatorKeys[0],
        onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (_) => HomeScreen(),
        ),
      ),
      Navigator(
        key: navigatorKeys[1],
        onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (_) => Center(child: Text("Wallet", style: TextStyle(fontSize: 24))),
        ),
      ),
      Navigator(
        key: navigatorKeys[2],
        onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (_) => Center(child: Text("Profile", style: TextStyle(fontSize: 24))),
        ),
      ),
      Navigator(
        key: navigatorKeys[3],
        onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (_) => Center(child: Text("Discover", style: TextStyle(fontSize: 24))),
        ),
      ),
      Navigator(
        key: navigatorKeys[4],
        onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (_) => Center(child: Text("Settings", style: TextStyle(fontSize: 24))),
        ),
      ),
    ];
  }

  // Bottom navigation bar items
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          "assets/images/bottom1.png",
          color: _controller.index == 0 ? Colors.black : Colors.white,
          height: 20.h,
        ),
        activeColorPrimary: Color(0xffFAD332),
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          "assets/images/bottom2.png",
          height: 20.h,
          color: _controller.index == 1 ? Colors.black : Colors.white,
        ),
        activeColorPrimary: Color(0xffFAD332),
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          "assets/images/bottom3.png",
          height: 20.h,
          color: _controller.index == 2 ? Colors.black : Colors.white,
        ),
        activeColorPrimary: Color(0xffFAD332),
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          "assets/images/bottom4.png",
          height: 20.h,
          color: _controller.index == 3 ? Colors.black : Colors.white,
        ),
        activeColorPrimary: Color(0xffFAD332),
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          "assets/images/bottom5.png",
          height: 20.h,
          color: _controller.index == 4 ? Colors.black : Colors.white,
        ),
        activeColorPrimary: Color(0xffFAD332),
        inactiveColorPrimary: Colors.white,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        navBarHeight: 60.h,
        onItemSelected: (index) {
          if (index == _controller.index) {
            // Reset to the first route if the same tab is tapped
            navigatorKeys[index].currentState?.popUntil((route) => route.isFirst);
          } else {
            setState(() {
              _controller.index = index;
            });
          }
        },
        backgroundColor: const Color(0xff615234),
        navBarStyle: NavBarStyle.style10,
      ),
    );
  }
}
