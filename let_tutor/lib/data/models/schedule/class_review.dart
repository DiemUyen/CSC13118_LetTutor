import 'package:freezed_annotation/freezed_annotation.dart';

import 'lesson_status.dart';

part 'class_review.freezed.dart';
part 'class_review.g.dart';

@Freezed(fromJson: true)
class ClassReview with _$ClassReview {
  const factory ClassReview({
    String? bookingId,
    int? lessonStatusId,
    String? book,
    String? unit,
    String? lesson,
    int? page,
    String? lessonProgress,
    int? behaviorRating,
    String? behaviorComment,
    int? listeningRating,
    String? listeningComment,
    int? speakingRating,
    String? speakingComment,
    int? vocabularyRating,
    String? vocabularyComment,
    String? homeworkComment,
    String? overallComment,
    LessonStatus? lessonStatus,
  }) = _ClassReview;

  factory ClassReview.fromJson(Map<String, dynamic> json) =>
      _$ClassReviewFromJson(json);
}
