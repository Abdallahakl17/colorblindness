 
 

 

 
 
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
      width: 320.w,
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setWidth(22.0)),
        child: Column(
          children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.all(ScreenUtil().setWidth(20)),
              width: 280.w,
              height: 273.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage(image)),
              ),
            )),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: AppColor.onBoardingColor,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(28),
                    vertical: ScreenUtil().setHeight(10)),
                child: Column(children: [
                  Text(
                    maxLines: 3,
                    heading,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    maxLines: 3,
                    title,
                    style: Theme.of(context).textTheme.headlineSmall
                  ),
                  SizedBox(height: 10.h),
                  isLast
                      ? CustomButton(
                        heigth: 44,
                        width: double.infinity,
                          onTapped: () => Routes.navigateTo (context:context,widget: LoginScreen() )  ,
                          text: AppString.getStarted,
                        )
                      : InkWell(
                          onTap: () => Routes.navigateTo(context:context,widget: LoginScreen() )  ,
                          child: const ContanierBoarding()),
                  SizedBox(
                    height: 9.h,
                    width: double.infinity,
                  ),
                  Expanded(
                    child: CustomPageIndicator(
                      pageController: globalPageController,
                      count: 3,
                    ),
                  )
                ]),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
