import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:let_tutor/data/models/user/referral_pack_info.dart';

part 'referral_info.freezed.dart';
part 'referral_info.g.dart';

@Freezed(fromJson: true)
class ReferralInfo with _$ReferralInfo {
  const factory ReferralInfo({
    String? referralCode,
    ReferralPackInfo? referralPackInfo,
  }) = _ReferralInfo;

  factory ReferralInfo.fromJson(Map<String, dynamic> json) =>
      _$ReferralInfoFromJson(json);
}
