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
  Future<Tutors> searchTutor(List<String> specialties) async {
    // TODO: implement searchTutor
    return await _tutorProvider
        .searchTutor(specialties)
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
}
