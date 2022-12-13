import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:let_tutor/configs/endpoints.dart';

import '../models/user/user.dart';

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

  Future<User> getUserInformation() async {
    try {
      var response = await _dio.get(Endpoints.userInformation);
      final User user = User.fromJson(response.data);
      return user;
    } catch (exception) {
      return const User();
    }
  }

  Future<User> updateUserInformation(Map<String, dynamic> updateInformation) async {
    try {
      var response = await _dio.put(Endpoints.userInformation, data: json.decode(updateInformation.toString()));
      final User user = User.fromJson(response.data);
      return user;
    }
    catch (exception) {
      return const User();
    }
  }
}
