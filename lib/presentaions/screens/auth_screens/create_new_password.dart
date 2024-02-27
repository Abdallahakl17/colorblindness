
import '../../widgets/imports.dart';

class CrrateNewPassword extends StatelessWidget {
  CrrateNewPassword({super.key});
  final TextEditingController passwordController = TextEditingController();
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
              AppString.createPassword,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: AppSized.heightbetweenText.h,
            ),
            Text(
              AppString.createPasswordText,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(25.h)),
                child: CustomTextField(
                  controller: passwordController,
                  labelText: AppString.newPassword,
                )),
            SizedBox(
              height: AppSized.heightbetweenText.h,
            ),
            CustomTextField(
              controller: passwordController,
              labelText: AppString.confirmPassword,
            ),
            SizedBox(
              height: AppSized.heightbetweenContanier.h,
            ),
            CustomButton(
              text: AppString.resetPassword,
              onTapped: () => Routes.navigateTo(
                  context: context, widget:  PasswordChanged()),
            ),
          ],
        ),
      ),
    );
  }
}
