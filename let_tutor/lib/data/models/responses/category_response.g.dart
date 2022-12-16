// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryResponse _$$_CategoryResponseFromJson(Map<String, dynamic> json) =>
    _$_CategoryResponse(
      id: json['id'] as String?,
      languages: json['languages'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryResponseToJson(_$_CategoryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'languages': instance.languages,
      'categories': instance.categories,
    };
