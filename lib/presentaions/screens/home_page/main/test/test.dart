import 'package:color_blindness/presentaions/screens/home_page/main/test/cambridge/cambridgetest-.dart';
import 'package:color_blindness/presentaions/screens/home_page/main/test/framsworth_lanntern_test/framsworth_lanntern_test_page.dart';
import 'package:color_blindness/presentaions/screens/home_page/main/test/ishihara_test/ishihara_test_page.dart';
import 'package:color_blindness/presentaions/screens/home_page/main/test/kids_color_blind_test/kids_color_blind_test.dart';
import 'package:color_blindness/presentaions/screens/home_page/main/test/kids_color_blind_test/kids_color_blind_test_page_items.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

class TextContainerTest {
  String tex;
  String imag;
  void Function()? onPressed;
  TextContainerTest(
      {required this.imag, required this.tex, required this.onPressed});
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    List<TextContainerTest> texts = [
      TextContainerTest(
          imag: AppImages.ishiharaTest,
          tex: AppString.ishiharaTest,
          onPressed: () {
            Routes.navigateTo(context: context, widget: IshiharaTestPage());
          }),
      TextContainerTest(
          imag: AppImages.framsworthTest,
          tex: AppString.framsworthLannternTest,
          onPressed: () {
            Routes.navigateTo(
                context: context, widget:   FramColorBlindTestPage());
          }),
      TextContainerTest(
          imag: AppImages.cambridgeColorTest,
          tex: AppString.cambridgeColorTest,
          onPressed: () {
            Routes.navigateTo(context: context, widget: const CambridgeTest());
          }),
      TextContainerTest(
          imag: AppImages.kidsColorBlindTest,
          tex: AppString.kidsColorBlindTest,
          onPressed: () {
            Routes.navigateTo(context: context, widget:   KidsTestPage());
          }),
    ];
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
              onPressed: texts[index].onPressed,
            ),
            itemCount: texts.length,
            separatorBuilder: (context, index) => SizedBox(
              height: 20.h,
            ),
          ),
        ));
  }
}
