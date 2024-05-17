import 'package:equatable/equatable.dart';

class LoginEntityModel extends Equatable {
  final int statusCode;
  final bool isSuccess;
  final   String ? errorMessages;
  final LoginResult ?result;

  const LoginEntityModel({
    required this.statusCode,
    required this.isSuccess,
    this.errorMessages,
    required this.result,
  });

  @override
  List<Object?> get props => [statusCode, isSuccess, errorMessages, result];
}

class LoginResult extends Equatable {
  final User user;
  final String role;
  final String token;

  const LoginResult({
    required this.user,
    required this.role,
    required this.token,
  });

  @override
  List<Object?> get props => [user, role, token];
}

class User extends Equatable {
  final String id;
  final String userName;
  final String name;

  const User({
    required this.id,
    required this.userName,
    required this.name,
  });

  @override
  List<Object?> get props => [id, userName, name];
}
