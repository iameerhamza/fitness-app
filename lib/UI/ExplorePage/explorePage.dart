import 'package:fitness_app/UI/ExplorePage/BuildBestForYou.dart';
import 'package:fitness_app/UI/ExplorePage/BuildChallenge.dart';
import 'package:fitness_app/UI/ExplorePage/BuildFastWarmup.dart';
import 'package:fitness_app/Utils/ThemeConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Components/Gradients/GradientLeftRight.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.sp),
          children: [
            Container(
              height: 180.sp,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: ColorConstants.lightGreySecondary, borderRadius: BorderRadius.circular(23.r)),
              child: Stack(
                children: [
                  Image.network(
                    'https://images.ctfassets.net/hjcv6wdwxsdz/2NQ4dFGjv6BbMAJJR1NTKZ/b313a3c3fde55582f4281cf0e3bc23a5/woman-working-out-in-her-house.jpg?w=1999&h=1334&q=50&fm=avif',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  GradientLeftRight(
                    width: 174.w,
                    color: Colors.black54,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 26.w, top: 26.sp, bottom: 30.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 210.w,
                          child: Text(
                            'Best Quarantine Workout',
                            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700, color: Colors.white),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'See more',
                              style: TextStyle(
                                  height: 1, fontSize: 14.sp, fontWeight: FontWeight.w700, color: ColorConstants.primaryColor2),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Icon(
                              CupertinoIcons.forward,
                              size: 12.sp,
                              color: ColorConstants.primaryColor2,
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.sp,
            ),
            const BuildBestForYou(),
            SizedBox(
              height: 12.sp,
            ),
            const BuildChallenge(),
            SizedBox(
              height: 24.sp,
            ),
            const BuildFastWarmup(),
            SizedBox(
              height: 100.sp,
            ),
          ],
        ),
      ),
    );
  }
}
