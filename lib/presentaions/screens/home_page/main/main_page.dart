import '../../../controller/cubits/home_screen_cubit.dart';
import '../../../controller/states/home_screen_state.dart';
import '../../../widgets/imports.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeMainCubit>(
        create: (BuildContext context) => HomeMainCubit(),
        child: BlocConsumer<HomeMainCubit, HomeMainStates>(
            listener: (context, state) {},
            builder: (context, state) {
              HomeMainCubit homeMainCubit =
                  HomeMainCubit.getCubitHomeMain(context);
              return Scaffold(
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(kToolbarHeight),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22.0),
                    child: AppBar(
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person_2,
                            size: 32.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                floatingActionButton: Padding(
                  padding:
                      EdgeInsets.only(bottom: ScreenUtil().setHeight(64.h)),
                  child: FloatingActionButton(
                    backgroundColor: AppColor.hiddenColor,
                    onPressed: () {},
                    child: Container(
                      width: 60.w,
                      height: 60.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            AppColor.continerMainScreen,
                            AppColor.linearSearchGradient,
                          ],
                          stops: [0.34, 1],
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.search,
                          size: 24.w,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                body: SingleChildScrollView(
                    child: homeMainCubit.screens[homeMainCubit.indexCurent]),
                bottomNavigationBar: Container(
                  decoration: BoxDecoration(
                    color: AppColor.continerMainScreen,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.r),
                      topRight: Radius.circular(12.r),
                    ),
                  ),
                  child: BottomNavigationBar(
                    selectedItemColor: AppColor.continerMainScreen,
                    currentIndex: homeMainCubit.indexCurent,
                    onTap: (index) {
                      homeMainCubit.changBottomNavBar(index);
                    },
                    items: homeMainCubit.bottomsNavItems,
                  ),
                ),
              );
            }));
  }
}
