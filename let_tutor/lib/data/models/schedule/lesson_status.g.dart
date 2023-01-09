// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LessonStatus _$$_LessonStatusFromJson(Map<String, dynamic> json) =>
    _$_LessonStatus(
      id: json['id'] as int?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_LessonStatusToJson(_$_LessonStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
