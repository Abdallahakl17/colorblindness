import 'package:color_blindness/presentaions/widgets/imports.dart';

class SpearatedRowItems extends StatelessWidget {
    SpearatedRowItems({super.key, required this.img
   });
  String img;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {},
          child: Material(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(20.r),
            elevation: 5,
            child: Container(
              width: 169.w,
              height: 156.h,
              decoration: const BoxDecoration(color: AppColor.whiteColor),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                     img,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 7.h, horizontal: 13.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Text(
                                "Color Blindness case  .. ",
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Expanded(
                              child: Text("Lorem ipsum dolor \nsit amet",
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
