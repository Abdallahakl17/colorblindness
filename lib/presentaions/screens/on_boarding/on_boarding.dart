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
  void dispose() {
    globalPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: PageView(
          scrollDirection: Axis.horizontal,
          onPageChanged: (value) {
            if (value == 2) {
              setState(() {
                isLast = true;
                print('islast');
              });
            } else {
              setState(() {
                isLast = false;
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
        ));
  }
}
