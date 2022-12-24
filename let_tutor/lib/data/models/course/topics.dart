import 'package:freezed_annotation/freezed_annotation.dart';

part 'topics.freezed.dart';
part 'topics.g.dart';

@Freezed(fromJson: true)
class Topics with _$Topics {
  const factory Topics({
    String? id,
    String? courseId,
    int? orderCourse,
    String? name,
    String? nameFile,
    int? numberOfPages,
    String? description,
    String? videoUrl,
    String? type,
    String? createdAt,
    String? updatedAt,
  }) = _Topics;

  factory Topics.fromJson(Map<String, dynamic> json) => _$TopicsFromJson(json);
}
