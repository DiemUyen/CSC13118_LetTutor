import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/schedule/next_schedule.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../injector/injector.dart';

part 'schedule_list_event.dart';
part 'schedule_list_state.dart';

class ScheduleListBloc extends Bloc<ScheduleListEvent, ScheduleListState> {
  ScheduleListBloc() : super(const ScheduleListInit()) {
    on<ScheduleListLoaded>(_onLoaded);
    on<ScheduleListPageChanged>(_onPageChanged);
  }

  final ScheduleRepository _scheduleRepository =
      Injector.instance<ScheduleRepository>();

  void _onLoaded(ScheduleListLoaded event, Emitter emit) async {
    emit(const ScheduleListLoading());

    try {
      var studentSchedules = await _scheduleRepository.getStudentSchedule(1);

      var groupedSchedules = <List<NextSchedule>>[];
      for (final schedule in studentSchedules.rows!) {
        bool added = false;
        for (final group in groupedSchedules) {
          final endTime = DateTime.fromMillisecondsSinceEpoch(
              group.last.scheduleDetailInfo?.endPeriodTimestamp ?? 0);
          final startTime = DateTime.fromMillisecondsSinceEpoch(
              schedule.scheduleDetailInfo?.startPeriodTimestamp ?? 0);
          final checkSameTeacher = group.last.scheduleDetailInfo?.scheduleInfo?.tutorInfo?.name == schedule.scheduleDetailInfo?.scheduleInfo?.tutorInfo?.name;
          if (startTime.subtract(const Duration(minutes: 5)) == endTime && checkSameTeacher) {
            group.add(schedule);
            added = true;
          }
        }
        if (!added) groupedSchedules.add([schedule]);
      }

      emit(ScheduleListLoadDone(
          studentSchedule: groupedSchedules,
          count: studentSchedules.count ?? 0));
    } catch (exception) {
      emit(const ScheduleListLoadFailure());
    }
  }

  void _onPageChanged(ScheduleListPageChanged event, Emitter emit) async {
    try {
      var studentSchedules =
          await _scheduleRepository.getStudentSchedule(event.page);

      var groupedSchedules = <List<NextSchedule>>[];
      for (final schedule in studentSchedules.rows!) {
        bool added = false;
        for (final group in groupedSchedules) {
          final endTime = DateTime.fromMillisecondsSinceEpoch(
              group.last.scheduleDetailInfo?.endPeriodTimestamp ?? 0);
          final startTime = DateTime.fromMillisecondsSinceEpoch(
              schedule.scheduleDetailInfo?.startPeriodTimestamp ?? 0);
          final checkSameTeacher = group.last.scheduleDetailInfo?.scheduleInfo?.tutorInfo?.name == schedule.scheduleDetailInfo?.scheduleInfo?.tutorInfo?.name;
          if (startTime.subtract(const Duration(minutes: 5)) == endTime && checkSameTeacher) {
            group.add(schedule);
            added = true;
          }
        }
        if (!added) groupedSchedules.add([schedule]);
      }

      emit(ScheduleListLoadDone(
          studentSchedule: groupedSchedules,
          count: studentSchedules.count ?? 0));
    } catch (exception) {
      emit(const ScheduleListLoadFailure());
    }
  }
}
