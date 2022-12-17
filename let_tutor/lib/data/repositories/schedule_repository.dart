import '../models/responses/upcoming_response.dart';
import '../models/responses/schedule_response.dart';

abstract class ScheduleRepository {
  Future<ScheduleResponse> getOwnSchedule();

  Future<ScheduleResponse> getScheduleByTutorId(String tutorId);

  Future<bool> bookClass(String scheduleId);

  Future<UpcomingResponse> getUpcomingClass();
}