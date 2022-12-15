import 'package:freezed_annotation/freezed_annotation.dart';

import '../course/courses.dart';

part 'course_data_response.freezed.dart';
part 'course_data_response.g.dart';

@Freezed(fromJson: true)
class CourseDataResponse with _$CourseDataResponse {
  const factory CourseDataResponse({
    int? count,
    List<Courses>? rows,
  }) = _CourseDataResponse;

  factory CourseDataResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseDataResponseFromJson(json);
}
