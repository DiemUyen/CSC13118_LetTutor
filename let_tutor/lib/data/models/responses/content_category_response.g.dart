// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContentCategoryResponse _$$_ContentCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ContentCategoryResponse(
      count: json['count'] as int?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ContentCategoryResponseToJson(
        _$_ContentCategoryResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows,
    };
