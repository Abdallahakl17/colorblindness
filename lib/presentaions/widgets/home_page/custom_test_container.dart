import 'package:color_blindness/presentaions/widgets/imports.dart';

class CustomTestContainer extends StatelessWidget {
  CustomTestContainer({
    Key? key,
    required this.onPressed,
    required this.imag,
    required this.text,
  }) : super(key: key);
  void Function()? onPressed;
  String imag;
  String text;

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
            CircleAvatar(
                backgroundImage: AssetImage(
              imag,
            )),
            SizedBox(
              width: 10.w,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.displayMedium,
            ),
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
                borderRadius:
                    BorderRadius.circular(ScreenUtil().setWidth(12).w),
              ),
              child: IconButton(
                onPressed: onPressed,
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
