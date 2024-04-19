// ignore_for_file: must_be_immutable

import '../../widgets/imports.dart';

class SingUpScreen extends StatelessWidget {
  SingUpScreen({super.key});
  TextEditingController emialContoller = TextEditingController();
  TextEditingController nameContoller = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ScreenUtil().setWidth(24)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              AppString.hello,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: 24.h,
            ),
            CustomTextField(
              controller: nameContoller,
              labelText: AppString.userName,
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              controller: emialContoller,
              labelText: AppString.email,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              controller: passwordContoller,
              labelText: AppString.password,
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              controller: passwordContoller,
              labelText: AppString.confirmPassword,
            ),
            
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(20)),
              child:
                  CustomButton(text: AppString.login, heigth: 56, width: 326),
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
                SizedBox(
                  width: double.infinity,
                  child: Row(
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
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height / 34.3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppString.dontHaveAccount,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: AppColor.blackColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(2.0)),
                        child: Text(
                          AppString.singUpNow,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  fontWeight: FontWeight.w800, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
