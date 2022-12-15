part of 'course_detail_bloc.dart';

abstract class CourseDetailEvent extends Equatable {
  const CourseDetailEvent();
}

class CourseDetailLoaded extends CourseDetailEvent {
  const CourseDetailLoaded({required this.courseId});

  final String courseId;

  @override
  List<Object?> get props => [courseId];
}
