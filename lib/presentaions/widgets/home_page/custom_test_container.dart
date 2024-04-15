import 'package:color_blindness/presentaions/widgets/imports.dart';



class CustomTestContainer extends StatelessWidget {
  const CustomTestContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);


    return Container(
      decoration: BoxDecoration(
        color: AppColor.containerTestColor,
        borderRadius: BorderRadius.circular(AppSized.raduiscontainer.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
        child: Row(
          children: [
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColor.onBoardingColor.withOpacity(0.5),
                    spreadRadius: -5,
                    blurRadius: 7,
                    offset: const Offset(0, 4),
                  ),
                ],
                color: AppColor.buttonsColor,
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColor.buttonsArrowColor,
                    AppColor.containerTestColor,
                    AppColor.containerDotslinear2Color,
                  ],
                ),
                borderRadius: BorderRadius.circular(ScreenUtil().setWidth(12).w),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.navigate_next_sharp,
                  color: AppColor.titleBoardgingColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
