import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_info.freezed.dart';
part 'wallet_info.g.dart';

@Freezed(fromJson: true)
class WalletInfo with _$WalletInfo {
  const factory WalletInfo({
    String? id,
    String? userId,
    String? amount,
    bool? isBlocked,
    String? createdAt,
    String? updatedAt,
    int? bonus,
}) = _WalletInfo;

  factory WalletInfo.fromJson(Map<String, dynamic> json) =>
      _$WalletInfoFromJson(json);
}