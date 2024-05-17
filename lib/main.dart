import 'dart:developer';

import 'package:color_blindness/core/utils/services/serv.dart';

import 'package:color_blindness/core/utils/shared/api_helper/api_helper.dart';
import 'package:color_blindness/presentaions/controller/bloc_observ.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();
  Bloc.observer = MyBlocObserver();
  ScreenUtil.init;
  Sevices().init();
   runApp(
    const ScreenUtilInit(
      designSize: Size(360, 800),
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      splitScreenMode: true,
      child: MyApp(),
    ),
  );
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    log(screenHeight.toString());
    log(screenWidth.toString());
    print(sl<LoginUsecase>().hashCode);
    return MaterialApp(
      theme: getDataThem(),
      debugShowCheckedModeBanner: false,
      home: const OnBoarding(),
    );
  }
}
