import 'package:freezed_annotation/freezed_annotation.dart';

import 'feedback_data_response.dart';

part 'feedback_response.freezed.dart';
part 'feedback_response.g.dart';

@Freezed(fromJson: true)
class FeedbackResponse with _$FeedbackResponse {
  const factory FeedbackResponse({
    String? message,
    FeedbackDataResponse? data,
  }) = _FeedbackResponse;

  factory FeedbackResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedbackResponseFromJson(json);
}
