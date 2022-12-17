// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpcomingResponse _$$_UpcomingResponseFromJson(Map<String, dynamic> json) =>
    _$_UpcomingResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => NextSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UpcomingResponseToJson(_$_UpcomingResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
