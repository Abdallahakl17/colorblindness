import 'package:flutter/material.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

class ColorChangingButton extends StatefulWidget {
  const ColorChangingButton({Key? key, this.onTap}) : super(key: key);

  final VoidCallback? onTap;

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
    if (widget.onTap != null) {
      widget.onTap!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        padding: EdgeInsets.all(2),
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: AppColor.colorBorderCircleButton,
          ),
          color: AppColor.hiddenColor,
        ),
        child: Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: AppColor.colorBorderCircleButton,
            ),
            color: _innerColor,
          ),
        ),
      ),
    );
  }
}
