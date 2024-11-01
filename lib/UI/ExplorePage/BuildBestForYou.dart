import 'package:fitness_app/Utils/ThemeConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildBestForYou extends StatefulWidget {
  const BuildBestForYou({super.key});

  @override
  State<BuildBestForYou> createState() => _BuildBestForYouState();
}

class _BuildBestForYouState extends State<BuildBestForYou> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.sp,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Best for you',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
          ),
          const Spacer(),
          SizedBox(
            height: 182.sp,
            child: ListView.builder(
                itemCount: 3,
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      _buildWorkoutCard('Belly fat burner'),
                      const Spacer(),
                      _buildWorkoutCard('Build Whider Biceps'),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget _buildWorkoutCard(String title) {
    return Container(
      width: 194.w,
      height: 86.sp,
      margin: EdgeInsets.only(right: 16.w),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(9.r)),
      child: Padding(
        padding: EdgeInsets.all(7.sp),
        child: Row(
          children: [
            Container(
              width: 72.sp,
              height: 72.sp,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: ColorConstants.lightGreySecondary, borderRadius: BorderRadius.circular(6.r)),
              child: Image.network(
                'https://skinnyms.com/wp-content/uploads/2018/01/Ditch-The-Pooch-15-Best-Exercises-to-Lose-Belly-Fat-Tighten-Your-Tummy.jpg',
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  _buildCapsule('10 min'),
                  SizedBox(
                    height: 4.sp,
                  ),
                  _buildCapsule('Beginner'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildCapsule(String title) {
    return UnconstrainedBox(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.sp),
        decoration: BoxDecoration(color: ColorConstants.offWhite, borderRadius: BorderRadius.circular(3.r)),
        child: Text(
          title,
          style: TextStyle(
              height: 1, fontSize: 12.sp, fontWeight: FontWeight.w400, color: ColorConstants.primaryColor1.withOpacity(0.7)),
        ),
      ),
    );
  }
}
