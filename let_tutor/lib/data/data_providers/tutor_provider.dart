import 'package:dio/dio.dart';
import 'package:let_tutor/configs/endpoints.dart';

import '../models/responses/tutor_response.dart';
import '../models/tutor/tutor.dart';
import '../models/tutor/tutors.dart';

class TutorProvider {
  const TutorProvider(this._dio);

  final Dio _dio;

  Future<bool> addFavoriteTutor(String tutorId) async {
    var response =
        await _dio.post(Endpoints.addFavoriteTutor, data: {'tutorId': tutorId});
    return response.statusCode == 200;
  }

  Future<TutorResponse> getListTutor(int perPage, int page) async {
    var response = await _dio.get(Endpoints.listTutor,
        queryParameters: {'perPage': perPage, 'page': page});
    final tutorResponse = TutorResponse.fromJson(response.data);
    return tutorResponse;
  }

  Future<Tutor> getTutorInformation(String tutorId) async {
    var response = await _dio.get('${Endpoints.tutorInformation}/$tutorId');
    final tutor = Tutor.fromJson(response.data);
    return tutor;
  }

  Future<Tutors> searchTutor(List<String> specialties) async {
    var response = await _dio.post(Endpoints.searchTutor);
    final tutors = Tutors.fromJson(response.data);
    return tutors;
  }

  Future<bool> writeReview(
      String bookingId, String userId, int rating, String content) async {
    var response = await _dio.post(Endpoints.writeReview, data: {
      'bookingId': bookingId,
      'userId': userId,
      'rating': rating,
      'content': content
    });
    return response.statusCode == 200;
  }
}
