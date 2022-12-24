part of 'course_repository.dart';

class CourseRepositoryImpl extends CourseRepository {
  CourseRepositoryImpl({
    required CourseProvider courseProvider,
  }) : _courseProvider = courseProvider;

  late final CourseProvider _courseProvider;

  @override
  Future<CourseDetailResponse> getDetailCourse(String courseId) async {
    // TODO: implement getDetailCourse
    return await _courseProvider
        .getDetailCourse(courseId)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<CourseResponse> getListCourses({int page = 1, int size = 100}) async {
    // TODO: implement getListCourses
    return await _courseProvider
        .getListCourses(page, size)
        .catchError(DioExceptionHandler.handleException);
  }
}
