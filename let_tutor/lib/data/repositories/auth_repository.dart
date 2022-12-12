import '../../exceptions/exception_handler.dart';
import '../data_providers/auth_provider.dart';
import '../models/responses/auth_response.dart';

part 'auth_repository_impl.dart';

abstract class AuthRepository {
  Future<AuthResponse> register(String email, String password);

  Future<AuthResponse> login(String email, String password);

  Future<AuthResponse> loginByGoogle(String accessToken);

  Future<AuthResponse> loginByFacebook(String accessToken);

  Future<bool> verifyAccount(String token);

  Future<AuthResponse> refreshToken(String refreshToken);

  Future<bool> forgotPassword(String email);
}