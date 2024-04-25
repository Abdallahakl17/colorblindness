import 'package:color_blindness/presentaions/widgets/imports.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 105.h,
                  width: 327.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: AppColor.containerTestColor),
                ),
                Positioned(
                    bottom: -5,
                    left: 20,
                    child: Image.asset(
                      AppImages.imagegirlOutline,
                      height: 127.h,
                      width: 127.w,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
