part of 'schedule_list_bloc.dart';

abstract class ScheduleListEvent extends Equatable {
  const ScheduleListEvent();
}

class ScheduleListLoaded extends ScheduleListEvent {
  const ScheduleListLoaded();

  @override
  List<Object?> get props => [];
}

class ScheduleListPageChanged extends ScheduleListEvent {
  const ScheduleListPageChanged(this.page);

  final int page;

  @override
  List<Object?> get props => [page];
}