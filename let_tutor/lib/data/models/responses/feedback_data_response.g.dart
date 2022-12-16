// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackDataResponse _$$_FeedbackDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FeedbackDataResponse(
      count: json['count'] as int?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => Feedbacks.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FeedbackDataResponseToJson(
        _$_FeedbackDataResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows,
    };
