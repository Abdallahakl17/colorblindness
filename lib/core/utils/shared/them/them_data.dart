import 'package:color_blindness/presentaions/widgets/imports.dart';

ThemeData getDataThem() => ThemeData(
      iconTheme: const IconThemeData(color: AppColor.titleBoardgingColor),
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColor.blackColor),
          backgroundColor: AppColor.hiddenColor,
          iconTheme: IconThemeData(
            color: AppColor.blackColor,
          )),
      textTheme: TextTheme(
        // heading
        displayLarge: GoogleFonts.poppins(
            color: AppColor.blackColor,
            fontSize: 24.sp,
            fontWeight: FontWeight.w600),
        headlineLarge: GoogleFonts.poppins(
            color: AppColor.blackColor,
            fontSize: 28.sp,
            fontWeight: FontWeight.w500),
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
            fontWeight: FontWeight.w500),
        // loginNow
        titleLarge: GoogleFonts.poppins(
            color: AppColor.blackColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold),
        // text  contianer test
        displayMedium: GoogleFonts.poppins(
            color: AppColor.blackColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500),
        // textnowlogin
        titleSmall: GoogleFonts.poppins(
            color: AppColor.blackColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.normal),
        bodyLarge: GoogleFonts.poppins(
            color: AppColor.blackColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600),
        // verfiy
        bodyMedium: GoogleFonts.poppins(
            color: AppColor.titleBoardgingColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500),
      ),
    );
