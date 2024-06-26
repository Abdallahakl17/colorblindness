 import 'package:color_blindness/presentaions/widgets/home_page/ColorChangingButtonTest.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';
 
class FramColorBlindTestPage extends StatefulWidget {
  final String image;

  const FramColorBlindTestPage({Key? key, required this.image}) : super(key: key);

  @override
  _FramColorBlindTestPageState createState() => _FramColorBlindTestPageState();
}

class _FramColorBlindTestPageState extends State<FramColorBlindTestPage> {
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              width: 254.w,
              height: 254.h,
              child: CircleAvatar(
                backgroundImage: AssetImage(widget.image),
              ),
            ),
            SizedBox(height: 24.h),
            SizedBox(
              height: 80.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'UP:     ',
                        style: Theme.of(context).textTheme.bodyLarge!,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        child: const ColorChangingButton(),
                      ),
                      Text(
                        'Yellow',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        child: const ColorChangingButton(),
                      ),
                      Text(
                        'Red',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        child: const ColorChangingButton(),
                      ),
                      Text(
                        'Green',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Down:',
                          style: Theme.of(context).textTheme.bodyLarge!),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        child: const ColorChangingButton(),
                      ),
                      Text(
                        'Yellow',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        child: const ColorChangingButton(),
                      ),
                      Text(
                        'Red',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        child: const ColorChangingButton(),
                      ),
                      Text(
                        'Green',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 34.h),
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
    );
  }
}
