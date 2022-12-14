import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:let_tutor/configs/endpoints.dart';

import '../models/responses/user_response.dart';

class UserProvider {
  const UserProvider(this._dio);

  final Dio _dio;

  Future<bool> changePassword(String password, String newPassword) async {
    try {
      var response = await _dio.post(Endpoints.changePassword,
          data: {'password': password, 'newPassword': newPassword});
      var message = response.data.toString();
      return message.contains('Change password successfully');
    } catch (exception) {
      return false;
    }
  }

  Future<UserResponse> getUserInformation() async {
    try {
      var response = await _dio.get(Endpoints.userInformation);
      final UserResponse user = UserResponse.fromJson(response.data);
      if (kDebugMode) {
        print('User response: $user');
      }
      return user;
    } catch (exception) {
      if (kDebugMode) {
        print(exception.toString());
      }
      return const UserResponse();
    }
  }

  Future<UserResponse> updateUserInformation(
      Map<String, dynamic> updateInformation) async {
    try {
      var response = await _dio.put(Endpoints.userInformation,
          data: updateInformation);
      final UserResponse user = UserResponse.fromJson(response.data);
      return user;
    } catch (exception) {
      print(exception);
      return const UserResponse();
    }
  }
}
