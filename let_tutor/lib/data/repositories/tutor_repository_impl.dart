part of 'tutor_repository.dart';

class TutorRepositoryImpl extends TutorRepository {
  TutorRepositoryImpl({
    required TutorProvider tutorProvider,
  }) : _tutorProvider = tutorProvider;

  late final TutorProvider _tutorProvider;

  @override
  Future<bool> addFavoriteTutor(String tutorId) async {
    return await _tutorProvider
        .addFavoriteTutor(tutorId)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<TutorResponse> getListTutor({int perPage = 9, int page = 1}) async {
    return await _tutorProvider
        .getListTutor(perPage, page)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<Tutor> getTutorInformation(String tutorId) async {
    return await _tutorProvider
        .getTutorInformation(tutorId)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<Tutors> searchTutor(Map<String, dynamic> filters, String? tutorName,
      int page, int perPage) async {
    return await _tutorProvider
        .searchTutor(filters, tutorName, page, perPage)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<bool> writeReview(
      String bookingId, String userId, int rating, String content) async {
    return await _tutorProvider
        .writeReview(bookingId, userId, rating, content)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<List<LearnTopics>> getLearnTopics() async {
    return await _tutorProvider
        .getLearnTopics()
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<List<TestPreparation>> getTestPreparation() async {
    return await _tutorProvider
        .getTestPreparation()
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<CategoryResponse> getCategories() async {
    return await _tutorProvider
        .getCategories()
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<bool> reportTutor(String tutorId, String content) async {
    return await _tutorProvider
        .reportTutor(tutorId, content)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<FeedbackResponse> getFeedbacks(String tutorId, int? page,
      {int? perPage}) async {
    return await _tutorProvider
        .getFeedbacks(tutorId, page ?? 1, perPage ?? 12)
        .catchError(DioExceptionHandler.handleException);
  }
}
