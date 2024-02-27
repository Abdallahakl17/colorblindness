
import '../../widgets/imports.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: ScreenUtil().setHeight(32.h),
            horizontal: ScreenUtil().setWidth(24.w)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppString.otp,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: AppSized.heightbetweenText.h,
            ),
            Text(
              AppString.otpText,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(25.h),
                      bottom: ScreenUtil().setHeight(32.h)),
                  child: OtpTextField(borderRadius: BorderRadius.circular(12.r),
                    fieldWidth: 70,
                    numberOfFields: 4,
                    fillColor: AppColor.titleBoardgingColor,
                    borderColor: AppColor.dotsColors,
                    showFieldAsBox: true,
                    focusedBorderColor: AppColor.dotsColors,
                    onCodeChanged: (String code) {},
                    onSubmit: (String verificationCode) {
                      // showDialog(
                      //   context: context,
                      //   builder: (context) {
                      //     return AlertDialog(
                      //       title: const Text("Verification Code"),
                      //       content: Text('Code entered is $verificationCode'),
                      //     );
                      //   },
                      // );
                    },
                  ),
                ),
              ],
            ),
            CustomButton(
              text: AppString.sendCode,
              onTapped: () => Routes.navigateTo(context: context, widget: CrrateNewPassword()),
            ),
            SizedBox(
              height: AppSized.heightbetweenContanier.h,
            ),
          ],
        ),
      ),
    );
  }
}
