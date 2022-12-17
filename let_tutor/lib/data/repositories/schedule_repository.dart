import '../models/responses/schedule_response.dart';
import '../models/schedule/next_schedule.dart';

abstract class ScheduleRepository {
  Future<ScheduleResponse> getOwnSchedule();

  Future<ScheduleResponse> getScheduleByTutorId(String tutorId);

  Future<bool> bookClass(String scheduleId);
}