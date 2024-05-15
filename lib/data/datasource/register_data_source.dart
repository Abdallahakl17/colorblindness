import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:color_blindness/core/utils/shared/app_const.dart';
import 'package:color_blindness/core/utils/shared/erorr/exceptions_service.dart';
import 'package:color_blindness/data/model/login_factory_model.dart';

abstract class BaseRemoteDataSourceRegister {
  Future<LoginFactoryMoel> register({
    required String email,
    required String password,
    required String name,
  });
}

class RegisterRemoteDataSource extends BaseRemoteDataSourceRegister {
  @override
  Future<LoginFactoryMoel> register({
    required String email,
    required String password,
    required String name,
  }) async {
    final response = await http.post(
      Uri.parse('https://colorblindapi.runasp.net/api/Users/register'),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'accept': ' */*',
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'userName': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      if (response.body.isEmpty) {
        throw const FormatException('Empty response body');
      }

      try {
        final responseData = jsonDecode(response.body);
        print(responseData);
        log('success: $responseData');
        return LoginFactoryMoel.fromJson(responseData);
      } catch (e) {
        throw const FormatException('Error decoding JSON data');
      }
    } else {
      final responseData = jsonDecode(response.body);
      log('err: $responseData');
      throw ServiceExceptions(
        errorResponse:
            responseData['errorMessages']?.join(', ') ?? 'Unknown error',
      );
    }
  }
}

// class RegisterRemoteDataSource extends BaseRemoteDataSourceRegister {
//   @override
//   Future<LoginFactoryMoel> register(
//       {required String email, required String password,required String name,}) async {
//     final response = await http.post(
//       Uri.parse(ApiConst.registerUrl),
//       headers: <String, String>{
//         'Content-Type': 'application/json',
//       },
//       body: jsonEncode(<String, String>{
//         'userName': email,
//         'password': password,
//         'name': name,
//       }),
//     );

//     if (response.statusCode == 200) {
//       final responseData = jsonDecode(response.body);
//       print(responseData);
//       log('success: $responseData');
//       return LoginFactoryMoel.fromJson(responseData);
//     } else {
//       final responseData = jsonDecode(response.body);
//       log('err: $responseData');
//       throw ServiceExceptions(
//         errorResponse:
//             responseData['errorMessages']?.join(', ') ?? 'Unknown error',
//       );
//     }
//   }
// }
