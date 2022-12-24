import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories.freezed.dart';
part 'categories.g.dart';

@Freezed(fromJson: true)
class Categories with _$Categories {
  const factory Categories({
    String? id,
    String? title,
    String? description,
    String? key,
    int? displayOrder,
    String? createdAt,
    String? updatedAt,
  }) = _Categories;

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);
}
