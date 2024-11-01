import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/ThemeConstants.dart';

PreferredSizeWidget CustomAppBarWidget(
    {final String? title,
    // final Function()? onNotificationPressed,
    final Function()? onBack,
    bool showBackButton = false,
    bool showActions = false,
    List<Widget>? customActions}) {
  return AppBar(
    backgroundColor: ColorConstants.primaryColor1,
    foregroundColor: ColorConstants.primaryColor1,
    forceMaterialTransparency: true,
    elevation: 0.0,
    centerTitle: true,
    leadingWidth: 66.w,
    title: Text(
      title ?? '',
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
        color: ColorConstants.white,
      ),
    ),
    leading: Builder(builder: (context) {
      return IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: ColorConstants.white,
          size: 20.sp,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      );
    }),
  );
}
