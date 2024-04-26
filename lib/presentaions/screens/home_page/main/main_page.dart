import 'package:color_blindness/presentaions/screens/home_page/test.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

import '../../../widgets/home_page/con_icons_main_page.dart';
import '../../../widgets/home_page/container_home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: AppBar(
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person_2,
                  size: 32.w,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ContainerMainScreenView(),
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(24.h)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConMainIconsHome(
                    imag: AppImages.imageEyeIcon,
                    text: AppString.test,
                    onTap: () {
                      Routes.navigateTo(context: context, widget: Test());
                    },
                  ),
                  ConMainIconsHome(
                    imag: AppImages.imageGlassIcon,
                    text: AppString.glassess,
                    onTap: () {},
                  ),
                  ConMainIconsHome(
                    imag: AppImages.imageCameraIcon,
                    text: AppString.camera,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Text(
              AppString.articles,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 18.sp),
            )
          ],
        ),
      ),
    );
  }
}
