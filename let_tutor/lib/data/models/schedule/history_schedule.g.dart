// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HistorySchedule _$$_HistoryScheduleFromJson(Map<String, dynamic> json) =>
    _$_HistorySchedule(
      count: json['count'] as int?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => NextSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HistoryScheduleToJson(_$_HistorySchedule instance) =>
    <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows,
    };
