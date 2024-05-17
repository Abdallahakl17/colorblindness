import 'package:equatable/equatable.dart';

class RegisterModel extends Equatable {
  final int statusCode;
  final bool isSuccess;
  final List<String> errorMessages;
  final dynamic result; // Can be of any type, depending on the actual data

  const RegisterModel({
    required this.statusCode,
    required this.isSuccess,
    required this.errorMessages,
    required this.result,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [statusCode, isSuccess, errorMessages, result];
}
