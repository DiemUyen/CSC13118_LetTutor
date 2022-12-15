import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/responses/tutor_response.dart';
import '../../../../data/models/tutor/tutor.dart';
import '../../../../data/repositories/repositories.dart';

part 'tutor_list_event.dart';
part 'tutor_list_state.dart';

class TutorListBloc extends Bloc<TutorListEvent, TutorListState> {
  TutorListBloc({required TutorRepository tutorRepository}) : super(const TutorListState()) {
    _tutorRepository = tutorRepository;
    on<TutorListLoaded>(_onLoaded);
    on<TutorListNameSearched>(_onSearchTutorName);
    on<TutorListFilterButtonPressed>(_onFilterButtonPressed);
    on<TutorListFilterChanged>(_onFilterChanged);
    on<TutorListSpecialityChosen>(_onSpecialityChosen);
    on<TutorListSpecialitiesChanged>(_onSpecialitiesChanged);
    on<TutorListFavoriteButtonPressed>(_onFavoriteButtonPressed);

    add(TutorListLoaded());
  }

  late final TutorRepository _tutorRepository;

  FutureOr<void> _onLoaded(
      TutorListLoaded event, Emitter<TutorListState> emit) async {
    emit(state.copyWith(status: TutorListStatus.loading));
    await _loadTutorList(emit);
  }

  FutureOr<void> _onSearchTutorName(
      TutorListNameSearched event, Emitter<TutorListState> emit) {
    emit(state.copyWith(status: TutorListStatus.loading));

    //var result = state.tutors.tutors.rows.where((element) => element.)

    emit(state.copyWith(status: TutorListStatus.loadSuccess));
  }

  FutureOr<void> _onFilterButtonPressed(
      TutorListFilterButtonPressed event, Emitter<TutorListState> emit) {
    emit(state.copyWith(isSearching: !state.isSearching));
  }

  FutureOr<void> _onFilterChanged(
      TutorListFilterChanged event, Emitter<TutorListState> emit) {}

  FutureOr<void> _onSpecialityChosen(
      TutorListSpecialityChosen event, Emitter<TutorListState> emit) {}

  FutureOr<void> _onSpecialitiesChanged(
      TutorListSpecialitiesChanged event, Emitter<TutorListState> emit) {}

  FutureOr<void> _onFavoriteButtonPressed(
      TutorListFavoriteButtonPressed event, Emitter<TutorListState> emit) async {
    var response = await _tutorRepository.addFavoriteTutor(event.tutorId);
    await _loadTutorList(emit);
  }

  FutureOr<void> _loadTutorList(Emitter<TutorListState> emit) async {
    try {
      var tutorResponse = await _tutorRepository.getListTutor();
      emit(state.copyWith(
          tutors: tutorResponse,
          filteredTutors: tutorResponse.tutors!.rows!,
          status: TutorListStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(error: 'Load failed!'));
    }
  }
}
