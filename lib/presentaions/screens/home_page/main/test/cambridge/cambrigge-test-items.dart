import 'package:color_blindness/presentaions/widgets/imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CmabridgeScreenItems extends StatefulWidget {
  final String image;
  final Function(String) onSelect;

  const CmabridgeScreenItems({
    super.key,
    required this.image,
    required this.onSelect,
  });

  @override
  _CmabridgeScreenItemsState createState() => _CmabridgeScreenItemsState();
}

class _CmabridgeScreenItemsState extends State<CmabridgeScreenItems> {
  String? _pressedDirection;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    child: CircleAvatar(
                      backgroundImage: AssetImage(widget.image),
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
                        _buildDirectionButton('top', AppImages.imageArrowTop,
                            Alignment.topCenter),
                        _buildDirectionButton('right',
                            AppImages.imageArrowRigth, Alignment.centerRight),
                        _buildDirectionButton('bottom',
                            AppImages.imageArrowBottom, Alignment.bottomCenter),
                        _buildDirectionButton('left', AppImages.imageArrowLeft,
                            Alignment.centerLeft),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 34.h,
                  ),
                  SizedBox(
                    height: 80.h,
                    width: 330.w,
                    child: Text(
                      AppString.selectItemIn3Sec,
                       style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDirectionButton(
      String direction, String imageAsset, Alignment alignment) {
    return Align(
      alignment: alignment,
      child: GestureDetector(
        onTapDown: (_) => setState(() {
          _pressedDirection = direction;
        }),
        onTapUp: (_) {
          setState(() {
            _pressedDirection = null;
          });
          widget.onSelect(direction);
        },
        child: Opacity(
          opacity: _pressedDirection == direction ? 0.5 : 1.0,
          child: Image.asset(
            imageAsset,
            width: 40,
            height: 40,
          ),
        ),
      ),
    );
  }
}
