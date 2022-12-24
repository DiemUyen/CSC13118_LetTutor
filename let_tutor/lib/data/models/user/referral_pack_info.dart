import 'package:freezed_annotation/freezed_annotation.dart';

part 'referral_pack_info.freezed.dart';
part 'referral_pack_info.g.dart';

@Freezed(fromJson: true)
class ReferralPackInfo with _$ReferralPackInfo {
  const factory ReferralPackInfo({
    int? earnPercent,
  }) = _ReferralPackInfo;

  factory ReferralPackInfo.fromJson(Map<String, dynamic> json) =>
      _$ReferralPackInfoFromJson(json);
}
