import 'dart:convert';
import 'dart:developer';

import 'package:color_blindness/data/model/register_factory.dart';
import 'package:http/http.dart' as http;
import 'package:color_blindness/core/utils/shared/app_const.dart';
import 'package:color_blindness/core/utils/shared/erorr/exceptions_service.dart';
import 'package:color_blindness/data/model/login_factory_model.dart';

abstract class BaseRemoteDataSourceRegister {
  Future<RegisterFactory> register({
    required String email,
    required String password,
    required String name,
  });
}

class RegisterRemoteDataSource extends BaseRemoteDataSourceRegister {
  @override
  Future<RegisterFactory> register({
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
        "role": ""
      }),
    );

  if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      print(responseData);
      log('success: $responseData');
      return RegisterFactory.fromjson(responseData);
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
