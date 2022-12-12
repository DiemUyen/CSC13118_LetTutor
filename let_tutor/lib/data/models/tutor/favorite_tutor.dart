import 'package:freezed_annotation/freezed_annotation.dart';

import 'second_info.dart';

part 'favorite_tutor.freezed.dart';
part 'favorite_tutor.g.dart';

@Freezed(fromJson: true)
class FavoriteTutor with _$FavoriteTutor {
  const factory FavoriteTutor({
    String? id,
    String? firstId,
    String? secondId,
    String? createdAt,
    String? updatedAt,
    SecondInfo? secondInfo,
}) = _FavoriteTutor;

  factory FavoriteTutor.fromJson(Map<String, dynamic> json) =>
      _$FavoriteTutorFromJson(json);
}