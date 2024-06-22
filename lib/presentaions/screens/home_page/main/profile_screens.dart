import 'package:color_blindness/presentaions/widgets/imports.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 130.w,
              height: 130.h,
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  AppImages.imageCTest2,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            const ProfileContainerProp(),
            SizedBox(height: 20.h),
            const ProfileContProp()
          ],
        ),
      ),
    );
  }
}

class ProfileContainerProp extends StatelessWidget {
  const ProfileContainerProp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(25.r),
        clipBehavior: Clip.hardEdge,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              CooItemsRow(
                  iconInfo: Icons.person_outline,
                  tex: 'Personal Info',
                  onPressed: () {}),
              CooItemsRow(
                  iconInfo: Icons.remove_red_eye,
                  tex: 'Text and Display',
                  onPressed: () {}),
              CooItemsRow(
                  iconInfo: Icons.language, tex: 'Language', onPressed: () {}),
              CooItemsRow(
                  iconInfo: Icons.table_chart, tex: 'Themes', onPressed: () {}),
            ],
          ),
        ));
  }
}

class ProfileContProp extends StatelessWidget {
  const ProfileContProp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(25.r),
        clipBehavior: Clip.hardEdge,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              CooItemsRow(
                  iconInfo: Icons.privacy_tip,
                  tex: 'Privacy Policy',
                  onPressed: () {}),
              CooItemsRow(
                  iconInfo: Icons.logout,
                  tex: 'Log Out',
                  color: AppColor.redColor,
                  onPressed: () {}),
            ],
          ),
        ));
  }
}

class CooItemsRow extends StatelessWidget {
  CooItemsRow(
      {super.key,
      required this.iconInfo,
      required this.tex,
      required this.onPressed,
      this.color = AppColor.blackColor});

  final IconData iconInfo;
  final String tex;
  Color? color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: (10).h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            iconInfo,
            // Icons.person_outline,
            color: color,
          ),
          const Spacer(flex: 1),
          Text(
            tex,
            // 'Personal Info',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.w400),
          ),
          const Spacer(
            flex: 2,
          ),
          IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ))
        ],
      ),
    );
  }
}
