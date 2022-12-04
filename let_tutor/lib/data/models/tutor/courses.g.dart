// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Courses _$$_CoursesFromJson(Map<String, dynamic> json) => _$_Courses(
      id: json['id'] as String?,
      name: json['name'] as String?,
      tutorCourse: json['tutorCourse'] == null
          ? null
          : TutorCourse.fromJson(json['tutorCourse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CoursesToJson(_$_Courses instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tutorCourse': instance.tutorCourse,
    };
