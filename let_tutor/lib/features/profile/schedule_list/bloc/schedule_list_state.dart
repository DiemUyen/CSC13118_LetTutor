part of 'schedule_list_bloc.dart';

abstract class ScheduleListState extends Equatable {
  const ScheduleListState();
}

class ScheduleListInit extends ScheduleListState {
  const ScheduleListInit();

  @override
  List<Object?> get props => [];
}

class ScheduleListLoading extends ScheduleListState {
  const ScheduleListLoading();

  @override
  List<Object?> get props => [];
}

class ScheduleListLoadDone extends ScheduleListState {
  const ScheduleListLoadDone({required this.studentSchedule, required this.count});

  final int count;
  final List<List<NextSchedule>> studentSchedule;

  @override
  List<Object?> get props => [studentSchedule, count];
}

class ScheduleListLoadFailure extends ScheduleListState {
  const ScheduleListLoadFailure();

  @override
  List<Object?> get props => [];
}