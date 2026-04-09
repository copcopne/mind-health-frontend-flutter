import 'package:dio/dio.dart';

class ApiClient {
  static const String baseUrl = "";

  static Dio get dio {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // thêm Interceptor để debug
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));

    return dio;
  }
}

class Endpoints {
}