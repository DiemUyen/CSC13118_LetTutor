import 'dart:async';

import '../../exceptions/exception_handler.dart';
import '../data_providers/user_provider.dart';
import '../models/responses/user_response.dart';

part 'user_repository_impl.dart';

abstract class UserRepository {
  FutureOr<bool> changePassword(String password, String newPassword);

  FutureOr<UserResponse> getUserInformation();

  FutureOr<UserResponse> updateUserInformation(Map<String, dynamic> updateInformation);
}