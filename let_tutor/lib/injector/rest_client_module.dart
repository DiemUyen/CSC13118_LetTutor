import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:let_tutor/configs/app_config.dart';
import 'package:let_tutor/injector/injector.dart';

class RestClientModule {
  RestClientModule._();

  static void init() {
    final injector = Injector.instance;
    const String dioInstance = 'dioInstance';

    injector.registerLazySingleton<Dio>(
      () {
        final Dio dio = Dio(
          BaseOptions(
            baseUrl: AppConfig.baseUrl,
          ),
        );
        if (!kReleaseMode) {
          dio.interceptors.add(LogInterceptor(
            requestHeader: true,
            requestBody: true,
            responseHeader: true,
            responseBody: true,
            request: false,
          ));
        }
        return dio;
      },
      instanceName: dioInstance,
    );
  }
}
