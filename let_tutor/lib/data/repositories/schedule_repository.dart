import '../models/responses/schedule_response.dart';

abstract class ScheduleRepository {
  Future<ScheduleResponse> getOwnSchedule();

  Future<ScheduleResponse> getScheduleByTutorId(String tutorId);
}