import '../../widgets/imports.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});
  final TextEditingController emailController = TextEditingController();
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
              AppString.forgetPassword,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: AppSized.heightbetweenText.h,
            ),
            Text(
              AppString.forgotPasswordText,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(24.h)),
              child: CustomTextField(
                controller: emailController,
                labelText: AppString.enterYourEmail,
              ),
            ),
            CustomButton(
              text: AppString.sendCode,
              onTapped: () => Routes.navigateTo(
                  context: context, widget: const OtpVerification()),
            ),
            SizedBox(
              height: AppSized.heightbetweenContanier.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppString.rememberPassword,
                    style: Theme.of(context).textTheme.titleSmall),
                InkWell(
                  onTap: () {
                    Routes.navigateBack(context: context);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(2.0.w)),
                    child: Text(
                      AppString.login,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
