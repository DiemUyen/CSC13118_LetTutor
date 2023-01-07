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
        event.schedules, _getRequest(event.schedules)));
  }

  void _onCancelBookingButtonPressed(
      ScheduleDetailCancelBookingButtonPressed event, Emitter emit) async {}

  void _onSaveButtonPressed(ScheduleDetailSaveButtonPressed event, Emitter emit) async {
    try {
      var response = await _scheduleRepository.updateStudentRequest(
          event.scheduleId, event.studentRequest);
      if (response) {
        emit(ScheduleDetailLoadSuccess(
            event.schedules, event.studentRequest,
            isSaveRequest: true));
      }
    } catch (exception) {
      emit(const ScheduleDetailLoadFailure(isSaveRequest: true));
    }
  }

  String _getRequest(List<NextSchedule> schedules) {
    String request = '';

    for (final schedule in schedules) {
      if (schedule.studentRequest != null) {
        request += '${schedule.studentRequest}';
      }
    }

    return request;
  }
}
