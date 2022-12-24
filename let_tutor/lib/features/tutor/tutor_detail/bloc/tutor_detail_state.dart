part of 'tutor_detail_bloc.dart';

class TutorDetailState extends Equatable {
  const TutorDetailState({
    this.learnTopics = const [],
    this.testPreparations = const [],
    this.categories = const [],
    this.tutor = const Tutor(),
    this.status = TutorDetailStatus.initial,
  });

  final List<LearnTopics> learnTopics;
  final List<TestPreparation> testPreparations;
  final List<Category> categories;
  final Tutor tutor;
  final TutorDetailStatus status;

  TutorDetailState copyWith({
    List<LearnTopics>? learnTopics,
    List<TestPreparation>? testPreparations,
    List<Category>? categories,
    Tutor? tutor,
    TutorDetailStatus? status,
  }) {
    return TutorDetailState(
      learnTopics: learnTopics ?? this.learnTopics,
      testPreparations: testPreparations ?? this.testPreparations,
      categories: categories ?? this.categories,
      tutor: tutor ?? this.tutor,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [learnTopics, testPreparations, categories, tutor, status];
}

enum TutorDetailStatus {
  initial,
  loading,
  loadFirstSuccess,
  loadSuccess,
  loadFailure,
}
