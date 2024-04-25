import 'package:color_blindness/presentaions/widgets/imports.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: const Alignment(0, 1.0),
                children: [
                  Container(
                    width: double.infinity,
                    height: 127.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColor.continerMainScreen,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImages.imagegirlOutline,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                          width: 166.w,
                          child: Text(
                            AppString.doYouKnow,
                            style: Theme.of(context).textTheme.titleSmall,
                          )),
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: AppColor.borderColors,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward,
                              color: AppColor.whiteColor,
                              size: 15,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ))
    ]));
  }
}
