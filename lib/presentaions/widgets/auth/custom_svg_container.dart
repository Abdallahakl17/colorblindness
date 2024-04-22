// ignore_for_file: must_be_immutable
import '../imports.dart';

class CustomContainerWithIcon extends StatelessWidget {
  CustomContainerWithIcon(
      {super.key, required this.image, required this.onTap});
  String image;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width:100.w,
        height: 56.h,
        decoration: BoxDecoration(
            border: Border.all(
              color: AppColor.dotsColors,
            ),
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: FittedBox(
            child: SvgPicture.asset(image),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
