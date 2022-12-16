import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_info.freezed.dart';
part 'booking_info.g.dart';

@Freezed(fromJson: true)
class BookingInfo with _$BookingInfo {
  const factory BookingInfo({
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
    int? cancelReasonId,
    int? lessonPlanId,
    String? cancelNote,
    String? calendarId,
    bool? isDeleted,
  }) = _BookingInfo;

  factory BookingInfo.fromJson(Map<String, dynamic> json) =>
      _$BookingInfoFromJson(json);
}
