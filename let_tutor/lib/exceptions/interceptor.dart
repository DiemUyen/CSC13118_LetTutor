import 'package:dio/dio.dart';
import 'package:let_tutor/services/shared_preferences_service.dart';

import '../data/repositories/auth_repository.dart';
import '../injector/injector.dart';

class DioInterceptor extends Interceptor {
  DioInterceptor(this._dio);

  final Dio _dio;
  final SharedPreferencesService _preferencesService =
      Injector.instance<SharedPreferencesService>();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.path.contains('/auth/change-password') || !options.path.contains('/auth')) {
      String authToken = _preferencesService.token ?? '';
      options.headers['Authorization'] = 'Bearer $authToken';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response!.statusCode! == 401 ) {
      String refreshToken = _preferencesService.getValue(key: 'refreshToken') ?? '';
      final refreshTokenResponse =
          await Injector.instance<AuthRepository>().refreshToken(refreshToken);
      String newToken = refreshTokenResponse.tokens!.access!.token!;
      _preferencesService.setToken(newToken);
      _preferencesService.setValue(
          key: 'refreshToken',
          value: refreshTokenResponse.tokens!.refresh!.token!);

      // Request with new access token
      err.requestOptions.headers['Authorization'] = 'Bearer $newToken';
      final options = Options(
        method: err.requestOptions.method,
        headers: err.requestOptions.headers,
      );
      final newRequest = await _dio.request(
        err.requestOptions.path,
        options: options,
        data: err.requestOptions.data,
        queryParameters: err.requestOptions.queryParameters,
      );
      handler.resolve(newRequest);
    }
    else {
      super.onError(err, handler);
    }
  }
}
