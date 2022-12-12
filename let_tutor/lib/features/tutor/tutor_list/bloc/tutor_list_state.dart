part of 'tutor_list_bloc.dart';

class TutorListState extends Equatable {
  const TutorListState({
    this.tutors = const TutorResponse(),
    this.filteredTutors = const [],
    this.error = '',
    this.isSearching = false,
    this.filters = const {},
    this.status = TutorListStatus.initial,
  });

  final TutorResponse tutors;
  final List<Tutor> filteredTutors;
  final String error;
  final bool isSearching;
  final Map<String, String> filters;
  final TutorListStatus status;

  TutorListState copyWith(
      {TutorResponse? tutors,
      List<Tutor>? filteredTutors,
      String? error,
      bool? isSearching,
      Map<String, String>? filters,
      TutorListStatus? status}) {
    return TutorListState(
      tutors: tutors ?? this.tutors,
      filteredTutors: filteredTutors ?? this.filteredTutors,
      error: error ?? this.error,
      isSearching: isSearching ?? this.isSearching,
      filters: filters ?? this.filters,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props =>
      [tutors, filteredTutors, error, isSearching, filters, status];
}

enum TutorListStatus { initial, loading, loadSuccess, loadFailure }
