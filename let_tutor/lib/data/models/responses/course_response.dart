import 'package:freezed_annotation/freezed_annotation.dart';

import 'course_data_response.dart';

part 'course_response.freezed.dart';
part 'course_response.g.dart';

@Freezed(fromJson: true)
class CourseResponse with _$CourseResponse {
  const factory CourseResponse({
    String? message,
    CourseDataResponse? data,
  }) = _CourseResponse;

  factory CourseResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseResponseFromJson(json);
}
