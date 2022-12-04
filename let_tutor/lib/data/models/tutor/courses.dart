import 'package:freezed_annotation/freezed_annotation.dart';

import 'tutor_course.dart';

part 'courses.freezed.dart';
part 'courses.g.dart';

@Freezed(fromJson: true)
class Courses with _$Courses {
  const factory Courses({
    String? id,
    String? name,
    TutorCourse? tutorCourse,
  }) = _Courses;

  factory Courses.fromJson(Map<String, dynamic> json) =>
      _$CoursesFromJson(json);
}
