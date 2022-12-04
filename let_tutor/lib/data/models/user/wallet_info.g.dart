// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletInfo _$$_WalletInfoFromJson(Map<String, dynamic> json) =>
    _$_WalletInfo(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      amount: json['amount'] as String?,
      isBlocked: json['isBlocked'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      bonus: json['bonus'] as int?,
    );

Map<String, dynamic> _$$_WalletInfoToJson(_$_WalletInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'amount': instance.amount,
      'isBlocked': instance.isBlocked,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'bonus': instance.bonus,
    };
