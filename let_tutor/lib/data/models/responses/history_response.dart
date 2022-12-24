import 'package:freezed_annotation/freezed_annotation.dart';

import '../schedule/history_schedule.dart';

part 'history_response.freezed.dart';
part 'history_response.g.dart';

@Freezed(fromJson: true)
class HistoryResponse with _$HistoryResponse {
  const factory HistoryResponse({
    String? message,
    HistorySchedule? data,
  }) = _HistoryResponse;

  factory HistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$HistoryResponseFromJson(json);
}
