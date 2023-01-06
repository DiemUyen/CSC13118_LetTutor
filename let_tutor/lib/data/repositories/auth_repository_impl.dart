part of 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required AuthProvider authProvider,
  }) : _authProvider = authProvider;

  late final AuthProvider _authProvider;

  @override
  Future<bool> forgotPassword(String email) async {
    return await _authProvider
        .forgotPassword(email)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<AuthResponse> login(String email, String password) async {
    return await _authProvider
        .login(email, password)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<AuthResponse> loginByFacebook(String accessToken) async {
    return await _authProvider
        .loginByFacebook(accessToken)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<AuthResponse> loginByGoogle(String accessToken) async {
    return await _authProvider
        .loginByGoogle(accessToken)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<AuthResponse> refreshToken(String refreshToken) async {
    return await _authProvider
        .refreshToken(refreshToken)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<AuthResponse> register(String email, String password) async {
    return await _authProvider
        .register(email, password)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<bool> verifyAccount(String token) async {
    return await _authProvider
        .verifyAccount(token)
        .catchError(DioExceptionHandler.handleException);
  }
}
