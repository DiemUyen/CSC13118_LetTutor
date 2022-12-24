import 'package:freezed_annotation/freezed_annotation.dart';

import '../tutor/favorite_tutor.dart';
import '../tutor/tutors.dart';

part 'tutor_response.freezed.dart';
part 'tutor_response.g.dart';

@Freezed(fromJson: true)
class TutorResponse with _$TutorResponse {
  const factory TutorResponse({
    Tutors? tutors,
    List<FavoriteTutor>? favoriteTutor,
  }) = _TutorResponse;

  factory TutorResponse.fromJson(Map<String, dynamic> json) =>
      _$TutorResponseFromJson(json);
}
