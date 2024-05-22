import '../../../widgets/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init;

    return Padding(
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
                  onTap: () {
                    showDialog(barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return Stack(
                          alignment: Alignment.center,
                          clipBehavior: Clip
                              .none, // Ensure the Positioned widget can be outside the bounds of the Stack
                          children: [
                            Container(
                              width: 271.w,
                              height: 238.h,
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.r),
                                ),
                              ),
                              child: Column(
                                children: [
                                  // Add space to prevent overlapping with the image
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 64.h,
                                    ),
                                    child: SizedBox(
                                      width: 222.w,
                                      height: 66.h,
                                      child: Stack(
                                        children: [
                                          Center(
                                            child: Text(
                                              AppString.cameraText,
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  const ButtonsDialog(),
                                  SizedBox(height: 24.h), // Add bottom padding
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height /
                                  1.73.h, // Position the image above the dialog box
                              child: Container(
                                width: 72.w,
                                height: 72.h,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          AppColor.blackColor.withOpacity(0.15),
                                      spreadRadius: 3.r,
                                      blurRadius: 9.r,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20.r),
                                  color: AppColor.whiteColor,
                                ),
                                child: Image.asset(AppImages.imageCemraDilog),
                              ),
                            ),
                            Positioned(
                              right: 50.w,
                              bottom:
                                  MediaQuery.of(context).size.height / 1.82.h,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                child: IconButton(
                                  icon: const Icon(Icons.close,
                                      color: Colors.black),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
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
          SizedBox(height: 12.h),
          SizedBox(
            height: 169.h,
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) => const SpearatedRowItems(),
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(width: 16.w),
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            AppString.glassess,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 18.sp),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            height: 170.h,
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) => const SpearatedRowItems(),
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(width: 16.w),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonsDialog extends StatelessWidget {
  const ButtonsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.buttonsColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      width: 150.w,
      height: 42.h,
      child: Center(
        child: Text(
          AppString.start,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
