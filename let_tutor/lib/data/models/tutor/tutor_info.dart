import 'package:freezed_annotation/freezed_annotation.dart';

part 'tutor_info.freezed.dart';
part 'tutor_info.g.dart';

@Freezed(fromJson: true)
class TutorInfo with _$TutorInfo {
  const factory TutorInfo({
    String? id,
    String? userId,
    String? video,
    String? bio,
    String? education,
    String? experience,
    String? profession,
    String? accent,
    String? targetStudent,
    String? interests,
    String? languages,
    String? specialties,
    String? resume,
    double? rating,
    bool? isActivated,
    bool? isNative,
    String? createdAt,
    String? updatedAt,
  }) = _TutorInfo;

  factory TutorInfo.fromJson(Map<String, dynamic> json) =>
      _$TutorInfoFromJson(json);
}
