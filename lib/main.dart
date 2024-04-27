import 'dart:developer';

import 'package:color_blindness/presentaions/controller/bloc_observ.dart';
import 'package:color_blindness/presentaions/controller/cubits/auth_cubit.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 3));
  FlutterNativeSplash.remove();
  Bloc.observer = MyBlocObserver();
  ScreenUtil.init;
  runApp(
    const ScreenUtilInit(
      designSize: Size(360, 800), // Provide the design size

      useInheritedMediaQuery: true,
      minTextAdapt: true, // Initialize minTextAdapt
      splitScreenMode: true, // Initializ
      child:
          //    DevicePreview(

          // enabled: !kReleaseMode,
          // builder: (context) =>
          MyApp(), // Wrap your app
    ),
  );
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Get the width and height of the screen
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    log(screenHeight.toString());
    log(screenWidth.toString());
    return MaterialApp(
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      theme: getDataThem(),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
