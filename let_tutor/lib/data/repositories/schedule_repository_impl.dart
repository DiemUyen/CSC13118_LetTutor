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
    // TODO: implement getOwnSchedule
    return await _scheduleProvider
        .getOwnSchedule()
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<ScheduleResponse> getScheduleByTutorId(String tutorId) async {
    // TODO: implement getScheduleByTutorId
    return await _scheduleProvider
        .getScheduleByTutorId(tutorId)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<bool> bookClass(String scheduleId) async {
    // TODO: implement bookClass
    return await _scheduleProvider
        .bookClass(scheduleId)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<UpcomingResponse> getUpcomingClass() async {
    // TODO: implement getUpcomingClass
    return await _scheduleProvider
        .getUpcomingClass()
        .catchError(DioExceptionHandler.handleException);
  }
}
