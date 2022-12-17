// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_schedule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NextScheduleResponse _$$_NextScheduleResponseFromJson(
        Map<String, dynamic> json) =>
    _$_NextScheduleResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => NextSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NextScheduleResponseToJson(
        _$_NextScheduleResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
