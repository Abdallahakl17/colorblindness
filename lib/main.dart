import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentaions/screens/on_boarding/on_boarding.dart';

PageController globalPageController = PageController();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 3));
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    globalPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnBoarding(),
      ),
    );
  }
}
