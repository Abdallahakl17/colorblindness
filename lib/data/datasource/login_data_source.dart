import 'dart:developer';

import 'package:color_blindness/core/utils/shared/api_helper/api_helper.dart';
import 'package:color_blindness/core/utils/shared/app_const.dart';
import 'package:color_blindness/core/utils/shared/erorr/exceptions_service.dart';
import 'package:color_blindness/core/utils/shared/erorr/remote_erorr.dart';
import 'package:color_blindness/data/model/login_factory_model.dart';
import 'package:color_blindness/presentaions/widgets/imports.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<LoginFactoryMoel> login(
      {required String email, required String password});
}

class LoginRemoteDataSource extends BaseRemoteDataSource {
  @override
  Future<LoginFactoryMoel> login(
      {required String email, required String password}) async {
    return ApiHelper.postData(
            data: {'email': email, 'password': password},
            path: ApiConst.loginUrl)
        .then((value) {
      if (value.statusCode == 200) {
        print(value.data);
        return LoginFactoryMoel.fromJson(value.data);
      } else {
        throw ServiceExceptions(
            errorResponse: ErrorResponse.fromJson(value.data));
      }
    });
  }
}
// Future<LoginFactoryMoel> login() async {
//     return ApiHelper.postData(
//             data: {'email': 'Ali@gmail', 'password': 'Ali@123'},
//             path: ApiConst.loginUrl)
//         .then((value) {
//       if (value.statusCode == 200) {
//         print(value.data);
//         return LoginFactoryMoel.fromJson(value.data);
//       } else {
//         throw ServiceExceptions(
//             errorResponse: ErrorResponse.fromJson(value.data));
//       }
//     });
//   }