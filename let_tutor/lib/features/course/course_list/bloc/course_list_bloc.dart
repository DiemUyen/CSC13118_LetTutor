import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/course/categories.dart';
import '../../../../data/models/course/courses.dart';
import '../../../../data/repositories/repositories.dart';

part 'course_list_event.dart';
part 'course_list_state.dart';

const page = 1;
const size = 100;

class CourseListBloc extends Bloc<CourseListEvent, CourseListState> {
  CourseListBloc({
    required CourseRepository courseRepository,
  }) : super(const CourseListState()) {
    _courseRepository = courseRepository;
    on<CourseListLoaded>(_onLoaded);
    on<CourseListNameSearchChanged>(_onNameSearchChanged);
    on<CourseListFilterButtonPressed>(_onFilterButtonPressed);
    on<CourseListLevelFilterChanged>(_onLevelFilterChanged);
    on<CourseListCategoryFilterChanged>(_onCategoryFilterChanged);
    on<CourseListSortFilterChanged>(_onSortFilterChanged);
    on<CourseListResetFilterButtonPressed>(_onResetFilterButtonPressed);
  }

  late final CourseRepository _courseRepository;

  FutureOr<void> _onLoaded(
      CourseListLoaded event, Emitter<CourseListState> emit) async {
    emit(state.copyWith(status: CourseListStatus.loading));

    try {
      final courseResponse = await _courseRepository.getListCourses();
      final courses = courseResponse.data?.rows;
      final categoriesResponse = await _courseRepository.getContentCategories();
      final contentCategories = categoriesResponse.rows;
      emit(state.copyWith(
          courses: courses,
          filteredCourses: courses,
          categories: contentCategories,
          status: CourseListStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(status: CourseListStatus.loadFailure));
    }
  }

  FutureOr<void> _onNameSearchChanged(
      CourseListNameSearchChanged event, Emitter<CourseListState> emit) async {
    var filters = Map.of(state.filters);
    if (filters.containsKey('q')) {
      filters['q'] = event.courseName;
    } else {
      filters.addAll({'q': event.courseName});
    }

    try {
      var response =
          await _courseRepository.searchCourses(page, size, Map.of(filters));
      emit(state.copyWith(
          filteredCourses: response.data?.rows ?? [],
          status: CourseListStatus.loadSuccess,
          isReset: false,
          filters: Map.of(filters)));
    } catch (exception) {
      emit(state.copyWith(status: CourseListStatus.loadFailure, isReset: false));
    }
  }

  FutureOr<void> _onFilterButtonPressed(
      CourseListFilterButtonPressed event, Emitter<CourseListState> emit) {
    final isFilterSearch = state.isFilterSearch;
    emit(state.copyWith(isFilterSearch: !isFilterSearch));
  }

  FutureOr<void> _onLevelFilterChanged(
      CourseListLevelFilterChanged event, Emitter<CourseListState> emit) async {
    var filters = Map.of(state.filters);
    if (filters.containsKey('level[]')) {
      filters['level[]'] = event.level;
    } else {
      filters.addAll({'level[]': event.level});
    }

    try {
      var response =
          await _courseRepository.searchCourses(page, size, Map.of(filters));
      emit(state.copyWith(
          filteredCourses: response.data?.rows ?? [],
          status: CourseListStatus.loadSuccess,
          isReset: false,
          filters: Map.of(filters)));
    } catch (exception) {
      emit(state.copyWith(status: CourseListStatus.loadFailure, isReset: false));
    }
  }

  FutureOr<void> _onCategoryFilterChanged(CourseListCategoryFilterChanged event,
      Emitter<CourseListState> emit) async {
    var filters = Map.of(state.filters);
    if (filters.containsKey('categoryId[]')) {
      filters['categoryId[]'] = event.categoryId;
    } else {
      filters.addAll({'categoryId[]': event.categoryId});
    }

    try {
      var response =
          await _courseRepository.searchCourses(page, size, Map.of(filters));
      emit(state.copyWith(
          filteredCourses: response.data?.rows ?? [],
          status: CourseListStatus.loadSuccess,
          isReset: false,
          filters: Map.of(filters)));
    } catch (exception) {
      emit(state.copyWith(status: CourseListStatus.loadFailure, isReset: false));
    }
  }

  FutureOr<void> _onSortFilterChanged(
      CourseListSortFilterChanged event, Emitter<CourseListState> emit) async {
    var filters = Map.of(state.filters);
    if (filters.containsKey('order[]')) {
      filters['orderBy[]'] = event.orderBy;
    } else {
      filters.addAll({'order[]': 'level', 'orderBy[]': event.orderBy});
    }

    try {
      var response =
          await _courseRepository.searchCourses(page, size, Map.of(filters));
      emit(state.copyWith(
          filteredCourses: response.data?.rows ?? [],
          status: CourseListStatus.loadSuccess,
          isReset: false,
          filters: Map.of(filters)));
    } catch (exception) {
      emit(state.copyWith(status: CourseListStatus.loadFailure, isReset: false));
    }
  }

  FutureOr<void> _onResetFilterButtonPressed(
      CourseListResetFilterButtonPressed event, Emitter<CourseListState> emit) {
    var filters = Map.of(state.filters);
    filters.clear();
    emit(state.copyWith(
        isReset: true, filteredCourses: state.courses, filters: filters));
  }
}
