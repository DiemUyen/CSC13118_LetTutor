part of 'course_list_bloc.dart';

abstract class CourseListEvent extends Equatable {
  const CourseListEvent();
}

class CourseListLoaded extends CourseListEvent {
  @override
  List<Object?> get props => [];
}

class CourseListNameSearchChanged extends CourseListEvent {
  const CourseListNameSearchChanged(this.courseName);

  final String courseName;

  @override
  List<Object?> get props => [courseName];
}

class CourseListFilterButtonPressed extends CourseListEvent {
  @override
  List<Object?> get props => [];
}

class CourseListLevelFilterChanged extends CourseListEvent {
  const CourseListLevelFilterChanged(this.level);

  final int level;

  @override
  List<Object?> get props => [level];
}

class CourseListCategoryFilterChanged extends CourseListEvent {
  const CourseListCategoryFilterChanged(this.categoryId);

  final String categoryId;

  @override
  List<Object?> get props => [categoryId];
}

class CourseListSortFilterChanged extends CourseListEvent {
  const CourseListSortFilterChanged(this.orderBy);

  final String orderBy;

  @override
  List<Object?> get props => [orderBy];
}

class CourseListResetFilterButtonPressed extends CourseListEvent {
  @override
  List<Object?> get props => [];
}