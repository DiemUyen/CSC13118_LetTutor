import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/responses/tutor_response.dart';
import '../../../../data/models/schedule/next_schedule.dart';
import '../../../../data/models/tutor/tutors.dart';
import '../../../../data/models/user/learn_topics.dart';
import '../../../../data/models/user/test_preparation.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../generated/l10n.dart';

part 'tutor_list_event.dart';
part 'tutor_list_state.dart';

class TutorListBloc extends Bloc<TutorListEvent, TutorListState> {
  TutorListBloc(
      {required TutorRepository tutorRepository,
      required UserRepository userRepository,
      required ScheduleRepository scheduleRepository})
      : super(const TutorListState()) {
    _tutorRepository = tutorRepository;
    _userRepository = userRepository;
    _scheduleRepository = scheduleRepository;
    on<TutorListLoaded>(_onLoaded);
    on<TutorListNameSearched>(_onSearchTutorName);
    on<TutorListNationalityChanged>(_onNationalityChanged);
    on<TutorListSpecialityChosen>(_onSpecialityChosen);
    on<TutorListResetFilterButtonPressed>(_onResetFilterButtonPressed);
    on<TutorListFavoriteButtonPressed>(_onFavoriteButtonPressed);
    on<TutorListChangePagePressed>(_onChangePagePressed);
  }

  late final TutorRepository _tutorRepository;
  late final UserRepository _userRepository;
  late final ScheduleRepository _scheduleRepository;
  String? tutorName;
  static const int page = 1;
  static const int perPage = 12;

  FutureOr<void> _onLoaded(
      TutorListLoaded event, Emitter<TutorListState> emit) async {
    emit(state.copyWith(status: TutorListStatus.loading));
    try {
      var tutorResponse = await _tutorRepository.getListTutor();
      var response = await _tutorRepository.searchTutor(
          state.filters, tutorName, page, perPage);
      tutorResponse.tutors?.rows?.sort((a, b) {
        if (a.rating == null || b.rating == null) return 0;
        return a.rating!.compareTo(b.rating!);
      });
      var learnTopics = await _tutorRepository.getLearnTopics();
      var testPreparations = await _tutorRepository.getTestPreparation();
      var totalCallMinutes = await _userRepository.getTotalCallMinutes();
      var upcomingClasses = await _scheduleRepository.getUpcomingClass();
      upcomingClasses.data?.sort((a, b) {
        if (a.scheduleDetailInfo?.startPeriodTimestamp == null ||
            b.scheduleDetailInfo?.startPeriodTimestamp == null) return 0;
        return (a.scheduleDetailInfo!.startPeriodTimestamp!
            .compareTo(b.scheduleDetailInfo!.startPeriodTimestamp!));
      });
      var upcoming = upcomingClasses.data?.firstWhere(
          (element) => (element.scheduleDetailInfo?.startPeriodTimestamp
                  ?.compareTo(DateTime.now().millisecondsSinceEpoch) ==
              1),
          orElse: () => const NextSchedule());

      emit(state.copyWith(
          tutors: tutorResponse,
          filteredTutors: response,
          learnTopics: learnTopics,
          testPreparations: testPreparations,
          totalMinutes: totalCallMinutes,
          upcomingClass: upcoming,
          status: TutorListStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(error: S.current.load_failed));
    }
  }

  FutureOr<void> _onSearchTutorName(
      TutorListNameSearched event, Emitter<TutorListState> emit) async {
    emit(state.copyWith(isReset: false, status: TutorListStatus.loading));

    tutorName = event.tutorName;

    try {
      var response = await _tutorRepository.searchTutor(
          state.filters, tutorName, page, perPage);
      emit(state.copyWith(
          filteredTutors: response, status: TutorListStatus.loadSuccess));
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
      var response =
          await _tutorRepository.searchTutor(filters, tutorName, page, perPage);
      emit(state.copyWith(
          filteredTutors: response, status: TutorListStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(status: TutorListStatus.loadFailure));
    }
  }

  FutureOr<void> _onResetFilterButtonPressed(
      TutorListResetFilterButtonPressed event,
      Emitter<TutorListState> emit) async {
    var filters =
        Map.of({'specialties': <String>[], 'nationality': <String, bool>{}});
    var response =
        await _tutorRepository.searchTutor(filters, null, page, perPage);
    emit(state.copyWith(
        filteredTutors: response,
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
      var tutors = await _tutorRepository.searchTutor(
          state.filters, tutorName, page, perPage);
      emit(state.copyWith(
          tutors: tutorResponse,
          filteredTutors: tutors,
          status: TutorListStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(error: S.current.load_failed));
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
      var response =
          await _tutorRepository.searchTutor(filters, tutorName, page, perPage);
      emit(state.copyWith(
          filteredTutors: response, status: TutorListStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(status: TutorListStatus.loadFailure));
    }
  }

  FutureOr<void> _onChangePagePressed(
      TutorListChangePagePressed event, Emitter<TutorListState> emit) async {
    try {
      var response = await _tutorRepository.searchTutor(
          state.filters, tutorName, event.page, event.perPage);
      emit(state.copyWith(
          filteredTutors: response, status: TutorListStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(status: TutorListStatus.loadFailure));
    }
  }
}
