import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@Freezed(fromJson: true)
class UserResponse with _$UserResponse {
  const factory UserResponse({
    User? user,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
