import 'package:freezed_annotation/freezed_annotation.dart';

import 'first_info.dart';

part 'feedbacks.freezed.dart';
part 'feedbacks.g.dart';

@Freezed(fromJson: true)
class Feedbacks with _$Feedbacks {
  const factory Feedbacks({
    String? id,
    String? bookingId,
    String? firstId,
    String? secondId,
    int? rating,
    String? content,
    String? createdAt,
    String? updatedAt,
    FirstInfo? firstInfo,
  }) = _Feedbacks;

  factory Feedbacks.fromJson(Map<String, dynamic> json) =>
      _$FeedbacksFromJson(json);
}
