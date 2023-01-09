import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';
import 'package:flutter/foundation.dart';
import 'package:let_tutor/configs/app_config.dart';
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
          ),
        );

        (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
            (HttpClient client) {
          client.badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
          return client;
        };

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

    injector.registerFactory<CourseProvider>(
      () => CourseProvider(
        injector(instanceName: dioInstance),
      ),
    );

    injector.registerFactory<ScheduleProvider>(
      () => ScheduleProvider(
        injector(instanceName: dioInstance),
      ),
    );
  }
}
