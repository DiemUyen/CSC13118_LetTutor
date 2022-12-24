import 'package:freezed_annotation/freezed_annotation.dart';

part 'first_info.freezed.dart';
part 'first_info.g.dart';

@Freezed(fromJson: true)
class FirstInfo with _$FirstInfo {
  const factory FirstInfo({
    String? level,
    String? email,
    String? google,
    String? facebook,
    String? apple,
    String? avatar,
    String? name,
    String? country,
    String? phone,
    String? language,
    String? birthday,
    bool? requestPassword,
    bool? isActivated,
    bool? isPhoneActivated,
    String? requireNote,
    int? timezone,
    String? phoneAuth,
    bool? isPhoneAuthActivated,
    String? studySchedule,
    bool? canSendMessage,
    bool? isPublicRecord,
    String? caredByStaffId,
    String? createdAt,
    String? updatedAt,
    String? deleteAt,
    String? studentGroupId,
  }) = _FirstInfo;

  factory FirstInfo.fromJson(Map<String, dynamic> json) =>
      _$FirstInfoFromJson(json);
}
