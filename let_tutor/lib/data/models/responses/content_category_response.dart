import 'package:freezed_annotation/freezed_annotation.dart';

import '../course/categories.dart';

part 'content_category_response.freezed.dart';
part 'content_category_response.g.dart';

@Freezed(fromJson: true)
class ContentCategoryResponse with _$ContentCategoryResponse {
  const factory ContentCategoryResponse({
    int? count,
    List<Categories>? rows,
  }) = _ContentCategoryResponse;

  factory ContentCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ContentCategoryResponseFromJson(json);
}
