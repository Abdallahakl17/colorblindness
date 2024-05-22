import 'package:color_blindness/presentaions/widgets/imports.dart';

class CambridgeScreen extends StatelessWidget {
  const CambridgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 520.h,
                child: Column(
                  children: [
                    SizedBox(
                      width: 254.w,
                      height: 254.h,
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(
                          AppImages.imageCTest,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    SizedBox(
                      width: 134,
                      height: 134,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              AppImages
                                  .imageArrowTop, // Replace with your top arrow image asset
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              AppImages
                                  .imageArrowRigth, // Replace with your right arrow image asset
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              AppImages
                                  .imageArrowBottom, // Replace with your bottom arrow image asset
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              AppImages
                                  .imageArrowLeft, // Replace with your left arrow image asset
                              width: 40.w,
                              height: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 34.h,
                    ),
                    SizedBox(
                      height: 70.h,
                      width: 320.w,
                      child: Text(
                        AppString.selectItemIn3Sec,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      text: AppString.back,
                      width: 149.w,
                      heigth: 43.h,
                    ),
                    CustomButton(
                      text: AppString.next,
                      width: 149.w,
                      heigth: 43.h,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
