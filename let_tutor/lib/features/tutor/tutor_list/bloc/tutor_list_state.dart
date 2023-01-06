part of 'tutor_list_bloc.dart';

class TutorListState extends Equatable {
  const TutorListState({
    this.tutors = const TutorResponse(),
    this.filteredTutors = const Tutors(),
    this.learnTopics = const [],
    this.testPreparations = const [],
    this.error = '',
    this.isSearching = false,
    this.filters = const {
      'specialties': <String>[],
      'nationality': <String, bool>{}
    },
    this.isReset = false,
    this.totalMinutes = 0,
    this.upcomingClass = const NextSchedule(),
    this.status = TutorListStatus.initial,
  });

  final TutorResponse tutors;
  final Tutors filteredTutors;
  final List<LearnTopics> learnTopics;
  final List<TestPreparation> testPreparations;
  final String error;
  final bool isSearching;
  final Map<String, dynamic> filters;
  final bool isReset;
  final int totalMinutes;
  final NextSchedule upcomingClass;
  final TutorListStatus status;

  TutorListState copyWith(
      {TutorResponse? tutors,
      Tutors? filteredTutors,
      List<LearnTopics>? learnTopics,
      List<TestPreparation>? testPreparations,
      String? error,
      bool? isSearching,
      Map<String, dynamic>? filters,
      bool? isReset,
      int? totalMinutes,
      NextSchedule? upcomingClass,
      TutorListStatus? status}) {
    return TutorListState(
      tutors: tutors ?? this.tutors,
      filteredTutors: filteredTutors ?? this.filteredTutors,
      learnTopics: learnTopics ?? this.learnTopics,
      testPreparations: testPreparations ?? this.testPreparations,
      error: error ?? this.error,
      isSearching: isSearching ?? this.isSearching,
      filters: filters ?? this.filters,
      isReset: isReset ?? this.isReset,
      totalMinutes: totalMinutes ?? this.totalMinutes,
      upcomingClass: upcomingClass ?? this.upcomingClass,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
        tutors,
        filteredTutors,
        learnTopics,
        testPreparations,
        error,
        isSearching,
        filters,
        isReset,
        totalMinutes,
        upcomingClass,
        status,
      ];
}

enum TutorListStatus { initial, loading, loadSuccess, loadFailure }
