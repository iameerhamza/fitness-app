import 'package:fitness_app/Components/TextFields/CustomOutlineTextField.dart';
import 'package:fitness_app/UI/HomePage/BuildPopularWorkouts.dart';
import 'package:fitness_app/UI/HomePage/BuildTodayPlan.dart';
import 'package:fitness_app/Utils/ThemeConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorConstants.primaryColor1,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.sp),
          children: [
            Text(
              'Good Morning 🔥',
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 3.sp,
            ),
            Text(
              'Ameer Hamza',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 23.sp,
            ),
            SizedBox(
              height: 48.sp,
              child: CustomTextFormField(
                filled: true,
                fillColor: ColorConstants.white,
                borderRadius: 12.r,
                hintText: 'Search',
                hintStyle:
                    TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, color: ColorConstants.primaryColor1.withOpacity(0.5)),
                prefixIcon: SizedBox(
                  width: 24.sp,
                  height: 24.sp,
                  child: Icon(
                    CupertinoIcons.search,
                    color: ColorConstants.lightGreySecondary,
                    size: 16.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24.sp,
            ),
            const BuildPopularWorkouts(),
            SizedBox(
              height: 24.sp,
            ),
            const BuildTodayPlan()
          ],
        ),
      ),
    );
  }
}
