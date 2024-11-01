import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/ThemeConstants.dart';

class BuildFastWarmup extends StatefulWidget {
  const BuildFastWarmup({super.key});

  @override
  State<BuildFastWarmup> createState() => _BuildFastWarmupState();
}

class _BuildFastWarmupState extends State<BuildFastWarmup> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 118.sp,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fast Warmup',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
          ),
          const Spacer(),
          SizedBox(
            height: 80.sp,
            child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    width: 190.w,
                    height: 80.sp,
                    margin: EdgeInsets.only(right: 16.w),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(9.r)),
                    child: Padding(
                      padding: EdgeInsets.all(7.sp),
                      child: Row(
                        children: [
                          Container(
                            width: 66.sp,
                            height: 66.sp,
                            clipBehavior: Clip.antiAlias,
                            decoration:
                                BoxDecoration(color: ColorConstants.lightGreySecondary, borderRadius: BorderRadius.circular(6.r)),
                            child: Image.network(
                              'https://nakednutrition.com/cdn/shop/articles/Depositphotos_178293138_S_2048x.jpg?v=1706603505',
                              fit: BoxFit.cover,
                              alignment: Alignment.centerRight,
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
                                  'Leg excercises',
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
                }),
          )
        ],
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
