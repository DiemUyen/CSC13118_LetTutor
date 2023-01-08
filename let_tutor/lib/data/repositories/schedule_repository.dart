import '../models/responses/history_response.dart';
import '../models/responses/student_schedule_response.dart';
import '../models/responses/upcoming_response.dart';
import '../models/responses/schedule_response.dart';

abstract class ScheduleRepository {
  Future<ScheduleResponse> getOwnSchedule();

  Future<ScheduleResponse> getScheduleByTutorId(String tutorId);

  Future<bool> bookClass(String scheduleId);

  Future<UpcomingResponse> getUpcomingClass();

  Future<HistoryResponse> getHistoryClass(int page);

  Future<StudentScheduleResponse> getStudentSchedule(int page);

  Future<bool> cancelBookedClass(String scheduleDetailId);

  Future<bool> updateStudentRequest(String scheduleDetailId, String studentRequest);
}