import '../imports.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2(
      {super.key,
      required this.image,
      required this.heading,
      required this.title});
  final String image;
  final String heading;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // 320

      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setWidth(22.0)),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: 273.w,
                height: 270.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain, image: AssetImage(image)),
                ),
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: AppColor.onBoardingColor,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(30),
                ),
                child: Column(children: [
                  SizedBox(
                    height: 26.h,
                  ),
                  Text(
                    maxLines: 3,
                    heading,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenUtil().setHeight(16)),
                    child: Text(
                        maxLines: 3,
                        title,
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                  isLast
                      ? CustomButton(
                          heigth: 44,
                          width: double.infinity,
                          onTapped: () => Routes.navigateToAndRemove(
                              context: context, widget: LoginScreen()),
                          text: AppString.getStarted,
                        )
                      : InkWell(
                          onTap: () => Routes.navigateToAndRemove(
                              context: context, widget: LoginScreen()),
                          child: const ContanierBoarding()),
                  SizedBox(
                    height: 10.h,
                    width: double.infinity,
                  ),
                  CustomPageIndicator(
                    pageController: globalPageController,
                    count: 3,
                  ),
                ]),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
