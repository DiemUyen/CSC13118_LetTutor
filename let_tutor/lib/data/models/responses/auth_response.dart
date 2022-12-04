import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/tokens.dart';
import '../user/user.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@Freezed(fromJson: true)
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    User? user,
    Tokens? tokens,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}
