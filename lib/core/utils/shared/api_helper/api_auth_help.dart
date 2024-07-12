import 'dart:async';  // تأكد من استيراد هذا للمستقبلات
import 'package:dio/dio.dart';

// Enum to represent API response status
enum Status { completed, loading, error, networkError }

class ApiHelper {
  static late Dio dio;

  // Initialize Dio with base URL, options, and RetryInterceptor
  static void init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3/',
      receiveDataWhenStatusError: true,
    ));

    // Add RetryInterceptor to handle request retries
    dio.interceptors.add(RetryInterceptor(dio: dio));
  }

  // Handle GET request
  static Future<ApiResponse> getData({
    required String path,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Authorization': token,
      'Content-Type': 'application/json',
    };

    try {
      final response = await dio.get(path, queryParameters: query);
      return ApiResponse.completed(response.data);
    } catch (e) {
      return _handleError(e);
    }
  }

  // Handle POST request
  static Future<ApiResponse> postData({
    required String path,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Authorization': token,
      'Content-Type': 'application/json; charset=utf-8',
    };

    try {
      final response = await dio.post(path, queryParameters: query, data: data);
      return ApiResponse.completed(response.data);
    } catch (e) {
      return _handleError(e);
    }
  }

  // Handle PUT request
  static Future<ApiResponse> putData({
    required String path,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Authorization': token,
      'Content-Type': 'application/json; charset=utf-8',
    };

    try {
      final response = await dio.put(path, queryParameters: query, data: data);
      return ApiResponse.completed(response.data);
    } catch (e) {
      return _handleError(e);
    }
  }

  // Handle DELETE request
  static Future<ApiResponse> deleteData({
    required String path,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Authorization': token,
      'Content-Type': 'application/json',
    };

    try {
      final response = await dio.delete(path, queryParameters: query);
      return ApiResponse.completed(response.data);
    } catch (e) {
      return _handleError(e);
    }
  }

   // Handle errors and return appropriate ApiResponse
  static ApiResponse _handleError(dynamic e) {
    if (e is DioException) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        return ApiResponse.networkError('Network timeout. Please try again.');
      } else if (e.type == DioExceptionType.badResponse) {
        return ApiResponse.error(
            'Received invalid status code: ${e.response?.statusCode}');
      } else if (e.type == DioExceptionType.cancel) {
        return ApiResponse.error('Request to API server was cancelled.');
      } else {
        return ApiResponse.error('Unexpected error occurred.');
      }
    } else {
      return ApiResponse.error('Unexpected error occurred.');
    }
  }
}

// Class to represent API response
class ApiResponse<T> {
  Status status;
  T? data;
  String? message;

  ApiResponse.completed(this.data) : status = Status.completed;
  ApiResponse.loading(this.message) : status = Status.loading;
  ApiResponse.error(this.message) : status = Status.error;
  ApiResponse.networkError(this.message) : status = Status.networkError;

  @override
  String toString() {
    return 'ApiResponse{status: $status, data: $data, message: $message}';
  }
}

// RetryInterceptor class for retrying failed requests
class RetryInterceptor extends Interceptor {
  final Dio dio;
  final int maxRetries;
  final int retryInterval;

  RetryInterceptor({
    required this.dio,
    this.maxRetries = 3,
    this.retryInterval = 1000,
  });

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    var retries = 0;
    while (retries < maxRetries && _shouldRetry(err)) {
      try {
        retries++;
        print('Retrying request... Attempt: $retries');
        await Future.delayed(Duration(milliseconds: retryInterval));
        final response = await _retry(err);
        return handler.resolve(response);
      } catch (e) {
        if (retries >= maxRetries) {
          return handler.next(err);
        }
      }
    }
    return handler.next(err);
  }

  bool _shouldRetry(DioException err) {
    return err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.unknown;
  }

  Future<Response> _retry(DioException err) async {
    final options = err.requestOptions;
    return await dio.request(
      options.path,
      data: options.data,
      queryParameters: options.queryParameters,
      cancelToken: options.cancelToken,
      options: Options(
        method: options.method,
        headers: options.headers,
      ),
      onReceiveProgress: options.onReceiveProgress,
    );
  }
}
