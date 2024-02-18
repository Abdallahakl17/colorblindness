

 
import 'package:color_blindness/presentaions/widgets/imports.dart';

ThemeData getDataThem() => ThemeData(
    appBarTheme:
        const AppBarTheme(backgroundColor: AppColor.hiddenColor,
          iconTheme: IconThemeData(color: AppColor.blackColor,size: 50)),
    textTheme: TextTheme(
      // heading
      displayLarge: GoogleFonts.poppins(
          color: AppColor.blackColor,
          fontSize: 24.sp,
          fontWeight: FontWeight.w600),
      headlineLarge: GoogleFonts.poppins(
          color: AppColor.blackColor,
          fontSize: 28.sp,
          fontWeight: FontWeight.w600),
      // title
      headlineSmall: GoogleFonts.poppins(
          color: AppColor.titleBoardgingColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600),
      //buttons
      headlineMedium:
          GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.bold),
      labelMedium: GoogleFonts.poppins(
          color: AppColor.titleBoardgingColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.normal),
      bodyLarge: GoogleFonts.poppins(
          color: AppColor.blackColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600),
    ));
