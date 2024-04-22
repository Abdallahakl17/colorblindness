import '../imports.dart';

class CustomContainerIcon extends StatelessWidget {
  const CustomContainerIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 100.w,
          height: 60.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all( width: 1.3,
                color: AppColor.borderColors,
              )),
          child: Center(child: SvgPicture.asset(AppImages.imageFacebook)),
        ),
        Container(
          width: 100.w,
          height: 60.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all( width: 1.3,
                color: AppColor.borderColors,
              )),
          child: Center(child: SvgPicture.asset(AppImages.imageGoogle)),
        ),
        Container(
          width: 100.w,
          height: 60.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                width: 1.3,
                color: AppColor.borderColors,
              )),
          child: Center(
              child: SvgPicture.asset(
            AppImages.imageApple,
            fit: BoxFit.contain,
          )),
        ),
      ],
    );
  }
}
