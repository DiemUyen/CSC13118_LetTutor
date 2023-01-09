
import 'package:dio/dio.dart';
import '../../configs/endpoints.dart';
import '../models/responses/user_response.dart';
import '../models/user/learn_topics.dart';
import '../models/user/test_preparation.dart';

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
      return user;
    } catch (exception) {
      return const UserResponse();
    }
  }

  Future<UserResponse> updateUserInformation(
      Map<String, dynamic> updateInformation) async {
    try {
      var response =
          await _dio.put(Endpoints.userInformation, data: updateInformation);
      final UserResponse user = UserResponse.fromJson(response.data);
      return user;
    } catch (exception) {
      return const UserResponse();
    }
  }

  Future<int> getTotalCallMinutes() async {
    var response = await _dio.get(Endpoints.getTotalCall);
    var total = response.data['total'];
    return total;
  }

  Future<List<LearnTopics>> getLearnTopics() async {
    var response = await _dio.get(Endpoints.getLearnTopics);
    var listLearnTopics = <LearnTopics>[];
    for (var element in (response.data as List)) {
      listLearnTopics.add(LearnTopics.fromJson(element));
    }
    return listLearnTopics;
  }

  Future<List<TestPreparation>> getTestPreparation() async {
    var response = await _dio.get(Endpoints.getTestPreparations);
    var listTestPreparations = <TestPreparation>[];
    for (var element in (response.data as List)) {
      listTestPreparations.add(TestPreparation.fromJson(element));
    }
    return listTestPreparations;
  }
}
