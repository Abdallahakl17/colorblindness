import 'package:color_blindness/presentaions/controller/cubits/CambridgeCubit_dart.dart';
import 'package:color_blindness/presentaions/screens/home_page/main/test/cambridge/cambrigge-test-items.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CambridgeTest extends StatelessWidget {
  const CambridgeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CambridgeCubit(),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<CambridgeCubit, CambridgeState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    reverse: true,
                    controller: PageController(initialPage: state.currentPage),
                    onPageChanged: (index) {
                      context
                          .read<CambridgeCubit>()
                          .emit(state.copyWith(currentPage: index));
                    },
                    itemCount: state.images.length,
                    itemBuilder: (context, index) {
                      return CmabridgeScreenItems(
                        image: state.images[index],
                        onSelect: (answer) => context
                            .read<CambridgeCubit>()
                            .onSelectAnswer(index, answer),
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                        text: AppString.back,
                        width: 149.w,
                        heigth: 43.h,
                        onTapped: context.read<CambridgeCubit>().onBack,
                      ),
                      CustomButton(
                        text: AppString.next,
                        width: 149.w,
                        heigth: 43.h,
                        onTapped: () =>
                            context.read<CambridgeCubit>().onNext(context),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
