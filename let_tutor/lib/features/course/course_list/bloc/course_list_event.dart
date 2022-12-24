part of 'course_list_bloc.dart';

abstract class CourseListEvent extends Equatable {
  const CourseListEvent();
}

class CourseListLoaded extends CourseListEvent {
  @override
  List<Object?> get props => [];
}