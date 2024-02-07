// import 'package:color_blindness/main.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../../../core/utils/app_color.dart';
// import '../../../core/utils/app_string.dart';
// import '../../screens/on_boarding/smooth_page_indicator.dart';

// // ignore: must_be_immutable
// class CustomOnboarding extends StatelessWidget {
//   CustomOnboarding({
//     super.key,
//     required this.imageBoarding,
//     required this.textHeading,
//     required this.textTitle,
//   });
//   String imageBoarding;
//   String textHeading;
//   String textTitle;

//   void Function()? onTapNext;
//   void Function()? onTapSkip;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 320.w,
//       height: double.maxFinite,
//       child: Padding(
//         padding: EdgeInsets.all(ScreenUtil().setWidth(27.0)),
//         child: Column(
//           children: [
//             Expanded(
//               child: Container(
//                 margin: EdgeInsets.all(ScreenUtil().setWidth(24)),
//                 width: 273.w,
//                 height: 273.h,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     fit: BoxFit.contain,
//                     image: AssetImage(imageBoarding),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: AppColor.onBoardingColor,
//                   borderRadius: BorderRadius.circular(30.r),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: ScreenUtil().setWidth(28),
//                     vertical: ScreenUtil().setHeight(16),
//                   ),
//                   child: Column(
//                     children: [
//                       Text(
//                         textHeading,
//                         maxLines: 3,
//                         style: GoogleFonts.poppins(
//                           fontSize: 28.sp,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text(
//                         textTitle,
//                         maxLines: 3,
//                         style: GoogleFonts.poppins(
//                           color: AppColor.titleBoardgingColor,
//                           fontSize: 14.sp,
//                           fontWeight: FontWeight.normal,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 16),
//                         child: Row(
//                           children: [
//                             InkWell(
//                               onTap: onTapSkip,
//                               child: Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Text(
//                                   AppString.skip,
//                                   style: GoogleFonts.poppins(
//                                     fontSize: 17.sp,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const Spacer(),
//                             InkWell(
//                               onTap: onTapNext,
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   color: AppColor.whiteColor,
//                                   borderRadius: BorderRadius.circular(20.r),
//                                 ),
//                                 width: 80.w,
//                                 height: 50.h,
//                                 child: Center(
//                                   child: Text(
//                                     AppString.next,
//                                     style: GoogleFonts.poppins(
//                                       fontSize: 17.sp,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10.h,
//                               width: double.infinity,
//                             ),
//                             Expanded(
//                               child: CustomPageIndicator(
//                                 count: 3,
//                                 pageController: globalPageController,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
