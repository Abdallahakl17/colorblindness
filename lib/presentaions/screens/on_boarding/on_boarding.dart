import 'package:color_blindness/core/utils/app_images.dart';
import 'package:color_blindness/core/utils/app_string.dart';
import 'package:color_blindness/main.dart';
import 'package:color_blindness/presentaions/screens/on_boarding/on2.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({super.key});
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: PageView(
      onPageChanged: (value) {
        index = 0;
      },
      controller: globalPageController,
      children: const [
        OnBoarding2(
          heading: AppString.onBoardingHead,
          image: AppImages.imagesOn1,
          title: AppString.onBoardingTitle,
        ),
        OnBoarding2(
          heading: AppString.onBoardingHead1,
          image: AppImages.imagesOn2,
          title: AppString.onBoardingTitle1,
        ),
        OnBoarding2(
          heading: AppString.onBoardingHead2,
          image: AppImages.imagesOn3,
          title: AppString.onBoardingTitle2,
        ),
      ],
    ));
  }
}
