import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/responses/tutor_response.dart';
import '../../../../data/models/tutor/tutor.dart';
import '../../../../data/models/user/learn_topics.dart';
import '../../../../data/models/user/test_preparation.dart';
import '../../../../data/repositories/repositories.dart';

part 'tutor_list_event.dart';
part 'tutor_list_state.dart';

class TutorListBloc extends Bloc<TutorListEvent, TutorListState> {
  TutorListBloc(
      {required TutorRepository tutorRepository,
      required UserRepository userRepository})
      : super(const TutorListState()) {
    _tutorRepository = tutorRepository;
    _userRepository = userRepository;
    on<TutorListLoaded>(_onLoaded);
    on<TutorListNameSearched>(_onSearchTutorName);
    on<TutorListFilterButtonPressed>(_onFilterButtonPressed);
    on<TutorListFilterChanged>(_onFilterChanged);
    on<TutorListNationalityChanged>(_onNationalityChanged);
    on<TutorListSpecialityChosen>(_onSpecialityChosen);
    on<TutorListResetFilterButtonPressed>(_onResetFilterButtonPressed);
    on<TutorListFavoriteButtonPressed>(_onFavoriteButtonPressed);

    //add(TutorListLoaded());
  }

  late final TutorRepository _tutorRepository;
  late final UserRepository _userRepository;
  String? tutorName;

  FutureOr<void> _onLoaded(
      TutorListLoaded event, Emitter<TutorListState> emit) async {
    emit(state.copyWith(status: TutorListStatus.loading));
    try {
      var tutorResponse = await _tutorRepository.getListTutor();
      var response =
          await _tutorRepository.searchTutor(state.filters, tutorName);
      tutorResponse.tutors?.rows?.sort((a, b) {
        if (a.rating == null || b.rating == null) return 0;
        return a.rating!.compareTo(b.rating!);
      });
      var learnTopics = await _tutorRepository.getLearnTopics();
      var testPreparations = await _tutorRepository.getTestPreparation();
      var totalCallMinutes = await _userRepository.getTotalCallMinutes();
      emit(state.copyWith(
          tutors: tutorResponse,
          filteredTutors: response.rows!,
          learnTopics: learnTopics,
          testPreparations: testPreparations,
          totalMinutes: totalCallMinutes,
          status: TutorListStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(error: 'Load failed!'));
    }
  }

  FutureOr<void> _onSearchTutorName(
      TutorListNameSearched event, Emitter<TutorListState> emit) async {
    emit(state.copyWith(isReset: false, status: TutorListStatus.loading));

    tutorName = event.tutorName;

    try {
      var response =
          await _tutorRepository.searchTutor(state.filters, tutorName);
      emit(state.copyWith(
          filteredTutors: response.rows, status: TutorListStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(status: TutorListStatus.loadFailure));
    }
  }

  FutureOr<void> _onFilterButtonPressed(
      TutorListFilterButtonPressed event, Emitter<TutorListState> emit) {
    emit(state.copyWith(isReset: false, isSearching: !state.isSearching));
  }

  FutureOr<void> _onFilterChanged(
      TutorListFilterChanged event, Emitter<TutorListState> emit) async {
    state.filters.addAll(event.filters);
    emit(state.copyWith(isReset: false, filters: Map.of(state.filters)));
    try {
      var response =
          await _tutorRepository.searchTutor(state.filters, tutorName);
      emit(state.copyWith(
          filteredTutors: response.rows, status: TutorListStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(status: TutorListStatus.loadFailure));
    }
  }

  FutureOr<void> _onSpecialityChosen(
      TutorListSpecialityChosen event, Emitter<TutorListState> emit) async {
    Map<String, dynamic> filters = Map.of(state.filters);
    filters.addAll({
      'specialties': <String>[event.speciality]
    });
    emit(state.copyWith(isReset: false, filters: Map.of(filters)));
    try {
      var response = await _tutorRepository.searchTutor(filters, tutorName);
      emit(state.copyWith(
          filteredTutors: response.rows, status: TutorListStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(status: TutorListStatus.loadFailure));
    }
  }

  FutureOr<void> _onResetFilterButtonPressed(
      TutorListResetFilterButtonPressed event,
      Emitter<TutorListState> emit) async {
    var filters =
        Map.of({'specialties': <String>[], 'nationality': <String, bool>{}});
    var response = await _tutorRepository.searchTutor(filters, null);
    emit(state.copyWith(
        filteredTutors: response.rows ?? [],
        filters: Map.of(
            {'specialties': <String>[], 'nationality': <String, bool>{}}),
        isReset: true,
        status: TutorListStatus.loadSuccess));

    tutorName = null;
  }

  FutureOr<void> _onFavoriteButtonPressed(TutorListFavoriteButtonPressed event,
      Emitter<TutorListState> emit) async {
    var response = await _tutorRepository.addFavoriteTutor(event.tutorId);
    try {
      var tutorResponse = await _tutorRepository.getListTutor();
      var tutors = await _tutorRepository.searchTutor(state.filters, tutorName);
      emit(state.copyWith(
          tutors: tutorResponse,
          filteredTutors: tutors.rows,
          status: TutorListStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(error: 'Load failed!'));
    }
  }

  FutureOr<void> _onNationalityChanged(
      TutorListNationalityChanged event, Emitter<TutorListState> emit) async {
    Map<String, dynamic> filters = Map.of(state.filters);
    filters.addAll({
      'nationality': event.nationality,
    });
    emit(state.copyWith(isReset: false, filters: Map.of(filters)));
    try {
      var response = await _tutorRepository.searchTutor(filters, tutorName);
      emit(state.copyWith(
          filteredTutors: response.rows, status: TutorListStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(status: TutorListStatus.loadFailure));
    }
  }
}
