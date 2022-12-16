import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user.dart';
import 'categories.dart';
import 'topics.dart';
import 'tutor_course.dart';

part 'courses.freezed.dart';
part 'courses.g.dart';

@Freezed(fromJson: true)
class Courses with _$Courses {
  const factory Courses({
    String? id,
    String? name,
    String? description,
    String? imageUrl,
    String? level,
    String? reason,
    String? purpose,
    String? otherDetails,
    int? defaultPrice,
    int? coursePrice,
    String? courseType,
    String? sectionType,
    bool? visible,
    int? displayOrder,
    String? createdAt,
    String? updatedAt,
    List<Topics>? topics,
    List<Categories>? categories,
    List<Users>? users,
    TutorCourse? tutorCourse,
  }) = _Courses;

  factory Courses.fromJson(Map<String, dynamic> json) =>
      _$CoursesFromJson(json);
}
