import 'package:fitness_app/Components/LinearProgressBar/LinearProgressBar.dart';
import 'package:fitness_app/Utils/ThemeConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildTodayPlan extends StatefulWidget {
  const BuildTodayPlan({super.key});

  @override
  State<BuildTodayPlan> createState() => _BuildTodayPlanState();
}

class _BuildTodayPlanState extends State<BuildTodayPlan> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Today Plan',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 16.sp,
        ),
        ListView.builder(
            itemCount: 3,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: 50.sp),
            itemBuilder: (context, index) {
              return Container(
                height: 120.sp,
                margin: EdgeInsets.only(bottom: 20.sp),
                decoration: BoxDecoration(color: ColorConstants.white, borderRadius: BorderRadius.circular(23.r)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.sp),
                      child: Container(
                        width: 100.sp,
                        height: 100.sp,
                        clipBehavior: Clip.antiAlias,
                        decoration:
                            BoxDecoration(color: ColorConstants.lightGreySecondary, borderRadius: BorderRadius.circular(16.r)),
                        child: Image.network(
                          'https://internationalclinics.com/wp-content/uploads/2022/05/push-up-1024x673.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.sp),
                              decoration: BoxDecoration(
                                  color: ColorConstants.primaryColor1,
                                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(6.r))),
                              child: Text(
                                'Intermediate',
                                style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, color: ColorConstants.white),
                              ),
                            ),
                          ),
                          Text(
                            'Push Up',
                            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 4.sp,
                          ),
                          Text(
                            '100 Push up a day',
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: ColorConstants.primaryColor1.withOpacity(0.5)),
                          ),
                          SizedBox(
                            height: 14.sp,
                          ),
                          LinearProgressWithLabel(progress: index == 1 ? 0.45 : 0.75)
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 19.w,
                    )
                  ],
                ),
              );
            })
      ],
    );
  }
}
