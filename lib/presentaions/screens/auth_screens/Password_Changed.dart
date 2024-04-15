import 'package:color_blindness/presentaions/widgets/imports.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.imageSuccess,
              height: 100.h,
              width: 100.w,
            ),
            SizedBox(
              height: AppSized.heightbetweenContanier.h,
            ),
            Text(
              AppString.passwordChanged,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: 8.h,
            ),
            SizedBox(
                width: 226.w,
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      AppString.passwordChangedText,
                      style: Theme.of(context).textTheme.labelMedium,
                    ))),
            SizedBox(
              height: AppSized.heightbetweenContanier.h,
            ),
            CustomButton(
              radius: 50.r,
              text: AppString.backtoLogin,
              onTapped: () => Routes.navigateToAndRemove(
                  context: context, widget: LoginScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
