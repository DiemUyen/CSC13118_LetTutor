import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user.dart';
import 'feedbacks.dart';

part 'tutor.freezed.dart';
part 'tutor.g.dart';

@Freezed(fromJson: true)
class Tutor with _$Tutor {
  const factory Tutor({
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
    List<Feedbacks>? feedbacks,
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
    bool? isNative,
    int? price,
    bool? isOnline,
    User? user,
    bool? isFavorite,
    double? avgRating,
    int? totalFeedback,
    String? schedulestimes,
    String? isfavoritetutor,
  }) = _Tutor;

  factory Tutor.fromJson(Map<String, dynamic> json) => _$TutorFromJson(json);
}
