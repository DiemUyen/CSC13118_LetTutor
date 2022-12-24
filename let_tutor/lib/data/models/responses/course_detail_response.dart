import 'package:freezed_annotation/freezed_annotation.dart';

import '../course/courses.dart';

part 'course_detail_response.freezed.dart';
part 'course_detail_response.g.dart';

@Freezed(fromJson: true)
class CourseDetailResponse with _$CourseDetailResponse {
  const factory CourseDetailResponse({
    String? message,
    Courses? data,
  }) = _CourseDetailResponse;

  factory CourseDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseDetailResponseFromJson(json);
}
