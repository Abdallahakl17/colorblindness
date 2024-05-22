import 'package:color_blindness/presentaions/widgets/imports.dart';

class ButtonsDialog extends StatelessWidget {
  const ButtonsDialog({super.key,required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
        ScreenUtil.init;

    return GestureDetector(onDoubleTap: onTap,
      child: Container(
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
      ),
    );
  }
}
