import 'dart:io';

import 'package:color_blindness/presentaions/screens/home_page/camera/camera_page.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';
import 'package:image_picker/image_picker.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init;

    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip
          .none, // Ensure the Positioned widget can be outside the bounds of the Stack
      children: [
        Container(
          width: 271.w,
          height: 238.h,
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.all(
              Radius.circular(20.r),
            ),
          ),
          child: Column(
            children: [
              // Add space to prevent overlapping with the image
              Padding(
                padding: EdgeInsets.only(
                  top: 64.h,
                ),
                child: SizedBox(
                  width: 222.w,
                  height: 66.h,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 65.h,
                        width: 222.w,
                        child: Center(
                          child: Text(
                            AppString.cameraText,
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              ButtonsDialog(
                onTap: () async {
                  final ImagePicker picker = ImagePicker();
                  // Pick an image
                  final XFile? image =
                      await picker.pickImage(source: ImageSource.camera);
                  if (image != null) {
                    Routes.navigateTo(
                        context: context,
                        widget: EditImagePage(image: File(image.path)));
                    print('Image path: ${image.path}');
                  }
                },
              ),
              SizedBox(height: 24.h), // Add bottom padding
            ],
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height /
              1.80.h, // Position the image above the dialog box
          child: Container(
            width: 72.w,
            height: 72.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColor.blackColor.withOpacity(0.15),
                  spreadRadius: 3.r,
                  blurRadius: 9.r,
                  offset: const Offset(0, 4),
                ),
              ],
              borderRadius: BorderRadius.circular(20.r),
              color: AppColor.whiteColor,
            ),
            child: Image.asset(AppImages.imageCemraDilog),
          ),
        ),
        Positioned(
          right: 50.w,
          bottom: MediaQuery.of(context).size.height / 1.89.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: IconButton(
              icon: const Icon(Icons.close, color: AppColor.closeColor),
              onPressed: () {
                Routes.navigateBack(context: context);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class ButtonsDialog extends StatelessWidget {
  final VoidCallback onTap;

  const ButtonsDialog({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.buttonsColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      width: 150.w,
      height: 42.h,
      child: Center(
        child: GestureDetector(
          onTap: onTap,
          child: Text(
            AppString.start,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
