import 'package:color_blindness/domain/entities/login_entity.dart';
import 'package:color_blindness/domain/usecase/register_usecase.dart';
import 'package:color_blindness/presentaions/controller/states/auth_register.dart';
import 'package:color_blindness/presentaions/controller/states/auth_state.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

class AuthRegisterCubit extends Cubit<RegisterState> {
  AuthRegisterCubit(this.registerUsecase) : super(IntialStateRegister());
  static AuthRegisterCubit get(context) => BlocProvider.of(context);

  final RegisterUsecase registerUsecase;

  void register(
      {required String email,
      required String name,
      required String password}) async {
    emit(LoadingStateRegister());

    final result = await registerUsecase.excute(email, password, name);

    result.fold(
      (e) => emit(ErorrStatesRegister(e.errorResponse)),
      (r) => emit(SuccessStatesRegister(r)),
    );
  }
}
