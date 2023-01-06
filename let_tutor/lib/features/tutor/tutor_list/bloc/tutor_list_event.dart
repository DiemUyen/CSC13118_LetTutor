part of 'tutor_list_bloc.dart';

abstract class TutorListEvent extends Equatable {
  const TutorListEvent();
}

class TutorListLoaded extends TutorListEvent {
  const TutorListLoaded();

  @override
  List<Object?> get props => [];
}

class TutorListNameSearched extends TutorListEvent {
  final String tutorName;

  const TutorListNameSearched({required this.tutorName});

  @override
  List<Object?> get props => [tutorName];
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

class TutorListChangePagePressed extends TutorListEvent {
  final int page;
  final int perPage;

  const TutorListChangePagePressed({this.page = 1, this.perPage = 12});

  @override
  List<Object?> get props => [page, perPage];
}