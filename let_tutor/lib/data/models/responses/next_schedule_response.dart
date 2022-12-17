import 'package:freezed_annotation/freezed_annotation.dart';

import '../schedule/next_schedule.dart';

part 'next_schedule_response.freezed.dart';
part 'next_schedule_response.g.dart';

@Freezed(fromJson: true, makeCollectionsUnmodifiable: false)
class NextScheduleResponse with _$NextScheduleResponse {
  const factory NextScheduleResponse({
    String? message,
    List<NextSchedule>? data,
  }) = _NextScheduleResponse;

  factory NextScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$NextScheduleResponseFromJson(json);
}
