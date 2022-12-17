import 'package:dio/dio.dart';
import 'package:let_tutor/configs/endpoints.dart';

import '../models/responses/history_response.dart';
import '../models/responses/upcoming_response.dart';
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

  Future<bool> bookClass(String scheduleId) async {
    var response = await _dio.post(Endpoints.bookClass, data: {
      'scheduleDetailIds': [scheduleId],
      'note': ''
    });
    return response.statusCode == 200;
  }

  Future<UpcomingResponse> getUpcomingClass() async {
    var response = await _dio.get(Endpoints.getUpcomingClass, queryParameters: {
      'dateTime': DateTime.now().toUtc().millisecondsSinceEpoch
    });
    var nextSchedules = UpcomingResponse.fromJson(response.data);
    return nextSchedules;
  }

  Future<HistoryResponse> getHistoryClass(int page) async {
    var dateTimeLte = DateTime.now()
        .subtract(const Duration(minutes: 35))
        .toUtc()
        .millisecondsSinceEpoch;
    var response = await _dio.get(Endpoints.getBookedClass, queryParameters: {
      'dateTimeLte': dateTimeLte,
      'page': page,
      'perPage': 20,
      'orderBy': 'meeting',
      'sortBy': 'desc'
    });
    var history = HistoryResponse.fromJson(response.data);
    return history;
  }
}
