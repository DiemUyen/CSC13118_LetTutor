part of 'tutor_list_bloc.dart';

class TutorListState extends Equatable {
  const TutorListState({
    this.tutors = const TutorResponse(),
    this.filteredTutors = const [],
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
    this.status = TutorListStatus.initial,
  });

  final TutorResponse tutors;
  final List<Tutor> filteredTutors;
  final List<LearnTopics> learnTopics;
  final List<TestPreparation> testPreparations;
  final String error;
  final bool isSearching;
  final Map<String, dynamic> filters;
  final bool isReset;
  final int totalMinutes;
  final TutorListStatus status;

  TutorListState copyWith(
      {TutorResponse? tutors,
      List<Tutor>? filteredTutors,
      List<LearnTopics>? learnTopics,
      List<TestPreparation>? testPreparations,
      String? error,
      bool? isSearching,
      Map<String, dynamic>? filters,
      bool? isReset,
      int? totalMinutes,
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
        status,
      ];
}

enum TutorListStatus { initial, loading, loadSuccess, loadFailure }
