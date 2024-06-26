import 'package:color_blindness/presentaions/widgets/home_page/show-dialog-camera.dart';

import '../../../widgets/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init;

    final List<Map<String, String>> articles = [
      {
        'title': 'What Causes Color Blindness?',
        'img': AppImages.image2Article,
        'link':
            'https://www.brainandlife.org/articles/people-who-are-color-blind-cant-see-the-full-range',
      },
      {
        'img': AppImages.imageGlassArticle,
        'title': 'Types of Color Vision Deficiency',
        'link':
            'https://www.colourblindawareness.org/colour-blindness/types-of-colour-blindness',
      },
      {
        'img': AppImages.imageGlass,
        'title': 'Color blindness - Diagnosis and treatment',
        'link':
            'https://www.mayoclinic.org/diseases-conditions/poor-color-vision/diagnosis-treatment/drc-20354991',
      },
      {
        'img': AppImages.imageGlassArticle,
        'title': 'How Does Technology Help?',
        'link':
            'https://chicagolighthouse.org/sandys-view/assistive-technology',
      },
    ];
    final List<Map<String, String>> glassess = [
      {
        'title': 'COLOR BLIND GLASSES',
        'img': AppImages.glasstype,
        'link': 'https://enchroma.com',
      },
      {
        'img': AppImages.lens,
        'title': 'Color Blind Lenses',
        'link': 'https://pilestone.com',
      },
      {
        'img': AppImages.glass3,
        'title': 'Discover a world',
        'link': 'https://colormax.org',
      },
      {
        'img': AppImages.imageGlass,
        'title': 'improve color vision',
        'link': 'https://www.vino.vi/collections/color-blind-glasses',
      },
    ];

    return Padding(
      padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ContainerMainScreenView(),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(24.h)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ConMainIconsHome(
                  imag: AppImages.imageEyeIcon,
                  text: AppString.test,
                  onTap: () {
                    Routes.navigateTo(context: context, widget: const Test());
                  },
                ),
                ConMainIconsHome(
                  imag: AppImages.imageGlassIcon,
                  text: AppString.glassess,
                  onTap: () {},
                ),
                ConMainIconsHome(
                  imag: AppImages.imageCameraIcon,
                  text: AppString.camera,
                  onTap: () {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return const ShowDialog();
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          Text(
            AppString.articles,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 18.sp),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            height: 169.h,
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: articles.length,
              itemBuilder: (context, index) => SpearatedRowItems(
                img: articles[index]['img']!,
                texx: articles[index]['title']!,
                url: articles[index]['link']!,
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(width: 16.w),
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            AppString.glassess,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 18.sp),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            height: 170.h,
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) => SpearatedRowItems(
                img: glassess[index]['img']!,
                texx: glassess[index]['title']!,
                url: glassess[index]['link']!,
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(width: 16.w),
            ),
          ),
        ],
      ),
    );
  }
}
