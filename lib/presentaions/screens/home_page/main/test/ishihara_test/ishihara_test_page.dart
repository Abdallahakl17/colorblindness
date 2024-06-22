import 'package:color_blindness/presentaions/controller/cubits/ishihara_cubit.dart';
import 'package:color_blindness/presentaions/screens/home_page/main/test/cambridge/result_screen.dart';
import 'package:color_blindness/presentaions/screens/home_page/main/test/ishihara_test/ishihara_test_items.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

class IshiharaTestPage extends StatelessWidget {
  final List<String> images = [
    AppImages.ishiharaTest1,
    AppImages.ishiharaTest2,
    AppImages.ishiharaTest3,
    AppImages.ishiharaTest4
  ];

  final List<String> correctAnswers = ['2', '27', '42', '74'];

  IshiharaTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IshihraCubit(
        images,
        correctAnswers,
      ),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<IshihraCubit, IshiraState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  flex: 4,
                  child: PageView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: context.read<IshihraCubit>().pageController,
                    itemCount: state.images.length,
                    itemBuilder: (context, index) {
                      return IshiharaScreenItems(
                        image: state.images[index],
                        onSelect: (answer) {
                          context
                              .read<IshihraCubit>()
                              .onSelectAnswer(index, answer);
                        },
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
                        onTapped: context.read<IshihraCubit>().onBack,
                      ),
                      CustomButton(
                        text: AppString.next,
                        width: 149.w,
                        heigth: 43.h,
                        onTapped: () =>
                            context.read<IshihraCubit>().onNext(context),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.h)
              ],
            );
          },
        ),
      ),
    );
  }
}
