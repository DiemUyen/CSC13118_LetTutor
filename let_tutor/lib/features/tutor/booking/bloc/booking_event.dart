part of 'booking_bloc.dart';

abstract class BookingEvent extends Equatable {
  const BookingEvent();
}

class BookingLoaded extends BookingEvent {
  const BookingLoaded({required this.tutorId});

  final String tutorId;

  @override
  List<Object?> get props => [tutorId];
}

class BookingDateChose extends BookingEvent {
  const BookingDateChose({required this.dateTime});

  final DateTime dateTime;

  @override
  List<Object?> get props => [dateTime];
}

class BookingTimeChose extends BookingEvent {
  const BookingTimeChose({required this.scheduleId, required this.timeChose});

  final String scheduleId;
  final String timeChose;

  @override
  List<Object?> get props => [scheduleId, timeChose];
}

class BookingBookButtonPressed extends BookingEvent {
  @override
  List<Object?> get props => [];
}