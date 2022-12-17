import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:let_tutor/data/models/schedule/schedule_info.dart';

import '../tutor/feedbacks.dart';

part 'next_schedule.freezed.dart';
part 'next_schedule.g.dart';

@Freezed(fromJson: true)
class NextSchedule with _$NextSchedule {
  const factory NextSchedule({
    int? createdAtTimeStamp,
    int? updatedAtTimeStamp,
    String? id,
    String? userId,
    String? scheduleDetailId,
    String? tutorMeetingLink,
    String? studentMeetingLink,
    String? studentRequest,
    String? tutorReview,
    int? scoreByTutor,
    String? createdAt,
    String? updatedAt,
    String? recordUrl,
    String? cancelReasonId,
    String? lessonPlanId,
    String? cancelNote,
    String? calendarId,
    bool? isDeleted,
    ScheduleInfo? scheduleInfo,
    String? classReview,
    bool? showRecordUrl,
    List? studentMaterials,
    List<Feedbacks>? feedbacks,
  }) = _NextSchedule;

  factory NextSchedule.fromJson(Map<String, dynamic> json) =>
      _$NextScheduleFromJson(json);
}
