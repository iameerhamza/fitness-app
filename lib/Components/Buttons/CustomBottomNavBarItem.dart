import 'package:flutter/cupertino.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../Utils/ThemeConstants.dart';

PersistentBottomNavBarItem CustomNavBarItem({required final IconData icon, required final String title}) {
  return PersistentBottomNavBarItem(
      icon: Icon(icon),
      title: title,
      activeColorPrimary: ColorConstants.primaryColor2,
      inactiveColorPrimary: ColorConstants.white,
      activeColorSecondary: ColorConstants.primaryColor1
      // scrollController: _scrollController1,
      );
}
