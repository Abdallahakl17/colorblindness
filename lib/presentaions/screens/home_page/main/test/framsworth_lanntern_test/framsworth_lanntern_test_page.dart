import 'package:flutter/material.dart';
import 'package:color_blindness/presentaions/widgets/home_page/ColorChangingButtonTest.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

class FramColorBlindTestPage extends StatefulWidget {
  const FramColorBlindTestPage({Key? key}) : super(key: key);

  @override
  _KidsColorBlindTestPage1State createState() =>
      _KidsColorBlindTestPage1State();
}

class _KidsColorBlindTestPage1State extends State<FramColorBlindTestPage> {
  String? _pressedDirection;
  Color _innerColor = AppColor.hiddenColor;

  void _changeColor() {
    setState(() {
      _innerColor = _innerColor == AppColor.hiddenColor
          ? AppColor.buttonsArrowColor
          : AppColor.hiddenColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              width: 254.w,
              height: 254.h,
              child: const CircleAvatar(
                backgroundImage: AssetImage(AppImages.catImage),
              ),
            ),
            SizedBox(height: 24.h),
            SizedBox(
              width: 260.w,
              height: 60.h,
              child: Row(
                children: [
                  const ColorChangingButton(),
                  Image.asset(AppImages.dogImage),
                  const Spacer(),
                  const ColorChangingButton(),
                  Image.asset(AppImages.truleImage),
                ],
              ),
            ),
            SizedBox(height: 34.h),
            SizedBox(
              height: 71.h,
              width: 330.w,
              child: Text(
                AppString.selectItemIn3Sec,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
