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
        appBar: AppBar(
          centerTitle: false,
            leadingWidth: 24.w,
            title: const Text(
              AppString.test,
            )),
        body: Padding(
          padding: EdgeInsets.all(ScreenUtil().setWidth(24)),
          child: ListView.separated(
            itemBuilder: (context, index) => CustomTestContainer(
              imag: texts[index].imag,
              text: texts[index].tex,
              onPressed: () {},
            ),
            itemCount: texts.length,
            separatorBuilder: (context, index) => SizedBox(
              height: 20.h,
            ),
          ),
        ));
  }
}
