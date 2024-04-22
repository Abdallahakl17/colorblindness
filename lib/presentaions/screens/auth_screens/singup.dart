// ignore_for_file: must_be_immutable

import 'package:color_blindness/presentaions/controller/cubits/auth_cubit.dart';

import '../../widgets/imports.dart';

class SingUpScreen extends StatelessWidget {
  SingUpScreen({super.key});
  TextEditingController emialContoller = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();
  TextEditingController nameContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
            return Scaffold(
              appBar: AppBar(),
              body: Padding(
                padding: EdgeInsets.all(24.w),
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
                        controller: emialContoller,
                        labelText: AppString.email),
                    SizedBox(
                      height: 12.h,
                    ),
                    CustomTextField(
                        controller: passwordContoller,
                        
                       
                        labelText: AppString.password),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextField(
                        controller: passwordContoller,
                        
                       
                        labelText: AppString.confirmPassword),
                   
        SizedBox(
                      height: 24.h,
                    ),
                    CustomButton(
                        onTapped: () {},
                        text: AppString.sinUp,
                        radius: 20,
                        heigth: 56.h,
                        width: double.infinity.w),
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
          
    
  }
}

