import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:let_tutor/data/repositories/repositories.dart';

import '../../../../data/models/tutor/feedbacks.dart';

part 'feedback_event.dart';
part 'feedback_state.dart';

class FeedbackBloc extends Bloc<FeedbackEvent, FeedbackState> {
  FeedbackBloc({required TutorRepository tutorRepository})
      : super(const FeedbackState()) {
    _tutorRepository = tutorRepository;
    on<FeedbackLoaded>(_onLoaded);
  }

  late final TutorRepository _tutorRepository;

  FutureOr<void> _onLoaded(
      FeedbackLoaded event, Emitter<FeedbackState> emit) async {
    try {
      var response = await _tutorRepository.getFeedbacks(event.tutorId, event.page);
      emit(
        state.copyWith(
          total: response.data?.count,
          feedbacks: response.data?.rows,
          status: FeedbackStatus.loadSuccess,
        ),
      );
    } catch (exception) {
      emit(state.copyWith(status: FeedbackStatus.loadFailure));
    }
  }
}
