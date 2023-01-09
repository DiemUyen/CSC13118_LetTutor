part of 'meeting_bloc.dart';

abstract class MeetingEvent extends Equatable {}

class MeetingInit extends MeetingEvent {
  MeetingInit({required this.url});

  final String url;

  @override
  List<Object?> get props => [url];
}

class MeetingEndButtonPressed extends MeetingEvent {
  @override
  List<Object?> get props => [];
}