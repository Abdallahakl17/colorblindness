import 'package:color_blindness/domain/entities/login_entity.dart';
import 'package:color_blindness/domain/entities/register_entity.dart';

abstract class RegisterState {}

class IntialStateRegister extends RegisterState {}

class LoadingStateRegister extends RegisterState {}

class SuccessStatesRegister extends RegisterState {
 final RegisterModel loginEntity;

  SuccessStatesRegister(this.loginEntity);
}

class ErorrStatesRegister extends RegisterState {
  final String error;
  ErorrStatesRegister(this.error);
}

 