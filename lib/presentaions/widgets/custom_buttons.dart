// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/app_color.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.radius = 20, required this.text,this.onTapped});
  double radius;
  String text;
  void Function()?onTapped;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        height: 44,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColor.buttonsColor,
            borderRadius: BorderRadius.circular(radius)),
        child: Center(
            child: Text(
          text,
          style: GoogleFonts.poppins(
              color: AppColor.blackColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
