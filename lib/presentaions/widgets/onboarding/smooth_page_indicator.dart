// ignore_for_file: must_be_immutable



import '../imports.dart';

class CustomPageIndicator extends StatelessWidget {
  CustomPageIndicator({
    super.key,
    required this.count,
    required this.pageController,
  });
   var pageController= PageController();
  int count;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController, count: count, // Total number of pages
      effect: const SlideEffect(
        spacing: 8.0, // Spacing between indicators
        radius: 6.0, // Radius of the indicators
        dotWidth: 6.0, // Width of each indicator
        dotHeight: 6.0, // Height of each indicator
        dotColor: AppColor.dotsColors, // Color of the indicators
        activeDotColor: AppColor.blackColor, // Color of the active indicator
      ),
    );
  }
}
