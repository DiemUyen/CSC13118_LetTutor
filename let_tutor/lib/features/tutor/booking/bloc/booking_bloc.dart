import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/models/schedule/schedule_of_tutor.dart';
import '../../../../data/repositories/repositories.dart';

part 'booking_event.dart';
part 'booking_state.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  BookingBloc({required ScheduleRepository scheduleRepository})
      : super(const BookingState()) {
    _scheduleRepository = scheduleRepository;
    on<BookingLoaded>(_onLoaded);
    on<BookingDateChose>(_onDateChose);
    on<BookingTimeChose>(_onTimeChose);
    on<BookingBookButtonPressed>(_onBookButtonPressed);
  }

  late final ScheduleRepository _scheduleRepository;
  String scheduleDetailId = '';
  DateTime dateChose = DateTime.now();

  FutureOr<void> _onLoaded(
      BookingLoaded event, Emitter<BookingState> emit) async {
    emit(state.copyWith(status: BookingStatus.loading));
    try {
      var response =
          await _scheduleRepository.getScheduleByTutorId(event.tutorId);
      response.data?.sort((a, b) {
        if (a.startTimestamp == null || b.startTimestamp == null) return 0;
        return a.startTimestamp!.compareTo(b.startTimestamp!);
      });
      var availableDate = <DateTime>[];
      Map<DateTime, List<String>> scheduleDetailAvailableId = {};
      Map<String, List<DateTime>> availableTime = {};
      response.data?.forEach(
        (element) {
          var startTime = element.startTimestamp ?? 0;
          var converted = DateTime.fromMillisecondsSinceEpoch(startTime);
          var date = DateTime(converted.year, converted.month, converted.day);
          if (startTime.compareTo(DateTime.now().millisecondsSinceEpoch) == 1) {
            availableDate.add(date);
            scheduleDetailAvailableId[date] == null
                ? scheduleDetailAvailableId[date] = [element.id ?? '']
                : scheduleDetailAvailableId[date]!.add(element.id ?? '');
            availableTime[element.id ?? ''] = [
              DateTime.fromMillisecondsSinceEpoch(element.startTimestamp ?? 0),
              DateTime.fromMillisecondsSinceEpoch(element.endTimestamp ?? 0),
            ];
          }
        },
      );
      availableDate.toSet().toList();
      emit(state.copyWith(
          schedules: response.data,
          availableDate: availableDate,
          scheduleDetailAvailableId: scheduleDetailAvailableId,
          availableTime: availableTime,
          status: BookingStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(status: BookingStatus.loadFailure));
    }
  }

  FutureOr<void> _onDateChose(
      BookingDateChose event, Emitter<BookingState> emit) {
    dateChose = event.dateTime;
    var canBook = <bool>[];
    state.scheduleDetailAvailableId[dateChose]?.forEach((id) {
      var founded = state.schedules.where((element) => element.id == id);
      canBook.add(!(founded.first.isBooked!));
    });
    emit(state.copyWith(
        canBook: canBook,
        dateChose: dateChose,
        timeChose: '',
        status: BookingStatus.loadSuccess));
  }

  FutureOr<void> _onTimeChose(
      BookingTimeChose event, Emitter<BookingState> emit) {
    var idSelected =
        state.schedules.where((element) => element.id == event.scheduleId);
    scheduleDetailId = idSelected.first.scheduleDetails?.first.id ?? '';
    emit(state.copyWith(timeChose: event.timeChose));
  }

  FutureOr<void> _onBookButtonPressed(
      BookingBookButtonPressed event, Emitter<BookingState> emit) async {
    emit(state.copyWith(status: BookingStatus.bookLoading));

    var response = await _scheduleRepository.bookClass(scheduleDetailId);
    if (response) {
      emit(state.copyWith(
          dateChose: null,
          availableTime: {},
          timeChose: '',
          status: BookingStatus.bookSuccess));
    } else {
      emit(state.copyWith(
          dateChose: null,
          availableTime: {},
          timeChose: '',
          status: BookingStatus.bookFailed));
    }
  }
}
