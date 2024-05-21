

import '../imports.dart';

class ContainerMainScreenView extends StatelessWidget {
  const ContainerMainScreenView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
      ScreenUtil.init;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 107.h,
          width: 327.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              color: AppColor.containerTestColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 120.w,
              ),
              SizedBox(
                  width: 146.w,
                  height: 44.h,
                  child: Text(
                    AppString.doYouKnow,
                    style: Theme.of(context).textTheme.titleSmall,
                  )),
              Padding(
                padding:   EdgeInsets.symmetric(horizontal: 5.w),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColor.continerMainScreen,
                  child: IconButton(
                      onPressed: () {
                        Routes.navigateTo(
                            context: context, widget: Test());
                      },
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: AppColor.whiteColor,
                        size: 15,
                      )),
                ),
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            left: 20,
            child: Container(
              clipBehavior: Clip.none,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r)),
              height: 127.h,
              width: 121.w,
              child: Image.asset(
                AppImages.imagegirlOutline,
                fit: BoxFit.cover,
              ),
            ))
      ],
    );
  }
}
