  import 'package:color_blindness/presentaions/widgets/onboarding/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_string.dart';
import '../../../core/utils/shared/shared.dart';
import '../../routes/appRoutes.dart';
import '../custom_buttons.dart';
import 'smooth_page_indicator.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2(
      {super.key,
      required this.image,
      required this.heading,
      required this.title});
  final String image;
  final String heading;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320.w,
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setWidth(22.0)),
        child: Column(
          children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.all(ScreenUtil().setWidth(20)),
              width: 280.w,
              height: 273.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage(image)),
              ),
            )),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: AppColor.onBoardingColor,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(28),
                    vertical: ScreenUtil().setHeight(10)),
                child: Column(children: [
                  Text(
                    maxLines: 3,
                    heading,
                    style: GoogleFonts.poppins(
                        fontSize: 28.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    maxLines: 3,
                    title,
                    style: GoogleFonts.poppins(
                        color: AppColor.titleBoardgingColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10.h),
                  isLast
                      ? CustomButton(
                        heigth: 44,
                        width: double.infinity,
                          onTapped: () => Routes.navigateToLogin(context),
                          text: AppString.getStarted,
                        )
                      : InkWell(
                          onTap: () => Routes.navigateToLogin(context),
                          child: const ContanierBoarding()),
                  SizedBox(
                    height: 9.h,
                    width: double.infinity,
                  ),
                  Expanded(
                    child: CustomPageIndicator(
                      pageController: globalPageController,
                      count: 3,
                    ),
                  )
                ]),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
