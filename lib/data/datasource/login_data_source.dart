import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
 import 'package:color_blindness/core/utils/shared/app_const.dart';
import 'package:color_blindness/core/utils/shared/erorr/exceptions_service.dart';
 import 'package:color_blindness/data/model/login_factory_model.dart';
 
abstract class BaseRemoteDataSource {
Future<LoginFactoryMoel> login(
      {required String email, required String password});
}

class LoginRemoteDataSource extends BaseRemoteDataSource {
  @override
  Future<LoginFactoryMoel> login(
      {required String email, required String password}) async {
    final response = await http.post(
      Uri.parse(ApiConst.loginUrl),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'userName': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      print(responseData);
      log('success: $responseData');
      return LoginFactoryMoel.fromJson(responseData);
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


