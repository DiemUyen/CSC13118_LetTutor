import 'package:freezed_annotation/freezed_annotation.dart';

import 'schedule_details.dart';

part 'schedule_of_tutor.freezed.dart';
part 'schedule_of_tutor.g.dart';

@Freezed(fromJson: true)
class ScheduleOfTutor with _$ScheduleOfTutor {
  const factory ScheduleOfTutor({
    String? id,
    String? tutorId,
    String? startTime,
    String? endTime,
    int? startTimestamp,
    int? endTimestamp,
    String? createdAt,
    bool? isBooked,
    List<ScheduleDetails>? scheduleDetails,
  }) = _ScheduleOfTutor;

  factory ScheduleOfTutor.fromJson(Map<String, dynamic> json) =>
      _$ScheduleOfTutorFromJson(json);
}
