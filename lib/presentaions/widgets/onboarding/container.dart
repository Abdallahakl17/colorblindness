import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_string.dart';
import '../../../core/utils/shared/shared.dart';
import '../../../main.dart';

class ContanierBoarding extends StatelessWidget {
  const ContanierBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            AppString.skip,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            globalPageController.nextPage(
                duration: const Duration(milliseconds: 750),
                curve: Curves.bounceInOut);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(20.r)),
              width: 80.w,
              height: 50.h,
              child: Center(
                  child: Text(
                AppString.next,
                 style: Theme.of(context).textTheme.headlineSmall,
              ))),
        ),
      ],
    );
  }
}
