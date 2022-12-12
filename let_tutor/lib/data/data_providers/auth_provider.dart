import 'package:dio/dio.dart';

import '../../configs/endpoints.dart';
import '../models/responses/auth_response.dart';

class AuthProvider {
  const AuthProvider(this._dio);

  final Dio _dio;

  Future<AuthResponse> register(String email, String password) async {
    var response = await _dio
        .post(Endpoints.register, data: {'email': email, 'password': password});
    final AuthResponse authResponse = AuthResponse.fromJson(response.data);
    return authResponse;
  }

  Future<AuthResponse> login(String email, String password) async {
    var response = await _dio
        .post(Endpoints.login, data: {'email': email, 'password': password});
    final AuthResponse authResponse = AuthResponse.fromJson(response.data);
    return authResponse;
  }

  Future<bool> verifyAccount(String token) async {
    var response = await _dio
        .get(Endpoints.verifyAccount, queryParameters: {'token': token});
    return !response.data.toString().contains('statusCode');
  }

  Future<AuthResponse> refreshToken(String refreshToken) async {
    var response = await _dio.post(Endpoints.refreshToken,
        data: {'refreshToken': refreshToken, 'timezone': 7});
    final AuthResponse authResponse = AuthResponse.fromJson(response.data);
    return authResponse;
  }

  Future<bool> forgotPassword(String email) async {
    try {
      var response = await _dio.post(
          Endpoints.forgotPassword, data: {'email': email});
      var data = response.data.toString();
      return data.contains('Email send success!');
    }
    catch (exception) {
      return false;
    }
  }
}
