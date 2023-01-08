import 'dart:async';
import 'dart:io';

import '../../exceptions/exception_handler.dart';
import '../data_providers/data_providers.dart';
import '../models/responses/user_response.dart';
import '../models/user/learn_topics.dart';
import '../models/user/test_preparation.dart';

part 'user_repository_impl.dart';

abstract class UserRepository {
  Future<bool> changePassword(String password, String newPassword);

  Future<UserResponse> getUserInformation();

  Future<UserResponse> updateUserInformation(Map<String, dynamic> updateInformation);

  Future<int> getTotalCallMinutes();

  Future<List<LearnTopics>> getLearnTopics();

  Future<List<TestPreparation>> getTestPreparation();
}