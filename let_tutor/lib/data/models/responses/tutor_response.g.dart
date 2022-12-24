// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TutorResponse _$$_TutorResponseFromJson(Map<String, dynamic> json) =>
    _$_TutorResponse(
      tutors: json['tutors'] == null
          ? null
          : Tutors.fromJson(json['tutors'] as Map<String, dynamic>),
      favoriteTutor: (json['favoriteTutor'] as List<dynamic>?)
          ?.map((e) => FavoriteTutor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TutorResponseToJson(_$_TutorResponse instance) =>
    <String, dynamic>{
      'tutors': instance.tutors,
      'favoriteTutor': instance.favoriteTutor,
    };
