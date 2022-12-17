part of 'history_list_bloc.dart';

class HistoryListState extends Equatable {
  const HistoryListState({
    this.historyClasses = const HistorySchedule(),
    this.status = HistoryListStatus.initial,
  });

  final HistorySchedule historyClasses;
  final HistoryListStatus status;

  HistoryListState copyWith({
    HistorySchedule? historyClasses,
    HistoryListStatus? status,
  }) {
    return HistoryListState(
      historyClasses: historyClasses ?? this.historyClasses,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [historyClasses, status];
}

enum HistoryListStatus {
  initial,
  loading,
  loadSuccess,
  loadFailure,
}
