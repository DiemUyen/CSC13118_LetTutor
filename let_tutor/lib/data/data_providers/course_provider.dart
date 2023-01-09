import 'package:dio/dio.dart';

import '../../configs/endpoints.dart';
import '../models/responses/content_category_response.dart';
import '../models/responses/course_detail_response.dart';
import '../models/responses/course_response.dart';

class CourseProvider {
  const CourseProvider(this._dio);

  final Dio _dio;

  Future<CourseDetailResponse> getDetailCourse(String courseId) async {
    var response = await _dio.get('${Endpoints.detailCourse}/$courseId');
    var detailCourse = CourseDetailResponse.fromJson(response.data);
    return detailCourse;
  }

  Future<CourseResponse> getListCourses(int page, int size) async {
    var response = await _dio.get(Endpoints.listCourses,
        queryParameters: {'page': page, 'size': size});
    var courseResponse = CourseResponse.fromJson(response.data);
    return courseResponse;
  }

  Future<ContentCategoryResponse> getContentCategories() async {
    var response = await _dio.get(Endpoints.contentCategory);
    var contentCategories = ContentCategoryResponse.fromJson(response.data);
    return contentCategories;
  }

  Future<CourseResponse> searchCourses(
      int page, int size, Map<String, dynamic> filters) async {
    var queryParameters = Map.of(filters);
    queryParameters.addAll({'page': page, 'size': size});
    var response =
        await _dio.get(Endpoints.listCourses, queryParameters: queryParameters);
    var courses = CourseResponse.fromJson(response.data);
    return courses;
  }
}
