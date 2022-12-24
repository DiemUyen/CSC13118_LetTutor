// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReferralInfo _$$_ReferralInfoFromJson(Map<String, dynamic> json) =>
    _$_ReferralInfo(
      referralCode: json['referralCode'] as String?,
      referralPackInfo: json['referralPackInfo'] == null
          ? null
          : ReferralPackInfo.fromJson(
              json['referralPackInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReferralInfoToJson(_$_ReferralInfo instance) =>
    <String, dynamic>{
      'referralCode': instance.referralCode,
      'referralPackInfo': instance.referralPackInfo,
    };
