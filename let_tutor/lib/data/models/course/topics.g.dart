// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Topics _$$_TopicsFromJson(Map<String, dynamic> json) => _$_Topics(
      id: json['id'] as String?,
      courseId: json['courseId'] as String?,
      orderCourse: json['orderCourse'] as int?,
      name: json['name'] as String?,
      nameFile: json['nameFile'] as String?,
      numberOfPages: json['numberOfPages'] as int?,
      description: json['description'] as String?,
      videoUrl: json['videoUrl'] as String?,
      type: json['type'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_TopicsToJson(_$_Topics instance) => <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'orderCourse': instance.orderCourse,
      'name': instance.name,
      'nameFile': instance.nameFile,
      'numberOfPages': instance.numberOfPages,
      'description': instance.description,
      'videoUrl': instance.videoUrl,
      'type': instance.type,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
