import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/responses/course_detail_response.dart';
import '../../../../data/repositories/repositories.dart';

part 'course_detail_event.dart';
part 'course_detail_state.dart';

class CourseDetailBloc extends Bloc<CourseDetailEvent, CourseDetailState> {
  CourseDetailBloc({required CourseRepository courseRepository}) : super(const CourseDetailState()) {
    _courseRepository = courseRepository;
    on<CourseDetailLoaded>(_onLoaded);
  }

  late final CourseRepository _courseRepository;

  FutureOr<void> _onLoaded(CourseDetailLoaded event, Emitter<CourseDetailState> emit) async {
    emit(state.copyWith(status: CourseDetailStatus.loading));

    try {
      var response = await _courseRepository.getDetailCourse(event.courseId);
      emit(state.copyWith(detailResponse: response, status: CourseDetailStatus.loadSuccess));
    }
    catch (exception) {
      emit(state.copyWith(status: CourseDetailStatus.loadFailure));
    }
  }
}
