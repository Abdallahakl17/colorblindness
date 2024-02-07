import 'package:color_blindness/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_string.dart';

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
              width: 273.w,
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
                        fontSize: 28.sp, fontWeight: FontWeight.w500),
                  ),                  SizedBox(height: 10.h,)

               ,   Text(
                    maxLines: 3,
                    title,
                    style: GoogleFonts.poppins(
                        color: AppColor.titleBoardgingColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 10.h,)
,                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          AppString.skip,
                          style: GoogleFonts.poppins(
                              fontSize: 17.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Spacer(),
                      Container(
                          decoration: BoxDecoration(
                              color: AppColor.whiteColor,
                              borderRadius: BorderRadius.circular(20.r)),
                          width: 80.w,
                          height: 50.h,
                          child: Center(
                              child: Text(
                        AppString.next,
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp, fontWeight: FontWeight.bold),
                          ))),
                    ],
                  ),
                  SizedBox(
                    height: 9.h,
                    width: double.infinity,
                  ),
                  Expanded(
                    child: SmoothPageIndicator(
                      controller:
                          globalPageController, // PageController for the PageView
                      count: 3, // Total number of pages
                      effect: const SlideEffect(
                        spacing: 8.0, // Spacing between indicators
                        radius: 6.0, // Radius of the indicators
                        dotWidth: 6.0, // Width of each indicator
                        dotHeight: 6.0, // Height of each indicator
                        dotColor:
                            AppColor.dotsColors, // Color of the indicators
                        activeDotColor: AppColor
                            .blackColor, // Color of the active indicator
                      ),
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
