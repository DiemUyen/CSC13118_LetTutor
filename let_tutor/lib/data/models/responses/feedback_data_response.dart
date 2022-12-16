import 'package:freezed_annotation/freezed_annotation.dart';

import '../tutor/feedbacks.dart';

part 'feedback_data_response.freezed.dart';
part 'feedback_data_response.g.dart';

@Freezed(fromJson: true)
class FeedbackDataResponse with _$FeedbackDataResponse {
  const factory FeedbackDataResponse({
    int? count,
    List<Feedbacks>? rows,
  }) = _FeedbackDataResponse;

  factory FeedbackDataResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedbackDataResponseFromJson(json);
}
