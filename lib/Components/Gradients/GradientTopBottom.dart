import 'package:flutter/material.dart';

class GradientTopBottom extends StatelessWidget {
  final double? height;
  final isBottom;
  final Color? color;
  final double? colorOpacity;

  const GradientTopBottom({this.height, this.isBottom = false, this.color, this.colorOpacity});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 100,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          tileMode: TileMode.clamp,
          end: isBottom ? Alignment(0.0, -1) : Alignment(0.0, 1),
          begin: isBottom ? Alignment(0.0, 1) : Alignment(0.0, -1),
          colors: <Color>[color!.withOpacity(colorOpacity ?? 1), color!.withOpacity(0.0)],
        ),
      ),
    );
  }
}
