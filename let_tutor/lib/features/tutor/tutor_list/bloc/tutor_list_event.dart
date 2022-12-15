part of 'tutor_list_bloc.dart';

abstract class TutorListEvent extends Equatable {
  const TutorListEvent();
}

class TutorListLoaded extends TutorListEvent {
  @override
  List<Object?> get props => [];
}

class TutorListNameSearched extends TutorListEvent {
  final String tutorName;

  const TutorListNameSearched({required this.tutorName});

  @override
  List<Object?> get props => [tutorName];
}

class TutorListFilterButtonPressed extends TutorListEvent {
  @override
  List<Object?> get props => [];
}

class TutorListFilterChanged extends TutorListEvent {
  final Map<String, dynamic> filters;

  const TutorListFilterChanged({required this.filters});

  @override
  List<Object?> get props => [filters];
}

class TutorListNationalityChanged extends TutorListEvent {
  final Map<String, bool> nationality;

  const TutorListNationalityChanged({required this.nationality});

  @override
  List<Object?> get props => [nationality];
}

class TutorListSpecialityChosen extends TutorListEvent {
  final String speciality;

  const TutorListSpecialityChosen({required this.speciality});

  @override
  List<Object?> get props => [speciality];
}

class TutorListResetFilterButtonPressed extends TutorListEvent {
  @override
  List<Object?> get props => [];
}

class TutorListFavoriteButtonPressed extends TutorListEvent {
  final String tutorId;

  const TutorListFavoriteButtonPressed({required this.tutorId});

  @override
  List<Object?> get props => [tutorId];
}
