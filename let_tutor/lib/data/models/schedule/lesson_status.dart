import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_status.freezed.dart';
part 'lesson_status.g.dart';

@Freezed(fromJson: true)
class LessonStatus with _$LessonStatus {
  const factory LessonStatus({
    int? id,
    String? status,
    String? createdAt,
    String? updatedAt,
  }) = _LessonStatus;

  factory LessonStatus.fromJson(Map<String, dynamic> json) =>
      _$LessonStatusFromJson(json);
}
