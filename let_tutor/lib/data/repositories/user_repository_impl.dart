part of 'user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl({
    required UserProvider userProvider,
  }) : _userProvider = userProvider;

  late final UserProvider _userProvider;

  @override
  Future<bool> changePassword(String password, String newPassword) async {
    // TODO: implement changePassword
    return await _userProvider
        .changePassword(password, newPassword)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<UserResponse> getUserInformation() async {
    // TODO: implement getUserInformation
    return await _userProvider
        .getUserInformation()
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<UserResponse> updateUserInformation(
      Map<String, dynamic> updateInformation) async {
    // TODO: implement updateUserInformation
    return await _userProvider
        .updateUserInformation(updateInformation)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<int> getTotalCallMinutes() async {
    // TODO: implement getTotalCallMinutes
    return await _userProvider
        .getTotalCallMinutes()
        .catchError(DioExceptionHandler.handleException);
  }
}
