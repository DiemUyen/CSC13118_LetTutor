import 'package:freezed_annotation/freezed_annotation.dart';

import 'tutor.dart';

part 'tutors.freezed.dart';
part 'tutors.g.dart';

@Freezed(fromJson: true, makeCollectionsUnmodifiable: false)
class Tutors with _$Tutors {
  const factory Tutors({
    int? count,
    List<Tutor>? rows,
  }) = _Tutors;

  factory Tutors.fromJson(Map<String, dynamic> json) => _$TutorsFromJson(json);
}
