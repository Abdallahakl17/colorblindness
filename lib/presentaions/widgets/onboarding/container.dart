import '../imports.dart';

class ContanierBoarding extends StatelessWidget {
  const ContanierBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 260.w,
      child: Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppString.skip,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              globalPageController.nextPage(
                  duration: const Duration(milliseconds: 750),
                  curve: Curves.bounceInOut);
            },
            child: Container(
                decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(20.r)),
                width: 80.w,
                height: 50.h,
                child: Center(
                    child: Text(
                  AppString.next,
                  style: Theme.of(context).textTheme.bodyLarge,
                ))),
          ),
        ],
      ),
    );
  }
}
