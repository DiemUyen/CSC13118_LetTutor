// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseDetailResponse _$$_CourseDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CourseDetailResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Courses.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CourseDetailResponseToJson(
        _$_CourseDetailResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
