import 'package:dio/dio.dart';

import '../../configs/endpoints.dart';
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
}
