import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/tutor/category.dart';
import '../../../../data/models/tutor/tutor.dart';
import '../../../../data/models/user/learn_topics.dart';
import '../../../../data/models/user/test_preparation.dart';
import '../../../../data/repositories/repositories.dart';

part 'tutor_detail_event.dart';
part 'tutor_detail_state.dart';

class TutorDetailBloc extends Bloc<TutorDetailEvent, TutorDetailState> {
  TutorDetailBloc({
    required TutorRepository tutorRepository,
  }) : super(const TutorDetailState()) {
    _tutorRepository = tutorRepository;
    on<TutorDetailLoaded>(_onLoaded);
    on<TutorDetailFavoriteButtonPressed>(_onFavoriteButtonPressed);
    on<TutorDetailReportButtonPressed>(_onReportButtonPressed);
    on<TutorDetailReportContentChanged>(_onReportContentChanged);
  }

  late final TutorRepository _tutorRepository;
  String contentReport = '';

  FutureOr<void> _onLoaded(
      TutorDetailLoaded event, Emitter<TutorDetailState> emit) async {
    emit(state.copyWith(status: TutorDetailStatus.loading));

    try {
      var learnTopics = await _tutorRepository.getLearnTopics();
      var testPreparations = await _tutorRepository.getTestPreparation();
      var categories = await _tutorRepository.getCategories();
      var tutor = await _tutorRepository.getTutorInformation(event.tutorId);
      print(tutor.User);
      emit(state.copyWith(
        learnTopics: learnTopics,
        testPreparations: testPreparations,
        categories: categories.categories,
        tutor: tutor,
        status: TutorDetailStatus.loadFirstSuccess,
      ));
    } catch (exception) {
      emit(state.copyWith(status: TutorDetailStatus.loadFailure));
    }
  }

  FutureOr<void> _onFavoriteButtonPressed(
      TutorDetailFavoriteButtonPressed event,
      Emitter<TutorDetailState> emit) async {
    var response =
        await _tutorRepository.addFavoriteTutor(state.tutor.User?.id ?? '');
    if (response) {
      Tutor updatedTutor =
      state.tutor.copyWith(isFavorite: !(state.tutor.isFavorite ?? false));
      emit(state.copyWith(
          tutor: updatedTutor.copyWith(),
          status: TutorDetailStatus.loadSuccess));
    }
  }

  FutureOr<void> _onReportButtonPressed(TutorDetailReportButtonPressed event,
      Emitter<TutorDetailState> emit) async {
    var response = await _tutorRepository.reportTutor(
        state.tutor.User?.id ?? '', contentReport);
    contentReport = '';
    if (response) {
      emit(state.copyWith(status: TutorDetailStatus.loadSuccess));
    }
    else {
      emit(state.copyWith(status: TutorDetailStatus.loadFailure));
    }
  }

  FutureOr<void> _onReportContentChanged(TutorDetailReportContentChanged event, Emitter<TutorDetailState> emit) {
    contentReport = event.content;
  }
}
