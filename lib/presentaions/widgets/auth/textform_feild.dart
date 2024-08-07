// ignore_for_file: must_be_immutable

import 'package:color_blindness/presentaions/widgets/imports.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  void Function(String)? onChang;
  CustomTextField({
    super.key,
    required this.controller,
    this.onChang,
    this.suffixIcon,
    required this.labelText,
    this.hintText = '',
    this.prefixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChang,
      
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        // Remove border color
        hoverColor: AppColor.borderColors,
        enabled: true,
        filled: true,
        fillColor: AppColor.textFeildColor,
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.labelMedium,
        hintText: hintText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,

        border: OutlineInputBorder(

            borderSide:  BorderSide(color: AppColor.borderColors,width: ScreenUtil().setWidth(20.w)),
            borderRadius: BorderRadius.all(Radius.circular(ScreenUtil().setWidth(20.r)))),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $labelText';
        }
        return null;
      },
    );
  }
}
