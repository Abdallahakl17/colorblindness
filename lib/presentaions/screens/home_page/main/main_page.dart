import 'package:color_blindness/presentaions/widgets/imports.dart';

import '../../../widgets/home_page/container_home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 20.h),
        child: Column(
          children: [
            const ContainerMainScreenView(),
            SizedBox(
              height: 22.h,
            ),
            Container(
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
                    width: 60,
                    height: 55,
                    child: Image.asset(
                      AppImages.imageCameraIcon,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 11.w,
                      ),
                      Text(
                        AppString.camera,
                        style: Theme.of(context).textTheme.displayMedium,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
//  IconButton(
//                       icon: Image.asset(
//                         AppImages.imageCameraIcon,
//                       ), // Replace 'icon.png' with your image path
//                       onPressed: () {
//                         // Handle button press
//                       },
                    // ),