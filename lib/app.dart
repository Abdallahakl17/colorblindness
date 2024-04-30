import 'dart:developer';

import 'package:color_blindness/core/utils/shared/api_helper/api_helper.dart';
import 'package:color_blindness/core/utils/shared/app_const.dart';
import 'package:color_blindness/core/utils/shared/erorr/exceptions_service.dart';
import 'package:color_blindness/core/utils/shared/erorr/remote_erorr.dart';
import 'package:color_blindness/data/datasource/login_data_source.dart';
import 'package:color_blindness/data/model/login_factory_model.dart';
import 'package:color_blindness/data/repository/login_repo.dart';
import 'package:color_blindness/domain/repository/base_loin_repository.dart';
import 'package:color_blindness/domain/usecase/login_use_case.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class Apps extends StatelessWidget {
  const Apps({super.key});

  Future<void> login({required String email, required String password}) async {
    try {
      // Create Dio instance
      Dio dio = Dio();

      // Define request body
      Map<String, dynamic> requestBody = {
        'email': email,
        'password': password,
      };

      // Make POST request
      Response response = await dio.post(
        'https://student.valuxapps.com/api/login',
        data: requestBody,
      );
      // Handle response
      if (response.statusCode == 200) {
        // Request successful, handle the response data here
        print('Login successful!');
        print(response.data);
      } else {
        // Request failed with a non-200 status code
        print('Request failed with status code: ${response.statusCode}');
        print(response.data);
      }
    } catch (error) {
      // Handle Dio errors
      print('Error occurred: $error');
    }
  }

// Example usage:

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () async {
              await login(email: 'algazzar.22@gmail.com_', password: '123456');
            },
            icon: const Icon(Icons.abc)),
      ),
    );
  }
}
