 

import 'package:color_blindness/presentaions/screens/home_page/main/home_screen.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

import '../../screens/home_page/main/profile_screens.dart';
import '../../screens/home_page/main/search.dart';
import '../states/home_screen_state.dart';

class HomeMainCubit extends Cubit<HomeMainStates> {
  HomeMainCubit() : super(IntialHomeStates());
  static HomeMainCubit getCubitHomeMain(context) => BlocProvider.of(context);
  int indexCurent = 0;

  List<BottomNavigationBarItem> bottomsNavItems = [
    const BottomNavigationBarItem(
      label: '',
      icon: Icon(Icons.home),
    ),
    const BottomNavigationBarItem(
      label: '',
      icon: Icon(
        Icons.person_outlined,
      ),
    ),
  ];
  List<Widget> screens = [const HomeScreen(), const ProfileScreen()];
  void changBottomNavBar(int index) {
    indexCurent = index;
    emit(BottomNavBar());
  }
}
