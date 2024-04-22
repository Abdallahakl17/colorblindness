// ignore_for_file: must_be_immutable

import 'package:color_blindness/presentaions/controller/cubits/auth_cubit.dart';

import '../../widgets/imports.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController emialContoller = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init;
    return BlocProvider<AuthCubit>(
      create: (BuildContext context) {
        return AuthCubit();
      },
      child: BlocConsumer<AuthCubit, AuthStates>(
          listener: (context, state) {},
          builder: (context, state) {
            AuthCubit authCubit = AuthCubit.get(context);
            return Scaffold(
              appBar: AppBar(),
              body: Padding(
                padding: EdgeInsets.all(24.w),
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
                        labelText: AppString.enterYourEmail),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextField(
                        controller: passwordContoller,
                        obscureText: authCubit.isShow,
                        suffixIcon: authCubit.sufix,
                        onPressed: authCubit.showPassword,
                        labelText: AppString.enterYourPassword),
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
                    SizedBox(
                      height: 32.h,
                    ),
                    CustomButton(
                        onTapped: () {},
                        text: AppString.login,
                        radius: 20,
                        heigth: 56.h,
                        width: double.infinity.w),
                    SizedBox(
                      height: 32.h,
                    ),
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
                    SizedBox(
                      height: 24.h,
                    ),
                    const CustomContainerIcon(),
                    SizedBox(
                      height: 24.h,
                    ),
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
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: AppColor.titleBoardgingColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
