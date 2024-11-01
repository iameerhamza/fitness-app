import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/ThemeConstants.dart';

class LinearProgressWithLabel extends StatelessWidget {
  final double progress; // Progress value between 0.0 and 1.0

  const LinearProgressWithLabel({required this.progress});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate the middle position of the filled portion
        double labelPosition = (constraints.maxWidth * progress) / 2;

        return Stack(
          alignment: Alignment.centerLeft,
          children: [
            // Background LinearProgressIndicator
            LinearProgressIndicator(
              minHeight: 16.sp,
              value: progress,
              color: ColorConstants.primaryColor2,
              backgroundColor: Color.fromRGBO(242, 242, 242, 1),
              borderRadius: BorderRadius.circular(3.r),
            ),
            // Centered label on the filled portion
            Positioned(
              left: labelPosition - 20, // Offset label to center it on the filled portion
              top: 0,
              bottom: 0,
              child: Container(
                alignment: Alignment.center,
                width: 40, // Width of the label container
                child: Text(
                  "${(progress * 100).toStringAsFixed(0)}%", // Display progress as percentage
                  style: TextStyle(color: ColorConstants.primaryColor1, fontWeight: FontWeight.w500, fontSize: 8.sp),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
