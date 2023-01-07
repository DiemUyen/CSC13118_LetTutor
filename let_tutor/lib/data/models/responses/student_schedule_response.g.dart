// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_schedule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudentScheduleResponse _$$_StudentScheduleResponseFromJson(
        Map<String, dynamic> json) =>
    _$_StudentScheduleResponse(
      count: json['count'] as int?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => NextSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StudentScheduleResponseToJson(
        _$_StudentScheduleResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows,
    };
