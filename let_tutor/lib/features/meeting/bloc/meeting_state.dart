part of 'meeting_bloc.dart';

abstract class MeetingState extends Equatable {
  const MeetingState();
}

class MeetingInitialState extends MeetingState {
  @override
  List<Object?> get props => [];
}

class MeetingLoadingState extends MeetingState {
  @override
  List<Object?> get props => [];
}

class MeetingLoadDoneState extends MeetingState {
  @override
  List<Object?> get props => [];
}

class MeetingLoadFailureState extends MeetingState {
  const MeetingLoadFailureState({required this.message});

  final String message;

  @override
  List<Object?> get props => [message];
}

class MeetingWaitingState extends MeetingState {
  const MeetingWaitingState({required this.waitingTime});

  final DateTime waitingTime;

  @override
  List<Object?> get props => [waitingTime];
}

class MeetingEndingState extends MeetingState {
  @override
  List<Object?> get props => [];
}