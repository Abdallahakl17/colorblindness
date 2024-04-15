// ignore_for_file: must_be_immutable

import '../../widgets/imports.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController emialContoller = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ScreenUtil().setWidth(24.w)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppString.welcom,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(
                height: 24.h,
              ),
              CustomTextField(
                controller: emialContoller,
                labelText: AppString.enterYourEmail,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextField(
                controller: passwordContoller,
                labelText: AppString.enterYourPassword,
                suffixIcon: Icons.remove_red_eye_outlined,
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Routes.navigateTo(
                          context: context, widget: ForgetPassword());
                    },
                    child: Text(
                      AppString.forgetPassword,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  )),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(32.h)),
                child: CustomButton(
                    onTapped: () {},
                    text: AppString.login,
                    heigth: 56,
                    width: double.infinity),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          color: AppColor.dotsColors,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(8.0)),
                        child: Text(AppString.orLogin,
                            style: Theme.of(context).textTheme.headlineSmall),
                      ),
                      const Expanded(
                        child: Divider(
                          color: AppColor.dotsColors,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainerWithIcon(
                        onTap: () {},
                        image: AppImages.imageFacebook,
                      ),
                      CustomContainerWithIcon(
                        onTap: () {},
                        image: AppImages.imageGoogle,
                      ),
                      CustomContainerWithIcon(
                        onTap: () {},
                        image: AppImages.imageApple,
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppString.dontHaveAccount,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color: AppColor.blackColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                        onTap: () {
                          Routes.navigateTo(
                              context: context, widget: SingUpScreen());
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(2.0)),
                          child: Text(
                            AppString.singUpNow,
                            style: Theme.of(context).textTheme.titleLarge!,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
