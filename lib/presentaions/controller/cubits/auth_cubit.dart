import 'dart:developer';

import 'package:color_blindness/presentaions/controller/states/auth_state.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

class AuthCubit extends Cubit<AuthLoginState> {
  AuthCubit(this.loginUsecase) : super(IntialStateLogin());
  static AuthCubit get(context) => BlocProvider.of(context);

  final LoginUsecase loginUsecase;

  void login({required String email, required String password}) async {
    emit(LoadingState());

    final result = await loginUsecase.excute(email, password);
    log(result.toString());
    result.fold((e) => emit(ErorrStates(e)), (r) => emit(SuccessStates(r)));
  }

  IconData sufix = Icons.visibility_outlined;
  bool isShow = true;
  void showPassword() {
    isShow = !isShow;
    sufix = isShow ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(HiddenIconEyeStates());
  }
}
