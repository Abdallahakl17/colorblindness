import 'package:color_blindness/core/utils/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(ScreenUtil().setWidth(24)),
        child: Column(
          children: [
            Text(
              AppString.welcom,
               
            )
          ],
        ),
      ),
    );
  }
}
