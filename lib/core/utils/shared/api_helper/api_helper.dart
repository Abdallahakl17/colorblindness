import 'package:color_blindness/core/utils/shared/app_const.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiHelper {
  static late final Dio dio;
  static intia() {
    dio = Dio(BaseOptions(
        baseUrl: ApiConst.baseUrl,
        receiveDataWhenStatusError: true));
  }

  static Future<Response> getData(
      {@required Map<String, dynamic>? query,
      String? token,
      
      required String path}) async {
    dio.options.headers = {
      'Authorization': token,
      
      'Content-Type': 'application/json'
    };
    return await dio.get(path, queryParameters: query);
  }

  static Future<Response> postData(
      {@required Map<String, dynamic>? query,
      required Map<String, dynamic> data,
      String? token,
     
      required String path}) async {
    dio.options.headers = {
      
      'Authorization': token,
      'Content-Type': 'application/json; charset=utf-8'
      };

    return await dio.post(path, queryParameters: query, data: data);
  }
}