import 'package:fitness_app/UI/ExplorePage/explorePage.dart';
import 'package:fitness_app/UI/HomePage/homePage.dart';
import 'package:fitness_app/Utils/ThemeConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../Components/Buttons/CustomBottomNavBarItem.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  final _pages = const [HomePage(), ExplorePage(), ExplorePage(), ExplorePage()];
  final _items = [
    CustomNavBarItem(
      icon: CupertinoIcons.house_alt_fill,
      title: "Home",
      // scrollController: _scrollController1,
    ),
    CustomNavBarItem(
      icon: CupertinoIcons.rocket,
      title: 'Explore',
      // scrollController: _scrollController1,
    ),
    CustomNavBarItem(
      icon: CupertinoIcons.chart_bar_square,
      title: ("Home"),
      // scrollController: _scrollController1,
    ),
    CustomNavBarItem(
      icon: CupertinoIcons.person,
      title: ("Home"),
      // scrollController: _scrollController1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(context,
          backgroundColor: ColorConstants.primaryColor1,
          popBehaviorOnSelectedNavBarItemPress: PopBehavior.none,
          decoration: NavBarDecoration(borderRadius: BorderRadius.circular(50.r)),
          margin: EdgeInsets.fromLTRB(25.w, 0, 25.w, 12.sp),
          navBarHeight: 64.sp,
          navBarStyle: NavBarStyle.style7,
          items: _items,
          screens: _pages),
    );
  }
}
