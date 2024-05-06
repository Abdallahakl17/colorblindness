import 'package:equatable/equatable.dart';

class ErrorResponse extends Equatable {
    String  errorMessages;

    ErrorResponse({
      
    required this.errorMessages,   
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) {
    return ErrorResponse(
        
        errorMessages: json['errorMessages'] );
  }

  @override
  List<Object?> get props => [errorMessages,  ];
}
