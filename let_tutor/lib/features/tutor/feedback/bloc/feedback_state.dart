part of 'feedback_bloc.dart';

class FeedbackState extends Equatable {
  const FeedbackState({
    this.total = 0,
    this.feedbacks = const [],
    this.status = FeedbackStatus.initial,
  });

  final int total;
  final List<Feedbacks> feedbacks;
  final FeedbackStatus status;

  FeedbackState copyWith({
    int? total,
    List<Feedbacks>? feedbacks,
    FeedbackStatus? status,
  }) {
    return FeedbackState(
      total: total ?? this.total,
      feedbacks: feedbacks ?? this.feedbacks,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [total, feedbacks, status];
}

enum FeedbackStatus {
  initial,
  loading,
  loadSuccess,
  loadFailure,
}
