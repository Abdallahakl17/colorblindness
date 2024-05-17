import 'package:color_blindness/domain/entities/login_entity.dart';

class LoginFactoryMoel extends LoginEntityModel {
  const LoginFactoryMoel(
      {required super.statusCode,
      required super.isSuccess,
      super.errorMessages,
      required super.result});

  factory LoginFactoryMoel.fromJson(Map<String, dynamic> json) {

    return LoginFactoryMoel(
      errorMessages: json['errorMessages'] != null
          ? (json['errorMessages'] as List<dynamic>).join('\n')
          : '',
      statusCode: json['statusCode'],
      isSuccess: json['isSuccess'],
      result: LoginResult(
        user: User(
          id: json['result']['user']['id'],
          userName: json['result']['user']['userName'],
          name: json['result']['user']['name'],
        ),
        role: json['result']['role']['user'],
        token: json['result']['token'],
      ),
    );
  }


}
