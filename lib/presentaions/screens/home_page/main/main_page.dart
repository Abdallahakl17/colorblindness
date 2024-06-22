import 'package:color_blindness/presentaions/screens/home_page/main/profile_screens.dart';
import '../../../controller/cubits/home_screen_cubit.dart';
import '../../../controller/states/home_screen_state.dart';
import '../../../widgets/imports.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init;

    return BlocProvider<HomeMainCubit>(
      create: (BuildContext context) => HomeMainCubit(),
      child: BlocConsumer<HomeMainCubit, HomeMainStates>(
        listener: (context, state) {},
        builder: (context, state) {
          HomeMainCubit homeMainCubit = HomeMainCubit.getCubitHomeMain(context);
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40.w,
                ),
                child: AppBar(
                  actions: [
                    if (homeMainCubit.indexCurent == 0)
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person_2,
                          size: 32.w,
                        ),
                      ),
                  ],
                  leading: homeMainCubit.indexCurent == 1
                      ? Text(
                          'profile',
                          style: Theme.of(context).textTheme.titleLarge,
                        )
                      : null,
                ),
              ),
            ),
            floatingActionButton: homeMainCubit.indexCurent == 0
                ? Padding(
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
                  )
                : null,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            body: SingleChildScrollView(
              child: homeMainCubit.screens[homeMainCubit.indexCurent],
            ),
            bottomNavigationBar: Material(
              elevation: 10,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                  border: Border.all(
                    color: AppColor.borderColors,
                    width: 2.0,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 20,
                      offset:
                          const Offset(0, 10), // shadow direction: bottom right
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
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
              ),
            ),
          );
        },
      ),
    );
  }
}
