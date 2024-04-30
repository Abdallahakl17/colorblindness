import 'package:equatable/equatable.dart';

class ErrorResponse extends Equatable {
  final int statusCode;
  final bool isSuccess;
  final List<String> errorMessages;

  const ErrorResponse({
    required this.statusCode,
    required this.isSuccess,
    required this.errorMessages,
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) {
    return ErrorResponse(
        statusCode: json['statusCode'],
        isSuccess: json['isSuccess'],
        errorMessages: List<String>.from(json['errorMessages'].map((e) => e)));
  }

  @override
  List<Object?> get props => [errorMessages, isSuccess, statusCode];
}
