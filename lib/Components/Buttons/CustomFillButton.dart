import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Utils/ThemeConstants.dart';

class CustomFilledButton extends StatelessWidget {
  final String? title;
  final Gradient? buttonGradients;
  final BorderRadiusGeometry? borderRadius;
  final double? width, height, btnRadius, textColorOpacity, fontSize, buttonIconSize, borderWidth;
  final Color? textColor, buttonIconColor, btnColor, borderColor;
  final VoidCallback? onPressed;
  final bool isTitleUpperCase, disableButton;
  final FontWeight? fontWeight;
  final TextStyle? style;
  final double? letterSpacing;
  final String? fontFamily;

  CustomFilledButton(
      {this.title,
      this.onPressed,
      this.width,
      this.borderRadius,
      this.isTitleUpperCase = true,
      this.disableButton = true,
      this.height,
      this.buttonIconSize,
      this.textColor,
      this.buttonIconColor,
      this.textColorOpacity = 1,
      this.btnColor,
      this.borderColor,
      this.btnRadius = 8,
      this.buttonGradients,
      this.fontSize,
      this.borderWidth,
      this.fontWeight,
      this.letterSpacing,
      this.style,
      this.fontFamily});

  @override
  Widget build(BuildContext context) {
    double buttonHeight = 54.sp;
    double buttonFontSize = 16.sp;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        backgroundColor: btnColor ?? ColorConstants.primaryColor1,
        shadowColor: Colors.transparent,
        padding: EdgeInsets.zero,
        side: BorderSide(color: borderColor ?? ColorConstants.transparent),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.circular(50.r)),
        minimumSize: Size(width ?? double.infinity, height ?? buttonHeight),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onPressed,
      child: Text(
        title!,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(
            color: textColor ?? ColorConstants.white, fontSize: fontSize ?? 16.sp, fontWeight: fontWeight ?? FontWeight.w600),
      ),
    );
  }
}
// class CustomFilledButton extends StatelessWidget {
//   final String? title;
//   final double? width, height, btnRadius, fontSize, btnIconSize, borderWidth;
//   final Color? textColor, btnIconColor, btnColor, borderColor, iconColor;
//   final VoidCallback? onPressed;
//   IconData? btnIcon;
//   Widget? imageButtonIcon;
//   FontWeight? fontWeight;
//   final bool? isTitleUpperCase;
//   String? fontFamily;
//
//   CustomFilledButton(
//       {super.key,
//       this.title,
//       this.width,
//       this.height,
//       this.btnRadius,
//       this.fontSize,
//       this.btnIconSize,
//       this.borderWidth,
//       this.textColor,
//       this.btnIconColor,
//       this.btnColor,
//       this.borderColor,
//       this.onPressed,
//       this.btnIcon,
//       this.imageButtonIcon,
//       this.fontWeight,
//       this.isTitleUpperCase = false,
//       this.iconColor,
//       this.fontFamily});
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onPressed,
//       style: ElevatedButton.styleFrom(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(btnRadius ?? 8.0),
//           ),
//           padding: const EdgeInsets.all(0),
//           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//           backgroundColor: btnColor ?? ColorConstants.appPrimaryColor,
//           minimumSize: Size(width ?? double.infinity, height ?? 48.0),
//           maximumSize: Size(width ?? double.infinity, height ?? 48.0)),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           StaticLocalizedText(
//             title ?? "",
//             isUpperCase: isTitleUpperCase!,
//             textAlign: TextAlign.center,
//             fontSize: fontSize,
//             fontFamily: fontFamily ?? englishRegular,
//             overflow: TextOverflow.ellipsis,
//             maxLines: 1,
//             fontColor: textColor ?? ColorConstants.whiteColor,
//           ),
//           SizedBox(
//             width: btnIcon != null ? 5.0 : 0.0,
//           ),
//           btnIcon != null
//               ? Icon(
//                   btnIcon,
//                   color: iconColor ?? ColorConstants.whiteColor,
//                   size: 16.0,
//                 )
//               : SizedBox()
//         ],
//       ),
//     );
//   }
// }
