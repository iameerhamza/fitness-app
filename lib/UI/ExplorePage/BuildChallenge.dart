import 'package:fitness_app/Utils/ThemeConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';

class BuildChallenge extends StatefulWidget {
  const BuildChallenge({super.key});

  @override
  State<BuildChallenge> createState() => _BuildChallengeState();
}

class _BuildChallengeState extends State<BuildChallenge> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 148.sp,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Challenge',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildChallengeCard(
                  icon: Icon(
                    Icons.local_fire_department_outlined,
                    size: 72.sp,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  title: 'Plank Challenge',
                  backgroundColor: ColorConstants.primaryColor2),
              _buildChallengeCard(
                  icon: Icon(
                    Symbols.sprint,
                    size: 72.sp,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  title: 'Sprint Challenge',
                  backgroundColor: ColorConstants.primaryColor1,
                  textColor: Colors.white),
              _buildChallengeCard(
                  icon: Icon(
                    Symbols.water_bottle,
                    size: 72.sp,
                    color: ColorConstants.primaryColor2.withOpacity(0.5),
                  ),
                  title: 'Squat Challenge',
                  backgroundColor: ColorConstants.white),
            ],
          )
        ],
      ),
    );
  }

  _buildChallengeCard({required Icon icon, required String title, required Color backgroundColor, Color? textColor}) {
    return Container(
      width: 110.sp,
      height: 110.sp,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(9.r),
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Positioned(bottom: 6.sp, right: 0, child: icon),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                // width: 61.w,
                child: Text(
              title,
              textHeightBehavior: const TextHeightBehavior(),
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: textColor),
            )),
          )
        ],
      ),
    );
  }
}
