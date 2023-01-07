part of 'course_list_bloc.dart';

class CourseListState extends Equatable {
  const CourseListState({
    this.courses = const [],
    this.filteredCourses = const [],
    this.status = CourseListStatus.initial,
    this.categories = const [],
    this.isReset = false,
    this.isFilterSearch = false,
    this.filters = const {},
  });

  final List<Courses> courses;
  final List<Courses> filteredCourses;
  final CourseListStatus status;
  final List<Categories> categories;
  final bool isReset;
  final bool isFilterSearch;
  final Map<String, dynamic> filters;

  CourseListState copyWith({
    List<Courses>? courses,
    List<Courses>? filteredCourses,
    CourseListStatus? status,
    List<Categories>? categories,
    bool? isReset,
    bool? isFilterSearch,
    Map<String, dynamic>? filters,
  }) {
    return CourseListState(
      courses: courses ?? this.courses,
      filteredCourses: filteredCourses ?? this.filteredCourses,
      status: status ?? this.status,
      categories: categories ?? this.categories,
      isReset:  isReset ?? this.isReset,
      isFilterSearch: isFilterSearch ?? this.isFilterSearch,
      filters: filters ?? this.filters,
    );
  }

  @override
  List<Object?> get props => [courses, filteredCourses, status, categories, isReset, isFilterSearch, filters];
}

enum CourseListStatus {
  initial,
  loading,
  loadSuccess,
  loadFailure,
}
