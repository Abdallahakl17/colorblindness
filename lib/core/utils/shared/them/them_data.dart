import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_color.dart';

ThemeData getDataThem(  )=>ThemeData( 
  textTheme: 
  
   TextTheme(

    // heading
    displayLarge:  GoogleFonts.poppins(
              color: AppColor.blackColor,
              fontSize: 24.sp,
              fontWeight: FontWeight.w600) 
              ,headlineLarge:  GoogleFonts.poppins(
              color: AppColor.blackColor,
              
              fontSize: 28.sp,
              fontWeight: FontWeight.w600),
              // title
              headlineSmall:  GoogleFonts.poppins(
                        color: AppColor.titleBoardgingColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                        //buttons
                        headlineMedium:  GoogleFonts.poppins(
                    fontSize: 16.sp, fontWeight: FontWeight.bold)
  )
);