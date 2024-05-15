// ignore_for_file: must_be_immutable

import 'package:color_blindness/core/utils/services/serv.dart';
import 'package:color_blindness/core/utils/toast.dart';
import 'package:color_blindness/presentaions/controller/cubits/register_cubit.dart';
import 'package:color_blindness/presentaions/controller/states/auth_state.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';

import '../../widgets/imports.dart';

class SingUpScreen extends StatelessWidget {
  SingUpScreen({super.key});
  TextEditingController emialContoller = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();
  TextEditingController confirmPasswordContoller =
      TextEditingController(); // Add TextEditingController for confirm password
  TextEditingController nameContoller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init;
    return BlocProvider<AuthRegisterCubit>(
      create: (BuildContext context) {
        return sl<AuthRegisterCubit>();
      },
      child: BlocConsumer<AuthRegisterCubit, AuthLoginState>(
          listener: (BuildContext context, state) {
        if (state is SuccessStates) {
          Routes.navigateTo(context: context, widget: const MainPage());
        }
        if (state is ErorrStates) {
          showToast(
            tex: state.error,
            color: States.erorr,
          );
          print(state.error);
        }
      }, builder: (BuildContext context, state) {
        print(sl<AuthCubit>().hashCode);
        AuthRegisterCubit authCubit = AuthRegisterCubit.get(context);

        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppString.hello,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomTextField(
                        controller: nameContoller,
                        labelText: AppString.userName),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextField(
                        controller: emialContoller, labelText: AppString.email),
                    SizedBox(
                      height: 12.h,
                    ),
                    CustomTextField(
                                          obscureText: true,

                        controller: passwordContoller,
                        labelText: AppString.password),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextField(
                    obscureText: true,
                        controller:
                            confirmPasswordContoller, // Use confirm password controller
                        labelText: AppString.confirmPassword),
                    SizedBox(
                      height: 24.h,
                    ),
                    ConditionalBuilder(
                      condition: state is! LoadingState,
                      builder: (context) {
                        return CustomButton(
                          onTapped: () async {
                            if (formKey.currentState!.validate()) {
                              if (passwordContoller.text !=
                                  confirmPasswordContoller.text) {
                                showToast(
                                  tex: "Passwords do not match",
                                  color: States.erorr,
                                );
                              } else {
                                authCubit.register(
                                  name: nameContoller.text,
                                  email: emialContoller.text,
                                  password: passwordContoller.text,
                                );
                              }
                            }
                          },
                          text: AppString.login,
                          radius: 20,
                          heigth: 56.h,
                          width: double.infinity.w,
                        );
                      },
                      fallback: (BuildContext context) =>
                          const Center(child: CircularProgressIndicator()),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: AppColor.borderColors,
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
                            color: AppColor.borderColors,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    const CustomContainerIcon(),
                    SizedBox(
                      height: 32.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppString.alreadyHaveAccount,
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
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(2.0)),
                            child: Text(
                              AppString.loginNow,
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
            ),
          ),
        );
      }),
    );
  }
}
