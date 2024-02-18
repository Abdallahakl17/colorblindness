import 'package:color_blindness/presentaions/widgets/imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 3));
  FlutterNativeSplash.remove();
  runApp(const ScreenUtilInit(
      designSize: Size(360, 690), // Provide the design size

      useInheritedMediaQuery: true,
      minTextAdapt: true, // Initialize minTextAdapt
      splitScreenMode: true, // Initializ
      child: MyApp()));
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
    print(screenHeight);
    print(screenWidth);
    return MaterialApp(
      theme: getDataThem(),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
