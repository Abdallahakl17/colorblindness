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
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 500.h,
              child: Column(
                children: [
                  SizedBox(
                    width: 254.w,
                    height: 254.h,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(image),
                      radius: 127.0,
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  SizedBox(
                    height: 108.h,
                    width: 325.w,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 55.0,
                          left: 10.0,
                          child: IshiharaButton(
                            text: '2',
                            onTap: () => onSelect('2'),
                          ),
                        ),
                        Positioned(
                          bottom: 40.0,
                          left: 75.0,
                          child: IshiharaButton(
                            text: '27',
                            onTap: () => onSelect('27'),
                          ),
                        ),
                        Positioned(
                          bottom: 30.0,
                          right: 136.0,
                          child: IshiharaButton(
                            text: '74',
                            onTap: () => onSelect('74'),
                          ),
                        ),
                        Positioned(
                          bottom: 55.0,
                          right: 10.0,
                          child: IshiharaButton(
                            text: '12',
                            onTap: () => onSelect('12'),
                          ),
                        ),
                        Positioned(
                          bottom: 40.0,
                          right: 75.0,
                          child: IshiharaButton(
                            text: '42',
                            onTap: () => onSelect('42'),
                          ),
                        ),
                      ],
                    ),
                  ),
                    SizedBox(
                    height: 70.h,
                    width: 320.w,
                    child: Text(
                      AppString.selectItemIn3Sec,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
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
          border: Border.all(color: Colors.blue),
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
