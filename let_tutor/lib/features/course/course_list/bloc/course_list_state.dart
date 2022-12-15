part of 'course_list_bloc.dart';

class CourseListState extends Equatable {
  const CourseListState({
    this.courses = const [],
    this.status = CourseListStatus.initial,
  });

  final List<Courses> courses;
  final CourseListStatus status;

  CourseListState copyWith({
    List<Courses>? courses,
    CourseListStatus? status,
  }) {
    return CourseListState(
      courses: courses ?? this.courses,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [courses, status];
}

enum CourseListStatus {
  initial,
  loading,
  loadSuccess,
  loadFailure,
}
