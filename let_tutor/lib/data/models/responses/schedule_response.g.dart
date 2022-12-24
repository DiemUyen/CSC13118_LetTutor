// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleResponse _$$_ScheduleResponseFromJson(Map<String, dynamic> json) =>
    _$_ScheduleResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ScheduleOfTutor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ScheduleResponseToJson(_$_ScheduleResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
