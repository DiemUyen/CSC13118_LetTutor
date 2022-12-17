import 'package:freezed_annotation/freezed_annotation.dart';

import '../schedule/next_schedule.dart';

part 'upcoming_response.freezed.dart';
part 'upcoming_response.g.dart';

@Freezed(fromJson: true, makeCollectionsUnmodifiable: false)
class UpcomingResponse with _$UpcomingResponse {
  const factory UpcomingResponse({
    String? message,
    List<NextSchedule>? data,
  }) = _UpcomingResponse;

  factory UpcomingResponse.fromJson(Map<String, dynamic> json) =>
      _$UpcomingResponseFromJson(json);
}
