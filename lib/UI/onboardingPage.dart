import 'package:fitness_app/Components/Buttons/CustomFillButton.dart';
import 'package:fitness_app/Components/Gradients/GradientTopBottom.dart';
import 'package:fitness_app/UI/navBarPage.dart';
import 'package:fitness_app/Utils/ThemeConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 565.sp,
            color: ColorConstants.lightGreySecondary,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.network(
                  'https://images.squarespace-cdn.com/content/v1/62b2bdb0085c89429582d92e/10cfee79-fc12-4a3a-89c8-a3fe3b5f52e0/unsplash-image-zQNDCje06VM.jpg?format=1000w',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                GradientTopBottom(
                  height: 193.sp,
                  color: ColorConstants.baseColor,
                  isBottom: true,
                )
              ],
            ),
          ),
          SizedBox(
            height: 9.sp,
          ),
          SizedBox(
            width: 270.w,
            child: Text(
              'Wherever You Are Health Is Number One',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(
            height: 24.sp,
          ),
          Text(
            'There is no instant way to a healthy life',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400, color: ColorConstants.primaryColor1.withOpacity(0.5)),
          ),
          Spacer(),
          CustomFilledButton(
            width: 350.w,
            height: 56.sp,
            title: 'Get Started',
            textColor: ColorConstants.white,
            onPressed: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
                return const NavBarPage();
              }));
            },
          ),
          SizedBox(
            height: 24.sp,
          ),
        ],
      ),
    );
  }
}
