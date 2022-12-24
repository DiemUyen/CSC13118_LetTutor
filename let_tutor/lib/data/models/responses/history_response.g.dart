// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HistoryResponse _$$_HistoryResponseFromJson(Map<String, dynamic> json) =>
    _$_HistoryResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : HistorySchedule.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_HistoryResponseToJson(_$_HistoryResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
