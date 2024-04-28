import 'package:color_blindness/presentaions/screens/home_page/test.dart';
import 'package:color_blindness/presentaions/widgets/home_page/spearated_Row_Items_main.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';
import 'package:flutter/gestures.dart';

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
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(64.h)),
          child: FloatingActionButton(
            backgroundColor: AppColor.hiddenColor,
            onPressed: () {},
            child: Container(
              width: 60.w,
              height: 60.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    AppColor.continerMainScreen,
                    AppColor.linearSearchGradient,
                  ],
                  stops: [0.34, 1],
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.search,
                  size: 24.w,
                  color: AppColor.whiteColor,
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 20.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const ContainerMainScreenView(),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil().setHeight(24.h)),
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
                height: 170.h,
                child: ListView.separated(
                  clipBehavior: Clip.none,
                  dragStartBehavior: DragStartBehavior.down,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => const SpearatedRowItems(),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
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
                  dragStartBehavior: DragStartBehavior.down,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => const SpearatedRowItems(),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    width: 16.w,
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
