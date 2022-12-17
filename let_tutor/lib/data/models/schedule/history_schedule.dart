import 'package:freezed_annotation/freezed_annotation.dart';

import 'next_schedule.dart';

part 'history_schedule.freezed.dart';
part 'history_schedule.g.dart';

@Freezed(fromJson: true)
class HistorySchedule with _$HistorySchedule {
  const factory HistorySchedule({
    int? count,
    List<NextSchedule>? rows,
  }) = _HistorySchedule;

  factory HistorySchedule.fromJson(Map<String, dynamic> json) =>
      _$HistoryScheduleFromJson(json);
}
