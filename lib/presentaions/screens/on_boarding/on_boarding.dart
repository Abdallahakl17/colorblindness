// ignore_for_file: avoid_print

import 'package:color_blindness/core/utils/app_images.dart';
import 'package:color_blindness/core/utils/app_string.dart';
import 'package:color_blindness/presentaions/widgets/onboarding/on2.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/shared/shared.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PageView(
        scrollDirection: Axis.horizontal,
        onPageChanged: (value) {
          if (value == 2) {
            setState(() {
              isLast = !isLast;
              print('islast');
            });
          } else {
            setState(() {
              isLast = !isLast;
              print('noislast');
            });
          }
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
      ),
    ));
  }
}
