import 'package:fitness_app/Components/Gradients/GradientLeftRight.dart';
import 'package:fitness_app/UI/WorkoutPage/workoutPage.dart';
import 'package:fitness_app/Utils/ThemeConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class BuildPopularWorkouts extends StatefulWidget {
  const BuildPopularWorkouts({super.key});

  @override
  State<BuildPopularWorkouts> createState() => _BuildPopularWorkoutsState();
}

class _BuildPopularWorkoutsState extends State<BuildPopularWorkouts> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 212.sp,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular Workouts',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
          ),
          Spacer(),
          SizedBox(
            height: 174.sp,
            child: ListView.builder(
                itemCount: 3,
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: const WorkoutPage(),
                        withNavBar: false, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation: PageTransitionAnimation.cupertino,
                      );
                    },
                    child: Container(
                      width: 280.w,
                      clipBehavior: Clip.antiAlias,
                      margin: EdgeInsets.only(right: 20.w),
                      decoration:
                          BoxDecoration(color: ColorConstants.lightGreySecondary, borderRadius: BorderRadius.circular(23.r)),
                      child: Stack(
                        children: [
                          Image.network(
                            'https://www.nourishmovelove.com/wp-content/uploads/2023/03/A14I0103.jpg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                          GradientLeftRight(
                            width: 174.w,
                            color: Colors.black54,
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.sp),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 128.w,
                                      child: Text(
                                        'Lower Body Training',
                                        style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700, color: Colors.white),
                                      ),
                                    ),
                                    // SizedBox(
                                    //   height: 14.sp,
                                    // ),
                                    _buildCapsule(Icons.local_fire_department_outlined, '500 Kcal'),
                                    // SizedBox(
                                    //   height: 10.sp,
                                    // ),
                                    _buildCapsule(Icons.timer_outlined, '50 Min'),
                                  ],
                                ),
                                const Spacer(),
                                SizedBox(
                                    width: 38.sp,
                                    height: 38.sp,
                                    child: Icon(
                                      Icons.play_circle_fill,
                                      color: ColorConstants.primaryColor2,
                                      size: 38.sp,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget _buildCapsule(IconData icon, String title) {
    return Container(
      height: 26.sp,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.sp),
      decoration: BoxDecoration(color: ColorConstants.white.withOpacity(0.8), borderRadius: BorderRadius.circular(9.r)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 14.sp,
            color: ColorConstants.black,
          ),
          SizedBox(
            width: 4.w,
          ),
          Text(
            title,
            style: TextStyle(
              height: 1,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
