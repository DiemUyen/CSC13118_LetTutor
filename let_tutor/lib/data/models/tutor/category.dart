import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@Freezed(fromJson: true)
class Category with _$Category {
  const factory Category({
    String? id,
    String? description,
    String? key,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
