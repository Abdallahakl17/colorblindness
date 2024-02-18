// ignore_for_file: must_be_immutable



import 'imports.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.radius = 20, required this.text,this.onTapped,required this.heigth,required this.width});
  double radius;
  double heigth;
  double width;
  String text;
  void Function()?onTapped;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        height: heigth.h,
        width: width.w,
        // height: 44,
        // width: double.infinity,
        decoration: BoxDecoration(
            color: AppColor.buttonsColor,
            borderRadius: BorderRadius.circular(radius)),
        child: Center(
            child: Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge
        )),
      ),
    );
  }
}
