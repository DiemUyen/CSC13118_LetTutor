part of 'tutor_repository.dart';

class TutorRepositoryImpl extends TutorRepository {
  TutorRepositoryImpl({
    required TutorProvider tutorProvider,
  }) : _tutorProvider = tutorProvider;

  late final TutorProvider _tutorProvider;

  @override
  Future<bool> addFavoriteTutor(String tutorId) async {
    // TODO: implement addFavoriteTutor
    return await _tutorProvider
        .addFavoriteTutor(tutorId)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<TutorResponse> getListTutor({int perPage = 9, int page = 1}) async {
    // TODO: implement getListTutor
    return await _tutorProvider
        .getListTutor(perPage, page)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<Tutor> getTutorInformation(String tutorId) async {
    // TODO: implement getTutorInformation
    return await _tutorProvider
        .getTutorInformation(tutorId)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<Tutors> searchTutor(
      Map<String, dynamic> filters, String? tutorName) async {
    // TODO: implement searchTutor
    return await _tutorProvider
        .searchTutor(filters, tutorName)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<bool> writeReview(
      String bookingId, String userId, int rating, String content) async {
    // TODO: implement writeReview
    return await _tutorProvider
        .writeReview(bookingId, userId, rating, content)
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<List<LearnTopics>> getLearnTopics() async {
    // TODO: implement getLearnTopics
    return await _tutorProvider
        .getLearnTopics()
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<List<TestPreparation>> getTestPreparation() async {
    // TODO: implement getTestPreparation
    return await _tutorProvider
        .getTestPreparation()
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<CategoryResponse> getCategories() async {
    // TODO: implement getCategories
    return await _tutorProvider
        .getCategories()
        .catchError(DioExceptionHandler.handleException);
  }

  @override
  Future<bool> reportTutor(String tutorId, String content) async {
    // TODO: implement reportTutor
    return await _tutorProvider
        .reportTutor(tutorId, content)
        .catchError(DioExceptionHandler.handleException);
  }
}
