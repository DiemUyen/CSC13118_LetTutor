import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/course/courses.dart';
import '../../../../data/repositories/repositories.dart';

part 'course_list_event.dart';
part 'course_list_state.dart';

class CourseListBloc extends Bloc<CourseListEvent, CourseListState> {
  CourseListBloc({
    required CourseRepository courseRepository,
  }) : super(const CourseListState()) {
    _courseRepository = courseRepository;
    on<CourseListLoaded>(_onLoaded);
  }

  late final CourseRepository _courseRepository;

  FutureOr<void> _onLoaded(
      CourseListLoaded event, Emitter<CourseListState> emit) async {
    emit(state.copyWith(status: CourseListStatus.loading));

    try {
      final response = await _courseRepository.getListCourses();
      final courses = response.data?.rows;
      emit(state.copyWith(
          courses: courses, status: CourseListStatus.loadSuccess));
    }
    catch (exception) {
      emit(state.copyWith(status: CourseListStatus.loadFailure));
    }
  }
}
