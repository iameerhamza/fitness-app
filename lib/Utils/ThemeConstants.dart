import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData buildTheme(brightness) {
    var baseTheme = ThemeData(
      scaffoldBackgroundColor: ColorConstants.baseColor,
      splashColor: ColorConstants.baseColor,
      appBarTheme: AppBarTheme(
          surfaceTintColor: ColorConstants.baseColor,
          backgroundColor: ColorConstants.baseColor,
          shadowColor: ColorConstants.baseColor),
      colorScheme: ColorScheme.fromSeed(seedColor: ColorConstants.primaryColor1),
      useMaterial3: true,
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
    );
  }
}

class ColorConstants {
  static Color transparent = Colors.transparent;
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color baseColor = const Color.fromRGBO(247, 246, 250, 1);

  /// Primary Colors
  static Color primaryColor1 = const Color.fromRGBO(25, 33, 38, 1);
  static Color primaryColor2 = const Color.fromRGBO(187, 242, 70, 1);

  /// Secondary Colors
  static Color lightGreySecondary = const Color.fromRGBO(139, 143, 146, 1);
  static Color greySecondary = const Color.fromRGBO(94, 100, 104, 1);
  static Color darkGreySecondary = const Color.fromRGBO(56, 64, 70, 1);
  static Color purpleSecondary = const Color.fromRGBO(164, 138, 237, 1);
  static Color redSecondary = const Color.fromRGBO(237, 71, 71, 1);
  static Color yellowSecondary = const Color.fromRGBO(252, 196, 111, 1);
  static Color blueSecondary = const Color.fromRGBO(149, 204, 227, 1);
  static Color offWhite = const Color.fromRGBO(241, 241, 241, 1);
}
