// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      country: json['country'] as String?,
      phone: json['phone'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      language: json['language'] as String?,
      birthday: json['birthday'] as String?,
      isActivated: json['isActivated'] as bool?,
      walletInfo: json['walletInfo'] == null
          ? null
          : WalletInfo.fromJson(json['walletInfo'] as Map<String, dynamic>),
      courses: (json['courses'] as List<dynamic>?)
          ?.map((e) => Courses.fromJson(e as Map<String, dynamic>))
          .toList(),
      requireNote: json['requireNote'] as String?,
      level: json['level'] as String?,
      learnTopics: (json['learnTopics'] as List<dynamic>?)
          ?.map((e) => LearnTopics.fromJson(e as Map<String, dynamic>))
          .toList(),
      testPreparations: (json['testPreparations'] as List<dynamic>?)
          ?.map((e) => LearnTopics.fromJson(e as Map<String, dynamic>))
          .toList(),
      isPhoneActivated: json['isPhoneActivated'] as bool?,
      timezone: json['timezone'] as int?,
      studySchedule: json['studySchedule'] as String?,
      canSendMessage: json['canSendMessage'] as bool?,
      tutorInfo: json['tutorInfo'] as String?,
      referralInfo: json['referralInfo'] == null
          ? null
          : ReferralInfo.fromJson(json['referralInfo'] as Map<String, dynamic>),
      studentGroup: json['studentGroup'] as String?,
      studentInfo: json['studentInfo'] as String?,
      avgRating: json['avgRating'] as int?,
      isPublicRecord: json['isPublicRecord'] as bool?,
      caredByStaffId: json['caredByStaffId'] as String?,
      studentGroupId: json['studentGroupId'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'avatar': instance.avatar,
      'country': instance.country,
      'phone': instance.phone,
      'roles': instance.roles,
      'language': instance.language,
      'birthday': instance.birthday,
      'isActivated': instance.isActivated,
      'walletInfo': instance.walletInfo,
      'courses': instance.courses,
      'requireNote': instance.requireNote,
      'level': instance.level,
      'learnTopics': instance.learnTopics,
      'testPreparations': instance.testPreparations,
      'isPhoneActivated': instance.isPhoneActivated,
      'timezone': instance.timezone,
      'studySchedule': instance.studySchedule,
      'canSendMessage': instance.canSendMessage,
      'tutorInfo': instance.tutorInfo,
      'referralInfo': instance.referralInfo,
      'studentGroup': instance.studentGroup,
      'studentInfo': instance.studentInfo,
      'avgRating': instance.avgRating,
      'isPublicRecord': instance.isPublicRecord,
      'caredByStaffId': instance.caredByStaffId,
      'studentGroupId': instance.studentGroupId,
    };
