import 'package:color_blindness/presentaions/screens/home_page/main/test/cambridge/cambridgetest-.dart';
import 'package:color_blindness/presentaions/screens/home_page/main/test/cambridge/cambrigge-test-items.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

class TextContainerTest {
  String tex;
  String imag;
  TextContainerTest({required this.imag, required this.tex});
}

class Test extends StatelessWidget {
  Test({super.key});
  List<TextContainerTest> texts = [
    TextContainerTest(
        imag: AppImages.ishiharaTest, tex: AppString.ishiharaTest),
    TextContainerTest(
        imag: AppImages.framsworthTest, tex: AppString.framsworthLannternTest),
    TextContainerTest(
        imag: AppImages.cambridgeColorTest, tex: AppString.cambridgeColorTest),
    TextContainerTest(
        imag: AppImages.kidsColorBlindTest, tex: AppString.kidsColorBlindTest),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: AppBar(
              title: const Text(AppString.test),
              titleSpacing: 4.w,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(ScreenUtil().setWidth(24)),
          child: ListView.separated(
            itemBuilder: (context, index) => CustomTestContainer(
              imag: texts[index].imag,
              text: texts[index].tex,
              onPressed: () {
                Routes.navigateTo(
                    context: context, widget: const CambridgeTest());
              },
            ),
            itemCount: texts.length,
            separatorBuilder: (context, index) => SizedBox(
              height: 20.h,
            ),
          ),
        ));
  }
}
