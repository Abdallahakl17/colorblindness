import 'package:color_blindness/presentaions/widgets/imports.dart';

import 'kids_color_blind_test_page_items.dart';
import 'kids_color_items2.dart';
import 'kids_color_test3.dart';
import 'kids_color_test4.dart';
import 'result-screen-kids.dart';

class KidsTestPage extends StatefulWidget {
  const KidsTestPage({Key? key}) : super(key: key);

  @override
  _KidsTestPageState createState() => _KidsTestPageState();
}

class _KidsTestPageState extends State<KidsTestPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Widget> _pages = [
    const KidsColorBlindTestPage1(),
    const KidsColorBlindTestPage2(),
    const KidsColorBlindTestPage3(),
    const KidsColorBlindTestPage4(),
  ];

  void _onNext() {
    if (_currentPage < _pages.length - 1) {
      setState(() {
        _currentPage++;
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      });
    }
  }

  void _onBack() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage--;
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: PageView.builder(
              reverse: false,
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              itemCount: _pages.length,
              itemBuilder: (context, index) {
                return _pages[index];
              },
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
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
                  onTapped: () {
                    if (_pageController.page! < _pages.length - 1) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreenKids(),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
            SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
