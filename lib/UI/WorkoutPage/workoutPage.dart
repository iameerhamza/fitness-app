import 'package:fitness_app/Components/Buttons/CustomFillButton.dart';
import 'package:fitness_app/Components/CustomAppBar/CustomAppBar.dart';
import 'package:fitness_app/UI/WorkoutPage/BuildHeader.dart';
import 'package:fitness_app/UI/WorkoutPage/BuildRoundsWidget.dart';
import 'package:fitness_app/Utils/ThemeConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor1,
      appBar: CustomAppBarWidget(title: 'Workout'),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.sp),
            children: [
              const BuildHeader(),
              SizedBox(
                height: 24.sp,
              ),
              Text(
                'Lower Body Training',
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w800, color: ColorConstants.white),
              ),
              SizedBox(
                height: 17.sp,
              ),
              Text(
                "The lower abdomen and hips are the most difficult areas of the body to reduce when we are on a diet. Even so, in this area, especially the legs as a whole, you can reduce weight even if you don't use tools.",
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400, color: ColorConstants.white.withOpacity(0.5)),
              ),
              SizedBox(
                height: 40.sp,
              ),
              const BuildRoundsWidget()
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.sp),
            child: CustomFilledButton(
              // width: 350.w,
              height: 56.sp,
              title: 'Lets Workout',
              textColor: ColorConstants.primaryColor1,
              btnColor: ColorConstants.primaryColor2,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
