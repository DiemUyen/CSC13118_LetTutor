import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/models/schedule/history_schedule.dart';
import '../../../../data/repositories/repositories.dart';

part 'history_list_event.dart';
part 'history_list_state.dart';

class HistoryListBloc extends Bloc<HistoryListEvent, HistoryListState> {
  HistoryListBloc({required ScheduleRepository scheduleRepository})
      : super(const HistoryListState()) {
    _scheduleRepository = scheduleRepository;
    on<HistoryListLoaded>(_onLoaded);
  }

  late final ScheduleRepository _scheduleRepository;

  FutureOr<void> _onLoaded(
      HistoryListLoaded event, Emitter<HistoryListState> emit) async {
    emit(state.copyWith(status: HistoryListStatus.loading));

    try {
      var response = await _scheduleRepository.getHistoryClass(event.page);
      emit(state.copyWith(
          historyClasses: response.data,
          status: HistoryListStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(status: HistoryListStatus.loadFailure));
    }
  }
}
