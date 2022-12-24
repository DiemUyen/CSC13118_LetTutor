// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseDataResponse _$$_CourseDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CourseDataResponse(
      count: json['count'] as int?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => Courses.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CourseDataResponseToJson(
        _$_CourseDataResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows,
    };
