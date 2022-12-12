part of 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required AuthProvider authProvider,
  }) : _authProvider = authProvider;

  late final AuthProvider _authProvider;

  @override
  Future<bool> forgotPassword(String email) async {
    // TODO: implement forgotPassword
    return await _authProvider
        .forgotPassword(email)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<AuthResponse> login(String email, String password) async {
    // TODO: implement login
    return await _authProvider
        .login(email, password)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<AuthResponse> loginByFacebook(String accessToken) {
    // TODO: implement loginByFacebook
    throw UnimplementedError();
  }

  @override
  Future<AuthResponse> loginByGoogle(String accessToken) {
    // TODO: implement loginByGoogle
    throw UnimplementedError();
  }

  @override
  Future<AuthResponse> refreshToken(String refreshToken) async {
    // TODO: implement refreshToken
    return await _authProvider
        .refreshToken(refreshToken)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<AuthResponse> register(String email, String password) async {
    // TODO: implement register
    return await _authProvider
        .register(email, password)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<bool> verifyAccount(String token) async {
    // TODO: implement verifyAccount
    return await _authProvider
        .verifyAccount(token)
        .catchError(DioExceptionHandler.handleException);
  }
}
