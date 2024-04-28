import 'package:color_blindness/presentaions/widgets/imports.dart';

class SpearatedRowItems extends StatelessWidget {
  const SpearatedRowItems({
    super.key,
  });

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
              height: 166.h,
              decoration: const BoxDecoration(color: AppColor.whiteColor),
              child: Column(
                children: [
                  Image.asset(
                    AppImages.imageGlassArticle,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 7.h, horizontal: 13.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 147.w,
                            height: 19.h,
                            child: Text(
                              "Color Blindness case  .. ",
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ),
                          Text("Lorem ipsum dolor \nsit amet",
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
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
