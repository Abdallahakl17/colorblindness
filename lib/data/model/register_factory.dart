import 'package:color_blindness/domain/entities/register_entity.dart';

class RegisterFactory extends RegisterModel {
  const RegisterFactory(
      {required super.statusCode,
      required super.isSuccess,
      required super.errorMessages,
      required super.result});
  factory RegisterFactory.fromjson(Map<String, dynamic> json) {
    return RegisterFactory(
      statusCode: json['statusCode'],
      isSuccess: json['isSuccess'],
      errorMessages: List<String>.from(json['errorMessages']),
      result: json['result'],
    );
  }
}
