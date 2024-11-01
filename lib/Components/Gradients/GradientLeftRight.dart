import 'package:flutter/material.dart';

class GradientLeftRight extends StatelessWidget {
  final double? width;
  final isOpposite;
  final Color? color;

  const GradientLeftRight({this.width, this.isOpposite = false, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 100,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: isOpposite ? Alignment.centerRight : Alignment.centerLeft,
          end: isOpposite ? Alignment.centerLeft : Alignment.centerRight,
          colors: <Color>[color!, color!.withOpacity(0.0)],
        ),
      ),
    );
  }
}
