import 'package:color_blindness/presentaions/controller/cubits/auth_cubit.dart';
import 'package:color_blindness/presentaions/screens/home_page/test.dart';
import 'package:device_preview/device_preview.dart';

import 'presentaions/widgets/imports.dart';

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
        theme: getDataThem(),
        debugShowCheckedModeBanner: false,
        home: SingUpScreen());
  }
}
