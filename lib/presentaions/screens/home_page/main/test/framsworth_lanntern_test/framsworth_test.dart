import 'dart:math';

import 'package:color_blindness/presentaions/screens/home_page/main/test/framsworth_lanntern_test/framsworth_lanntern_test_page.dart';
import 'package:color_blindness/presentaions/screens/home_page/main/test/framsworth_lanntern_test/result-screen-fram.dart';
import 'package:color_blindness/presentaions/widgets/home_page/ColorChangingButtonTest.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

class FramsworthTest extends StatefulWidget {
  const FramsworthTest({Key? key}) : super(key: key);

  @override
  _MultiPageColorBlindTestState createState() =>
      _MultiPageColorBlindTestState();
}

class _MultiPageColorBlindTestState extends State<FramsworthTest> {
  final PageController _pageController = PageController();
  final List<String> _images = [
    //red
    AppImages.red1,
    AppImages.red2,
    AppImages.red3,
    //yellow
    AppImages.yellow1,
    AppImages.yellow2,
    AppImages.yellow3,
    //green
    AppImages.green1,
    AppImages.green2,
    AppImages.green3,
  ];

  void _onBack() {
    if (_pageController.page! > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _onNext() {
    if (_pageController.page! < _images.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreenFram(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
          flex: 4,
          child: PageView.builder(
            controller: _pageController,
            itemCount: _images.length,
            itemBuilder: (context, index) {
              return FramColorBlindTestPage(image: _images[index]);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                text: AppString.back,
                width: 149,
                heigth: 43,
                onTapped: _onBack,
              ),
              CustomButton(
                text: AppString.next,
                width: 149,
                heigth: 43,
                onTapped: _onNext,
              ),
            ],
          ),
        ),
        SizedBox(height: 40.h),
      ]),
    );
  }
}
