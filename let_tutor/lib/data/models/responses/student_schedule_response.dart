import 'package:freezed_annotation/freezed_annotation.dart';

import '../schedule/next_schedule.dart';

part 'student_schedule_response.freezed.dart';
part 'student_schedule_response.g.dart';

@Freezed(fromJson: true)
class StudentScheduleResponse with _$StudentScheduleResponse {
  const factory StudentScheduleResponse({
    int? count,
    List<NextSchedule>? rows,
  }) = _StudentScheduleResponse;

  factory StudentScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentScheduleResponseFromJson(json);
}
