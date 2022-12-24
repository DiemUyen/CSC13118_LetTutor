// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackResponse _$$_FeedbackResponseFromJson(Map<String, dynamic> json) =>
    _$_FeedbackResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : FeedbackDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeedbackResponseToJson(_$_FeedbackResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
