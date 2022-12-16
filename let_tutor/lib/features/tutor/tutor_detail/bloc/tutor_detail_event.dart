part of 'tutor_detail_bloc.dart';

abstract class TutorDetailEvent extends Equatable {
  const TutorDetailEvent();
}

class TutorDetailLoaded extends TutorDetailEvent {
  const TutorDetailLoaded({required this.tutorId});

  final String tutorId;

  @override
  List<Object?> get props => [tutorId];
}

class TutorDetailFavoriteButtonPressed extends TutorDetailEvent {
  @override
  List<Object?> get props => [];
}

class TutorDetailReportButtonPressed extends TutorDetailEvent {
  const TutorDetailReportButtonPressed({required this.content});

  final String content;

  @override
  List<Object?> get props => [content];
}

class TutorDetailReportContentChanged extends TutorDetailEvent {
  const TutorDetailReportContentChanged({required this.content});

  final String content;

  @override
  List<Object?> get props => [content];
}