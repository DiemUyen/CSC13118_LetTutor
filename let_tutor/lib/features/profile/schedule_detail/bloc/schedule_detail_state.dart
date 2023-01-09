part of 'schedule_detail_bloc.dart';

abstract class ScheduleDetailState extends Equatable {
  const ScheduleDetailState();
}

class ScheduleDetailInitial extends ScheduleDetailState {
  @override
  List<Object> get props => [];
}

class ScheduleDetailLoading extends ScheduleDetailState {
  @override
  List<Object?> get props => [];
}

class ScheduleDetailLoadSuccess extends ScheduleDetailState {
  const ScheduleDetailLoadSuccess(this.schedules, this.request,
      this.isSaveRequest, this.isCancelSchedule);

  final List<NextSchedule> schedules;
  final String request;
  final bool isSaveRequest;
  final bool isCancelSchedule;

  @override
  List<Object?> get props =>
      [schedules, request, isSaveRequest, isCancelSchedule];
}

class ScheduleDetailLoadFailure extends ScheduleDetailState {
  const ScheduleDetailLoadFailure(
      {this.isSaveRequest = false, this.isCancelSchedule = false});

  final bool isSaveRequest;
  final bool isCancelSchedule;

  @override
  List<Object?> get props => [isSaveRequest, isCancelSchedule];
}
