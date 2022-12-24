import '../../exceptions/exception_handler.dart';
import '../data_providers/data_providers.dart';
import '../models/responses/course_detail_response.dart';
import '../models/responses/course_response.dart';

part 'course_repository_impl.dart';

abstract class CourseRepository {
  Future<CourseResponse> getListCourses({int page = 1, int size = 100});

  Future<CourseDetailResponse> getDetailCourse(String courseId);
}
