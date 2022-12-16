import 'package:freezed_annotation/freezed_annotation.dart';

import '../schedule/schedule_of_tutor.dart';

part 'schedule_response.freezed.dart';
part 'schedule_response.g.dart';

@Freezed(fromJson: true)
class ScheduleResponse with _$ScheduleResponse {
  const factory ScheduleResponse({
    String? message,
    List<ScheduleOfTutor>? data,
  }) = _ScheduleResponse;

  factory ScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$ScheduleResponseFromJson(json);
}
