import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:let_tutor/data/models/tutor/tutor_info.dart';
import 'package:let_tutor/data/models/user/referral_info.dart';
import 'package:let_tutor/data/models/user/test_preparation.dart';
import 'package:let_tutor/data/models/user/wallet_info.dart';

import '../course/courses.dart';
import 'learn_topics.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed(fromJson: true)
class Users with _$Users {
  const factory Users({
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
    List<TestPreparation>? testPreparations,
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
  }) = _Users;

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
}
