import '../imports.dart';

class ConMainIconsHome extends StatelessWidget {
  ConMainIconsHome({
    super.key,
    required this.imag,
    required this.onTap,
    required this.text,
  });
  void Function()? onTap;
  String text;
  String imag;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92.w,
      height: 76.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12.r,
          ),
          color: AppColor.containerTestColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 60.w,
            height: 50.h,
            child: InkWell(
              onTap: onTap,
              child: Image.asset(
                imag,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 11.w,
              ),
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontWeight: FontWeight.w700),
              )
            ],
          )
        ],
      ),
    );
  }
}
