import 'package:freezed_annotation/freezed_annotation.dart';

part 'tutor_course.freezed.dart';
part 'tutor_course.g.dart';

@Freezed(fromJson: true)
class TutorCourse with _$TutorCourse {
  const factory TutorCourse({
    String? userId,
    String? courseId,
    String? createdAt,
    String? updatedAt,
  }) = _TutorCourse;

  factory TutorCourse.fromJson(Map<String, dynamic> json) =>
      _$TutorCourseFromJson(json);
}
