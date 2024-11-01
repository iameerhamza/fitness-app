import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Utils/ThemeConstants.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController? controller;
  FocusNode? focusNode;
  TextInputType? keyboardType;
  TextStyle? style, hintStyle;
  int? maxLines, minLines;
  bool? readOnly, obscureText, enableSuggestions, autocorrect, showCursor;
  String? obscuringCharacter, hintText;
  String? Function(String?)? validator;
  String? initialValue;
  void Function(String)? onChanged;
  double? borderRadius, borderWidth, fontSize, innerPadding;
  Color? borderSideColor;
  Color? selectedBorderSideColor;
  Widget? suffixIcon;
  Widget? prefixIcon;
  List<TextInputFormatter>? inputFormatters;
  Function()? onTap;
  final TextInputAction? textInputAction;
  final bool filled;
  final Color? fillColor;

  CustomTextFormField(
      {super.key,
      this.controller,
      this.focusNode,
      this.inputFormatters,
      this.keyboardType,
      this.style,
      this.obscureText = false,
      this.enableSuggestions = false,
      this.autocorrect = false,
      this.obscuringCharacter,
      this.onChanged,
      this.readOnly = false,
      this.showCursor = true,
      this.validator,
      this.initialValue,
      this.borderRadius,
      this.innerPadding,
      this.fontSize,
      this.borderWidth,
      this.borderSideColor,
      this.selectedBorderSideColor,
      this.prefixIcon,
      this.suffixIcon,
      this.hintStyle,
      this.maxLines,
      this.minLines,
      this.hintText,
      this.onTap,
      this.textInputAction,
      this.filled = false,
      this.fillColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      onTap: onTap,
      controller: controller,
      maxLines: maxLines ?? 1,
      initialValue: initialValue,
      minLines: minLines ?? 1,
      focusNode: focusNode,
      keyboardType: keyboardType ?? TextInputType.text,
      textInputAction: textInputAction,
      cursorColor: ColorConstants.primaryColor1,
      inputFormatters: inputFormatters,
      style: style,
      obscureText: obscureText!,
      enableSuggestions: enableSuggestions!,
      autocorrect: autocorrect!,
      // obscuringCharacter: obscuringCharacter,
      onChanged: onChanged,
      validator: validator,
      readOnly: readOnly!,
      showCursor: readOnly! ? false : showCursor!,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        filled: filled,
        fillColor: fillColor,
        hintStyle: hintStyle,
        contentPadding: EdgeInsets.all(innerPadding ?? 12.sp),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
          borderSide: BorderSide(color: borderSideColor ?? ColorConstants.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
          borderSide: BorderSide(color: selectedBorderSideColor ?? ColorConstants.transparent),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
          borderSide: BorderSide(color: borderSideColor ?? ColorConstants.transparent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
          borderSide: BorderSide(color: ColorConstants.redSecondary),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
          borderSide: BorderSide(color: borderSideColor ?? ColorConstants.redSecondary),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
