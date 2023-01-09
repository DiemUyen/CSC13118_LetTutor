part of 'schedule_detail_bloc.dart';

abstract class ScheduleDetailEvent extends Equatable {
  const ScheduleDetailEvent();
}

class ScheduleDetailLoaded extends ScheduleDetailEvent {
  const ScheduleDetailLoaded(this.schedules);

  final List<NextSchedule> schedules;

  @override
  List<Object?> get props => [schedules];
}

class ScheduleDetailCancelBookingButtonPressed extends ScheduleDetailEvent {
  const ScheduleDetailCancelBookingButtonPressed(
      {required this.reasonId, required this.scheduleId});

  final int reasonId;
  final String scheduleId;

  @override
  List<Object?> get props => [reasonId, scheduleId];
}

class ScheduleDetailSaveButtonPressed extends ScheduleDetailEvent {
  const ScheduleDetailSaveButtonPressed(this.schedules,
      {required this.studentRequest, required this.scheduleId});

  final List<NextSchedule> schedules;
  final String studentRequest;
  final String scheduleId;

  @override
  List<Object?> get props => [schedules, studentRequest, scheduleId];
}
