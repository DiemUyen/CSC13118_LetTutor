import 'package:freezed_annotation/freezed_annotation.dart';

import 'tutor_info.dart';

part 'second_info.freezed.dart';
part 'second_info.g.dart';

@Freezed(fromJson: true)
class SecondInfo with _$SecondInfo {
  const factory SecondInfo({
    String? id,
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
    String? deletedAt,
    String? studentGroupId,
    TutorInfo? tutorInfo,
  }) = _SecondInfo;

  factory SecondInfo.fromJson(Map<String, dynamic> json) =>
      _$SecondInfoFromJson(json);
}
