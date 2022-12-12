// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tutors _$$_TutorsFromJson(Map<String, dynamic> json) => _$_Tutors(
      count: json['count'] as int?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => Tutor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TutorsToJson(_$_Tutors instance) => <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows,
    };
