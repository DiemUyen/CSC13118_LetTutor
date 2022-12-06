import 'package:dio/dio.dart';

import '../../services/shared_preferences_service.dart';
import '../models/responses/auth_response.dart';

class AuthProvider {
  const AuthProvider(this._dio, this._sharedPreferencesService);

  final Dio _dio;
  final SharedPreferencesService _sharedPreferencesService;

  Future<AuthResponse> register(String email, String password) async {
    var response = await _dio
        .post('/auth/register', data: {'email': email, 'password': password});
    final AuthResponse authResponse = AuthResponse.fromJson(response.data);
    return authResponse;
  }

  Future<AuthResponse> login(String email, String password) async {
    var response = await _dio
        .post('/auth/login', data: {'email': email, 'password': password});
    final AuthResponse authResponse = AuthResponse.fromJson(response.data);
    return authResponse;
  }

  Future<String> verifyAccount() async {
    final token = _sharedPreferencesService.token ?? '';
    var response = await _dio
        .get('/auth/verifyAccount', queryParameters: {'token': token});
    return response.data.toString();
  }

  Future<AuthResponse> refreshToken() async {
    final refreshToken =
        _sharedPreferencesService.getValue(key: 'refreshToken') ?? '';
    var response = await _dio.post('/auth/refresh-token',
        data: {'refreshToken': refreshToken, 'timezone': 7});
    final AuthResponse authResponse = AuthResponse.fromJson(response.data);
    return authResponse;
  }

  Future<bool> forgotPassword(String email) async {
    try {
      var response = await _dio.post(
          '/user/forgotPassword', data: {'email': email});
      var data = response.data.toString();
      return data.contains('Email send success!');
    }
    catch (exception) {
      return false;
    }
  }
}
