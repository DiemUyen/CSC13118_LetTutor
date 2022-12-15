import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:let_tutor/data/models/tutor/tutor_info.dart';
import 'package:let_tutor/data/models/user/referral_info.dart';
import 'package:let_tutor/data/models/user/wallet_info.dart';

import '../course/courses.dart';
import 'learn_topics.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed(fromJson: true)
class User with _$User {
  const factory User({
    String? id,
    String? email,
    String? name,
    String? avatar,
    String? country,
    String? phone,
    List<String>? roles,
    String? language,
    String? birthday,
    bool? isActivated,
    WalletInfo? walletInfo,
    List<Courses>? courses,
    String? requireNote,
    String? level,
    List<LearnTopics>? learnTopics,
    List<LearnTopics>? testPreparations,
    bool? isPhoneActivated,
    int? timezone,
    String? studySchedule,
    bool? canSendMessage,
    TutorInfo? tutorInfo,
    ReferralInfo? referralInfo,
    String? studentGroup,
    String? studentInfo,
    double? avgRating,
    bool? isPublicRecord,
    String? caredByStaffId,
    String? studentGroupId,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}