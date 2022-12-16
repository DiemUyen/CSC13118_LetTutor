// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Courses _$$_CoursesFromJson(Map<String, dynamic> json) => _$_Courses(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      level: json['level'] as String?,
      reason: json['reason'] as String?,
      purpose: json['purpose'] as String?,
      otherDetails: json['otherDetails'] as String?,
      defaultPrice: json['defaultPrice'] as int?,
      coursePrice: json['coursePrice'] as int?,
      courseType: json['courseType'] as String?,
      sectionType: json['sectionType'] as String?,
      visible: json['visible'] as bool?,
      displayOrder: json['displayOrder'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      topics: (json['topics'] as List<dynamic>?)
          ?.map((e) => Topics.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => Users.fromJson(e as Map<String, dynamic>))
          .toList(),
      tutorCourse: json['tutorCourse'] == null
          ? null
          : TutorCourse.fromJson(json['tutorCourse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CoursesToJson(_$_Courses instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'level': instance.level,
      'reason': instance.reason,
      'purpose': instance.purpose,
      'otherDetails': instance.otherDetails,
      'defaultPrice': instance.defaultPrice,
      'coursePrice': instance.coursePrice,
      'courseType': instance.courseType,
      'sectionType': instance.sectionType,
      'visible': instance.visible,
      'displayOrder': instance.displayOrder,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'topics': instance.topics,
      'categories': instance.categories,
      'users': instance.users,
      'tutorCourse': instance.tutorCourse,
    };
