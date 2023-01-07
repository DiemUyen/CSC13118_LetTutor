import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_reason.freezed.dart';
part 'cancel_reason.g.dart';

@Freezed(fromJson: true)
class CancelReason with _$CancelReason {
  const factory CancelReason({
    int? id,
    String? reason,
  }) = _CancelReason;

  factory CancelReason.fromJson(Map<String, dynamic> json) =>
      _$CancelReasonFromJson(json);
}
