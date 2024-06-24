import 'package:flutter/material.dart';
import 'package:color_blindness/presentaions/widgets/home_page/ColorChangingButtonTest.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

class KidsColorBlindTestPage3 extends StatefulWidget {
  const KidsColorBlindTestPage3({Key? key}) : super(key: key);

  @override
  _KidsColorBlindTestPage3State createState() => _KidsColorBlindTestPage3State();
}

class _KidsColorBlindTestPage3State extends State<KidsColorBlindTestPage3> {
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
    return  Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 254.w,
                height: 254.h,
                child: const CircleAvatar(
                  backgroundImage: AssetImage(AppImages.feshhImage),
                ),
              ),
              SizedBox(height: 24.h),
              SizedBox(
                width: 260.w,
                height: 60.h,
                child: Row(
                  children: [
                    const ColorChangingButton(),
                    Image.asset(AppImages.fishImage),
                    const Spacer(),
                    const ColorChangingButton(),
                    Image.asset(AppImages.dogImage),
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
