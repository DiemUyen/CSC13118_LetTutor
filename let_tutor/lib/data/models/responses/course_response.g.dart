// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseResponse _$$_CourseResponseFromJson(Map<String, dynamic> json) =>
    _$_CourseResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CourseDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CourseResponseToJson(_$_CourseResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
