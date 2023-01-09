import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/models/schedule/next_schedule.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../injector/injector.dart';

part 'schedule_detail_event.dart';
part 'schedule_detail_state.dart';

class ScheduleDetailBloc
    extends Bloc<ScheduleDetailEvent, ScheduleDetailState> {
  ScheduleDetailBloc() : super(ScheduleDetailInitial()) {
    _scheduleRepository = Injector.instance<ScheduleRepository>();
    on<ScheduleDetailLoaded>(_onLoaded);
    on<ScheduleDetailCancelBookingButtonPressed>(_onCancelBookingButtonPressed);
    on<ScheduleDetailSaveButtonPressed>(_onSaveButtonPressed);
  }

  late final ScheduleRepository _scheduleRepository;

  void _onLoaded(ScheduleDetailLoaded event, Emitter emit) {
    emit(ScheduleDetailLoadSuccess(
        event.schedules, _getRequest(event.schedules,), false, false));
  }

  void _onCancelBookingButtonPressed(
      ScheduleDetailCancelBookingButtonPressed event, Emitter emit) async {
    try {
      var response = await _scheduleRepository.cancelBookedClass(event.scheduleId);
      emit(const ScheduleDetailLoadSuccess([], '', false, true));
    }
    catch (exception) {
      emit(const ScheduleDetailLoadFailure(isCancelSchedule: true));
    }
  }

  void _onSaveButtonPressed(ScheduleDetailSaveButtonPressed event, Emitter emit) async {
    try {
      var response = await _scheduleRepository.updateStudentRequest(
          event.scheduleId, event.studentRequest);
      if (response) {
        emit(ScheduleDetailLoadSuccess(
            event.schedules, event.studentRequest,
            true, false));
      }
    } catch (exception) {
      emit(const ScheduleDetailLoadFailure(isSaveRequest: true));
    }
  }

  String _getRequest(List<NextSchedule> schedules) {
    String request = '';

    for (int i = 0; i < schedules.length; i++) {
      if (schedules[i].studentRequest != null) {
        request += '${schedules[i].studentRequest}';
      }
      if (i + 1 != schedules.length) {
        request += '\n';
      }
    }

    return request;
  }
}
