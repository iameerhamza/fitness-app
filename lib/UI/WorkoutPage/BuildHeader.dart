import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glossy/glossy.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../Components/Gradients/GradientTopBottom.dart';
import '../../Utils/ThemeConstants.dart';

class BuildHeader extends StatefulWidget {
  const BuildHeader({super.key});

  @override
  State<BuildHeader> createState() => _BuildHeaderState();
}

class _BuildHeaderState extends State<BuildHeader> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 282.sp,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 250.sp,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: ColorConstants.lightGreySecondary, borderRadius: BorderRadius.circular(23.r)),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.network(
                  'https://www.nourishmovelove.com/wp-content/uploads/2023/03/A14I0103.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                GradientTopBottom(
                  isBottom: true,
                  height: 134.sp,
                  color: const Color.fromRGBO(29, 29, 29, 1),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: GlossyContainer(
              width: 258.w,
              height: 64.sp,
              color: ColorConstants.primaryColor1.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15.r),
              border: GradientBoxBorder(
                gradient: LinearGradient(begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [
                  ColorConstants.primaryColor2,
                  ColorConstants.primaryColor2.withOpacity(0.01),
                  ColorConstants.primaryColor2.withOpacity(0),
                  ColorConstants.primaryColor2.withOpacity(0.01),
                  ColorConstants.primaryColor2,
                ]),
                width: 0.5.w,
              ),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildCard(Icons.timer_outlined, 'Time', '20 min'),
                    VerticalDivider(
                      width: 30.w,
                      color: ColorConstants.white.withOpacity(0.25),
                      indent: 13.sp,
                      endIndent: 13.sp,
                    ),
                    _buildCard(Icons.local_fire_department_outlined, 'Burn', '95kcal'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildCard(IconData icon, String title, String subtitle) {
    return SizedBox(
      width: 82.w,
      height: 32.sp,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 32.sp,
            height: 32.sp,
            decoration: BoxDecoration(
              color: ColorConstants.primaryColor2,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Icon(icon),
          ),
          SizedBox(
            width: 8.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, color: Colors.white),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500, color: ColorConstants.primaryColor2),
              ),
            ],
          )
        ],
      ),
    );
  }
}
