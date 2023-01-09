part of 'course_repository.dart';

class CourseRepositoryImpl extends CourseRepository {
  CourseRepositoryImpl({
    required CourseProvider courseProvider,
  }) : _courseProvider = courseProvider;

  late final CourseProvider _courseProvider;

  @override
  Future<CourseDetailResponse> getDetailCourse(String courseId) async {
    return await _courseProvider
        .getDetailCourse(courseId)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<CourseResponse> getListCourses({int page = 1, int size = 100}) async {
    return await _courseProvider
        .getListCourses(page, size)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<ContentCategoryResponse> getContentCategories() async {
    return await _courseProvider
        .getContentCategories()
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<CourseResponse> searchCourses(
      int page, int size, Map<String, dynamic> filters) async {
    return await _courseProvider
        .searchCourses(page, size, filters)
        .catchError(DioExceptionHandler.handleException);
  }
}
