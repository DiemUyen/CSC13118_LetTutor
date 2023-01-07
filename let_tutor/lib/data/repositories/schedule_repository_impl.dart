import 'package:let_tutor/data/models/responses/history_response.dart';
import 'package:let_tutor/data/models/responses/student_schedule_response.dart';
import 'package:let_tutor/data/models/schedule/cancel_reason.dart';

import '../../exceptions/exception_handler.dart';
import '../data_providers/data_providers.dart';
import '../models/responses/upcoming_response.dart';
import '../models/responses/schedule_response.dart';
import 'repositories.dart';

class ScheduleRepositoryImpl extends ScheduleRepository {
  ScheduleRepositoryImpl({required ScheduleProvider scheduleProvider})
      : _scheduleProvider = scheduleProvider;

  late final ScheduleProvider _scheduleProvider;

  @override
  Future<ScheduleResponse> getOwnSchedule() async {
    return await _scheduleProvider
        .getOwnSchedule()
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<ScheduleResponse> getScheduleByTutorId(String tutorId) async {
    return await _scheduleProvider
        .getScheduleByTutorId(tutorId)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<bool> bookClass(String scheduleId) async {
    return await _scheduleProvider
        .bookClass(scheduleId)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<UpcomingResponse> getUpcomingClass() async {
    return await _scheduleProvider
        .getUpcomingClass()
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<HistoryResponse> getHistoryClass(int page) async {
    return await _scheduleProvider
        .getHistoryClass(page)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<StudentScheduleResponse> getStudentSchedule(int page) async {
    return await _scheduleProvider
        .getStudentSchedule(page)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<bool> cancelBookedClass(String scheduleDetailId) async {
    return await _scheduleProvider
        .cancelBookedClass(scheduleDetailId)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<List<CancelReason>> getCancelReason() {
    // TODO: implement getCancelReason
    throw UnimplementedError();
  }

  @override
  Future<bool> updateStudentRequest(
      String scheduleDetailId, String studentRequest) async {
    return await _scheduleProvider
        .updateStudentRequest(scheduleDetailId, studentRequest)
        .catchError(DioExceptionHandler.handleException);
  }
}
