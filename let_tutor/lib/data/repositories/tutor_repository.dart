
import '../../exceptions/exception_handler.dart';
import '../data_providers/tutor_provider.dart';
import '../models/responses/tutor_response.dart';
import '../models/tutor/tutor.dart';
import '../models/tutor/tutors.dart';

part 'tutor_repository_impl.dart';

abstract class TutorRepository {
  Future<TutorResponse> getListTutor({int perPage = 9, int page = 1});

  Future<bool> writeReview(String bookingId, String userId, int rating, String content);

  Future<Tutor> getTutorInformation(String tutorId);

  Future<Tutors> searchTutor(List<String> specialties);

  Future<bool> addFavoriteTutor(String tutorId);
}