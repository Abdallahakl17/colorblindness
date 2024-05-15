
import 'package:color_blindness/domain/usecase/register_usecase.dart';
import 'package:color_blindness/presentaions/controller/states/auth_state.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';

class AuthRegisterCubit extends Cubit<AuthLoginState> {
  AuthRegisterCubit(this.registerUsecase) : super(IntialStateLogin());
  static AuthRegisterCubit get(context) => BlocProvider.of(context);

  final RegisterUsecase registerUsecase;

  void register({
    required String email, 
    required String name, 
  required String password}) async {
    emit(LoadingState());

    final result = await registerUsecase.excute(email, password,name);

    result.fold(
      (e) => emit(ErorrStates(e.errorResponse)),
      (r) => emit(SuccessStates(r)),
    );
  }

    
   
  }

