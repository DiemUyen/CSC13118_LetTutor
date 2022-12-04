import 'package:freezed_annotation/freezed_annotation.dart';

part 'learn_topics.freezed.dart';
part 'learn_topics.g.dart';

@Freezed(fromJson: true)
class LearnTopics with _$LearnTopics {
  const factory LearnTopics({
    int? id,
    String? key,
    String? name,
  }) = _LearnTopics;

  factory LearnTopics.fromJson(Map<String, dynamic> json) =>
      _$LearnTopicsFromJson(json);
}
