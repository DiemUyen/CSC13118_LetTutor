import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_preparation.freezed.dart';
part 'test_preparation.g.dart';

@Freezed(fromJson: true)
class TestPreparation with _$TestPreparation {
  const factory TestPreparation ({
    int? id,
    String? key,
    String? name,
    String? createdAt,
    String? updatedAt,
  }) = _TestPreparation;

  factory TestPreparation.fromJson(Map<String, dynamic> json) =>
      _$TestPreparationFromJson(json);
}