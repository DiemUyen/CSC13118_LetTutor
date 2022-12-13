part of 'user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl(this._userProvider);

  final UserProvider _userProvider;

  @override
  FutureOr<bool> changePassword(String password, String newPassword) async {
    // TODO: implement changePassword
    return await _userProvider
        .changePassword(password, newPassword)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  FutureOr<User> getUserInformation() async {
    // TODO: implement getUserInformation
    return await _userProvider
        .getUserInformation()
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  FutureOr<User> updateUserInformation(
      Map<String, dynamic> updateInformation) async {
    // TODO: implement updateUserInformation
    return await _userProvider
        .updateUserInformation(updateInformation)
        .catchError(DioExceptionHandler.handleException);
  }
}
