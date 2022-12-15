import 'dart:async';

import '../../exceptions/exception_handler.dart';
import '../models/responses/user_response.dart';

part 'user_repository_impl.dart';

abstract class UserRepository {
  Future<bool> changePassword(String password, String newPassword);

  Future<UserResponse> getUserInformation();

  Future<UserResponse> updateUserInformation(Map<String, dynamic> updateInformation);
}