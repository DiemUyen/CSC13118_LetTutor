part of 'user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl({
    required UserProvider userProvider,
  }) : _userProvider = userProvider;

  late final UserProvider _userProvider;

  @override
  Future<bool> changePassword(String password, String newPassword) async {
    return await _userProvider
        .changePassword(password, newPassword)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<UserResponse> getUserInformation() async {
    return await _userProvider
        .getUserInformation()
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<UserResponse> updateUserInformation(
      Map<String, dynamic> updateInformation) async {
    return await _userProvider
        .updateUserInformation(updateInformation)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<int> getTotalCallMinutes() async {
    return await _userProvider
        .getTotalCallMinutes()
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<List<LearnTopics>> getLearnTopics() async {
    return await _userProvider
        .getLearnTopics()
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<List<TestPreparation>> getTestPreparation() async {
    return await _userProvider
        .getTestPreparation()
        .catchError(DioExceptionHandler.handleException);
  }
}
