import 'package:freezed_annotation/freezed_annotation.dart';

import '../tutor/tutor.dart';

part 'schedule_info.freezed.dart';
part 'schedule_info.g.dart';

@Freezed(fromJson: true)
class ScheduleInfo with _$ScheduleInfo {
  const factory ScheduleInfo({
    String? date,
    int? startTimestamp,
    int? endTimestamp,
    String? id,
    String? tutorId,
    String? startTime,
    String? endTime,
    bool? isDeleted,
    String? createdAt,
    String? updatedAt,
    Tutor? tutorInfo,
  }) = _ScheduleInfo;

  factory ScheduleInfo.fromJson(Map<String, dynamic> json) =>
      _$ScheduleInfoFromJson(json);
}
