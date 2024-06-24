import 'package:color_blindness/presentaions/widgets/imports.dart';
import 'package:flutter/material.dart';

class IshiharaScreenItems extends StatelessWidget {
  final String image;
  final Function(String) onSelect;

  const IshiharaScreenItems({
    super.key,
    required this.image,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.h),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              width: 254.w,
              height: 254.h,
              child: CircleAvatar(
                backgroundImage: AssetImage(image),
              ),
            ),
            const SizedBox(height: 24.0),
            SizedBox(
              height: 113.h,
              width: 340.w,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    bottom: 60.h,
                    left: 0.w,
                    child: IshiharaButton(
                      text: '2',
                      onTap: () => onSelect('2'),
                    ),
                  ),
                  Positioned(
                    bottom: 40.h,
                    left: 60.w,
                    child: IshiharaButton(
                      text: '27',
                      onTap: () => onSelect('27'),
                    ),
                  ),
                  Positioned(
                    bottom: 30.h,
                    right: 120.w,
                    child: IshiharaButton(
                      text: '74',
                      onTap: () => onSelect('74'),
                    ),
                  ),
                  Positioned(
                    bottom: 60.h,
                    right: 0.w,
                    child: IshiharaButton(
                      text: '12',
                      onTap: () => onSelect('12'),
                    ),
                  ),
                  Positioned(
                    bottom: 40.h,
                    right: 60.w,
                    child: IshiharaButton(
                      text: '42',
                      onTap: () => onSelect('42'),
                    ),
                  ),
                ],
              ),
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
    );
  }
}

class IshiharaButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const IshiharaButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        width: 54.0,
        height: 54.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColor.ligthBlue ),
        ),
        child: Center(
          child: Text(
            text,
            style:
                Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
