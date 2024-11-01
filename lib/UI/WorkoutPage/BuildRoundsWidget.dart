import 'package:fitness_app/Utils/ThemeConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildRoundsWidget extends StatefulWidget {
  const BuildRoundsWidget({super.key});

  @override
  State<BuildRoundsWidget> createState() => _BuildRoundsWidgetState();
}

class _BuildRoundsWidgetState extends State<BuildRoundsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Rounds',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700, color: ColorConstants.white),
            ),
            Text.rich(
                style: TextStyle(color: ColorConstants.white),
                TextSpan(children: [
                  TextSpan(
                    text: '1',
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                    text: '/8',
                    style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  )
                ]))
          ],
        ),
        SizedBox(
          height: 16.sp,
        ),
        ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: 100.sp),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                height: 74.sp,
                margin: EdgeInsets.only(bottom: 16.sp),
                decoration: BoxDecoration(color: ColorConstants.darkGreySecondary, borderRadius: BorderRadius.circular(15.r)),
                child: Padding(
                  padding: EdgeInsets.all(8.0.sp),
                  child: Row(
                    children: [
                      Container(
                        width: 58.sp,
                        height: 58.sp,
                        clipBehavior: Clip.antiAlias,
                        decoration:
                            BoxDecoration(color: ColorConstants.lightGreySecondary, borderRadius: BorderRadius.circular(13.r)),
                        child: Image.network(
                          'https://cdn.shopify.com/s/files/1/1497/9682/files/Basic_Principles_of_HIRT.png?v=1666103273',
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Jumping Jacks',
                              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: ColorConstants.white),
                            ),
                            SizedBox(
                              height: 6.sp,
                            ),
                            Text(
                              '00:30',
                              style: TextStyle(
                                  fontSize: 13.sp, fontWeight: FontWeight.w400, color: ColorConstants.white.withOpacity(0.5)),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                          radius: 14.r,
                          backgroundColor: ColorConstants.primaryColor1,
                          child: Icon(
                            Icons.play_arrow,
                            color: ColorConstants.primaryColor2,
                            size: 12.sp,
                          ))
                    ],
                  ),
                ),
              );
            })
      ],
    );
  }
}
