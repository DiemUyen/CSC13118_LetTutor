import '../models/responses/auth_response.dart';

abstract class AuthRepository {
  Future<AuthResponse> register(String email, String password);

  Future<AuthResponse> login(String email, String password);

  Future<AuthResponse> loginByGoogle(String accessToken);

  Future<AuthResponse> loginByFacebook(String accessToken);

  Future<String> verifyAccount();

  Future<AuthResponse> refreshToken();

  Future<bool> forgotPassword(String email);
}