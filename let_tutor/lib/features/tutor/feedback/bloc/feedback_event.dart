part of 'feedback_bloc.dart';

abstract class FeedbackEvent extends Equatable {
  const FeedbackEvent();
}

class FeedbackLoaded extends FeedbackEvent {
  const FeedbackLoaded({required this.page, required this.tutorId});

  final String tutorId;
  final int page;

  @override
  List<Object?> get props => [page, tutorId];
}
