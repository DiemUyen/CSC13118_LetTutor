import 'package:freezed_annotation/freezed_annotation.dart';

import '../tutor/feedbacks.dart';
import 'class_review.dart';
import 'schedule_details.dart';

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
    ScheduleDetails? scheduleDetailInfo,
    ClassReview? classReview,
    bool? showRecordUrl,
    List? studentMaterials,
    List<Feedbacks>? feedbacks,
  }) = _NextSchedule;

  factory NextSchedule.fromJson(Map<String, dynamic> json) =>
      _$NextScheduleFromJson(json);
}
