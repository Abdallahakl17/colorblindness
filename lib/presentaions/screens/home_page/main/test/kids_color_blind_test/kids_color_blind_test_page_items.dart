import 'package:color_blindness/presentaions/widgets/home_page/ColorChangingButtonTest.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

class KidsColorBlindTestPage extends StatefulWidget {
  const KidsColorBlindTestPage({
    super.key,
  });

  @override
  _KidsColorBlindTestPageState createState() => _KidsColorBlindTestPageState();
}

class _KidsColorBlindTestPageState extends State<KidsColorBlindTestPage> {
  String? _pressedDirection;
  Color _innerColor = AppColor.hiddenColor;

  void _changeColor() {
    setState(() {
      _innerColor = _innerColor == AppColor.hiddenColor
          ? AppColor.buttonsArrowColor
          : AppColor.hiddenColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 254.w,
                height: 254.h,
                child: const CircleAvatar(
                  backgroundImage: AssetImage(AppImages.cambridgeColorTest),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              const ColorChangingButton(),
              SizedBox(
                height: 34.h,
              ),
              SizedBox(
                height: 71.h,
                width: 330.w,
                child: Text(
                  AppString.selectItemIn3Sec,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

