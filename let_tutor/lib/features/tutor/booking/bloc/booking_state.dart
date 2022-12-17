part of 'booking_bloc.dart';

class BookingState extends Equatable {
  const BookingState({
    this.availableDate = const [],
    this.dateChose,
    this.scheduleDetailAvailableId = const {},
    this.availableTime = const {},
    this.canBook = const [],
    this.timeChose = '',
    this.schedules = const [],
    this.status = BookingStatus.initial,
  });

  final List<DateTime> availableDate;
  final DateTime? dateChose;
  final Map<DateTime, List<String>> scheduleDetailAvailableId;
  final Map<String, List<DateTime>> availableTime;
  final List<bool> canBook;
  final String timeChose;
  final List<ScheduleOfTutor> schedules;
  final BookingStatus status;

  BookingState copyWith({
    List<DateTime>? availableDate,
    DateTime? dateChose,
    Map<DateTime, List<String>>? scheduleDetailAvailableId,
    Map<String, List<DateTime>>? availableTime,
    List<bool>? canBook,
    String? timeChose,
    List<ScheduleOfTutor>? schedules,
    BookingStatus? status,
  }) {
    return BookingState(
      availableDate: availableDate ?? this.availableDate,
      dateChose: dateChose ?? this.dateChose,
      scheduleDetailAvailableId:
          scheduleDetailAvailableId ?? this.scheduleDetailAvailableId,
      availableTime: availableTime ?? this.availableTime,
      canBook: canBook ?? this.canBook,
      timeChose: timeChose ?? this.timeChose,
      schedules: schedules ?? this.schedules,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
        availableDate,
        dateChose,
        scheduleDetailAvailableId,
        availableTime,
        canBook,
        timeChose,
        schedules,
        status,
      ];
}

enum BookingStatus {
  initial,
  loading,
  loadSuccess,
  loadFailure,
  bookLoading,
  bookSuccess,
  bookFailed,
}
