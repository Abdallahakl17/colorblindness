import 'package:color_blindness/presentaions/screens/on_boarding/on_boarding.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';
import 'package:device_preview/device_preview.dart';

import 'presentaions/screens/home_page/test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 3));
  FlutterNativeSplash.remove();

  runApp(ScreenUtilInit(
      designSize: const Size(375, 812), // Provide the design size

      useInheritedMediaQuery: true,
      minTextAdapt: true, // Initialize minTextAdapt
      splitScreenMode: true, // Initializ
      child: DevicePreview(
          enabled: !kReleaseMode,
          builder: (context) => const MyApp() // Wrap your app
          )));
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
    ScreenUtil.init(context);
    // Get the width and height of the screen
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    print(screenHeight);
    print(screenWidth);
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: getDataThem(),
      debugShowCheckedModeBanner: false,
      home: const OnBoarding(),
    );
  }
}
