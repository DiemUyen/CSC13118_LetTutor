import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:let_tutor/configs/app_config.dart';
import 'package:let_tutor/data/data_providers/user_provider.dart';
import 'package:let_tutor/exceptions/interceptor.dart';
import 'package:let_tutor/injector/injector.dart';

import '../data/data_providers/data_providers.dart';

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
            connectTimeout: 5000,
            receiveTimeout: 3000,
          ),
        );

        dio.interceptors.add(DioInterceptor(
          dio,
        ));

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

    injector.registerFactory<AuthProvider>(
      () => AuthProvider(
        injector(instanceName: dioInstance),
      ),
    );

    injector.registerFactory<TutorProvider>(
      () => TutorProvider(
        injector(instanceName: dioInstance),
      ),
    );

    injector.registerFactory<UserProvider>(
      () => UserProvider(
        injector(instanceName: dioInstance),
      ),
    );
  }
}
