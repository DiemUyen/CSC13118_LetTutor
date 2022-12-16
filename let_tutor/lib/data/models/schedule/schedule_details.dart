import 'package:freezed_annotation/freezed_annotation.dart';

import 'booking_info.dart';

part 'schedule_details.freezed.dart';
part 'schedule_details.g.dart';

@Freezed(fromJson: true)
class ScheduleDetails with _$ScheduleDetails {
  const factory ScheduleDetails(
      {int? startPeriodTimestamp,
      int? endPeriodTimestamp,
      String? id,
      String? scheduleId,
      String? startPeriod,
      String? endPeriod,
      String? createdAt,
      String? updatedAt,
      List<BookingInfo>? bookingInfo,
      bool? isBooked}) = _ScheduleDetails;

  factory ScheduleDetails.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDetailsFromJson(json);
}
