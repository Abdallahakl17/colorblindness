
import '../../../widgets/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
      ScreenUtil.init;

    return Padding(
      padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 20.h),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
        ),
        SizedBox(
          height: 12.h,
        ),
        SizedBox(
          height: 169.h,
          child: ListView.separated(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) => const SpearatedRowItems(),
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              width: 16.w,
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          AppString.glassess,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontSize: 18.sp),
        ),
        SizedBox(
          height: 12.h,
        ),
        SizedBox(
          height: 170.h,
          child: ListView.separated(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) => const SpearatedRowItems(),
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              width: 16.w,
            ),
          ),
        ),
      ]),
    );
  }
}
