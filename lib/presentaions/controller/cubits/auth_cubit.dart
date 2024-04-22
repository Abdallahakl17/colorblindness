

import 'package:color_blindness/presentaions/widgets/imports.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(IntialStates());
  static AuthCubit get(context) => BlocProvider.of(context);




   IconData sufix = Icons.visibility_outlined;
  bool isShow = true;
  void showPassword() {
    isShow = !isShow;
    sufix = isShow ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(HiddenIconEyeStates());
  }
}
