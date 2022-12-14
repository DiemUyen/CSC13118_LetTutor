import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_request.freezed.dart';
part 'user_request.g.dart';

@Freezed(fromJson: true)
class UserRequest with _$UserRequest {
  const factory UserRequest({
    String? avatar,
    String? name,
    String? country,
    String? phone,
    String? birthday,
    String? level,
    String? studySchedule,
  }) = _UserRequest;

  factory UserRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRequestFromJson(json);
}
