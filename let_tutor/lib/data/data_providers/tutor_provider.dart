import 'package:dio/dio.dart';
import 'package:let_tutor/configs/endpoints.dart';
import 'package:let_tutor/data/models/user/test_preparation.dart';

import '../models/responses/category_response.dart';
import '../models/responses/feedback_response.dart';
import '../models/responses/tutor_response.dart';
import '../models/tutor/tutor.dart';
import '../models/tutor/tutors.dart';
import '../models/user/learn_topics.dart';

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

  Future<Tutors> searchTutor(
      Map<String, dynamic> filters, String? tutorName, int page, int perPage) async {
    var response = tutorName == null
        ? await _dio.post(Endpoints.searchTutor, data: {'filters': filters, 'page': page, 'perPage': perPage})
        : await _dio.post(Endpoints.searchTutor,
            data: {'filters': filters, 'search': tutorName, 'page': page, 'perPage': perPage});
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

  Future<List<LearnTopics>> getLearnTopics() async {
    var response = await _dio.get(Endpoints.getLearnTopics);
    var listLearnTopics = <LearnTopics>[];
    for (var element in (response.data as List)) {
      listLearnTopics.add(LearnTopics.fromJson(element));
    }
    return listLearnTopics;
  }

  Future<List<TestPreparation>> getTestPreparation() async {
    var response = await _dio.get(Endpoints.getTestPreparations);
    var listTestPreparations = <TestPreparation>[];
    for (var element in (response.data as List)) {
      listTestPreparations.add(TestPreparation.fromJson(element));
    }
    return listTestPreparations;
  }

  Future<CategoryResponse> getCategories() async {
    var response = await _dio.get(Endpoints.getCategory);
    var categories = CategoryResponse.fromJson(response.data[0]);
    return categories;
  }

  Future<bool> reportTutor(String tutorId, String content) async {
    var response = await _dio
        .post(Endpoints.report, data: {'tutorId': tutorId, 'content': content});
    return response.statusCode == 200;
  }

  Future<FeedbackResponse> getFeedbacks(
      String tutorId, int page, int perPage) async {
    var response = await _dio.get('${Endpoints.getFeedbacks}/$tutorId',
        queryParameters: {'page': page, 'perPage': perPage});
    var feedbacksResponse = FeedbackResponse.fromJson(response.data);
    return feedbacksResponse;
  }
}
