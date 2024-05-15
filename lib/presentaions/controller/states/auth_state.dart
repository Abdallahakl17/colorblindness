import 'package:color_blindness/domain/entities/login_entity.dart';

abstract class AuthLoginState {}

class IntialStateLogin extends AuthLoginState {}

class LoadingState extends AuthLoginState {}

class SuccessStates extends AuthLoginState {
 final LoginEntityModel loginEntity;

  SuccessStates(this.loginEntity);
}

class ErorrStates extends AuthLoginState {
  final String error;
  ErorrStates(this.error);
}

class HiddenIconEyeStates extends AuthLoginState {}
