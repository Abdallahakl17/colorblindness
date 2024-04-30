import 'package:color_blindness/domain/entities/login_entity.dart';

class LoginFactoryMoel extends LoginEntityModel {
  const LoginFactoryMoel(
      {required super.statusCode,
      required super.isSuccess,
      required super.result});
  factory LoginFactoryMoel.fromJson(Map<String, dynamic> json) {
    return LoginFactoryMoel(
        statusCode: json['statusCode'],
        isSuccess: json['isSuccess'],
        result: json['result']);
  }
}
