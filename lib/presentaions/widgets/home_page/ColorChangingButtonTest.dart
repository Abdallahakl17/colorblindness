import 'package:color_blindness/presentaions/widgets/imports.dart';

class ColorChangingButton extends StatefulWidget {
  const ColorChangingButton({Key? key}) : super(key: key);

  @override
  _ColorChangingButtonState createState() => _ColorChangingButtonState();
}

class _ColorChangingButtonState extends State<ColorChangingButton> {
  Color _innerColor = AppColor.hiddenColor;

  void _changeColor() {
    setState(() {
      _innerColor = _innerColor == AppColor.hiddenColor
          ? AppColor.dotsColors
          : AppColor.hiddenColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        padding: EdgeInsets.all(2.r),
        width: 30.w,
        height: 30.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2.w,
            color: AppColor.colorBorderCircleButton,
          ),
          color: AppColor.hiddenColor,
        ),
        child: Container(
          width: 25.w,
          height: 25.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2.w,
              color: AppColor.colorBorderCircleButton,
            ),
            color: _innerColor,
          ),
        ),
      ),
    );
  }
}
