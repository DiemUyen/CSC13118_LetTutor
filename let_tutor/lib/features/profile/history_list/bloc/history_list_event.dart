part of 'history_list_bloc.dart';

abstract class HistoryListEvent extends Equatable {
  const HistoryListEvent();
}

class HistoryListLoaded extends HistoryListEvent {
  const HistoryListLoaded({required this.page});

  final int page;

  @override
  List<Object?> get props => [page];
}