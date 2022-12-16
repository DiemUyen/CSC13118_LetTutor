import 'package:dio/dio.dart';
import 'package:let_tutor/configs/endpoints.dart';

import '../models/responses/schedule_response.dart';

class ScheduleProvider {
  const ScheduleProvider(this._dio);

  final Dio _dio;

  Future<ScheduleResponse> getOwnSchedule() async {
    var response = await _dio.post(Endpoints.getOwnSchedule);
    var schedule = ScheduleResponse.fromJson(response.data);
    return schedule;
  }

  Future<ScheduleResponse> getScheduleByTutorId(String tutorId) async {
    var response =
        await _dio.post(Endpoints.getTutorSchedule, data: {'tutorId': tutorId});
    var schedule = ScheduleResponse.fromJson(response.data);
    return schedule;
  }
}
