import 'package:freezed_annotation/freezed_annotation.dart';

import '../tutor/category.dart';

part 'category_response.freezed.dart';
part 'category_response.g.dart';

@Freezed(fromJson: true)
class CategoryResponse with _$CategoryResponse {
  const factory CategoryResponse({
    String? id,
    String? languages,
    List<Category>? categories,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}
