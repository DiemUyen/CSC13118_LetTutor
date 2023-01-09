part of 'update_user_information_bloc.dart';

class UpdateUserInformationState extends Equatable {
  const UpdateUserInformationState({
    this.user = const Users(),
    this.usernameError = '',
    this.status = UpdateUserInformationStatus.initial,
    this.learnTopics = const [],
    this.testPreparations = const [],
    this.filteredLearnTopics = const [],
    this.filteredTestPreparations = const [],
  });

  final Users user;
  final String usernameError;
  final UpdateUserInformationStatus status;
  final List<LearnTopics> learnTopics;
  final List<TestPreparation> testPreparations;
  final List<String> filteredLearnTopics;
  final List<String> filteredTestPreparations;

  UpdateUserInformationState copyWith({
    Users? user,
    String? usernameError,
    UpdateUserInformationStatus? status,
    List<LearnTopics>? learnTopics,
    List<TestPreparation>? testPreparations,
    List<String>? filteredLearnTopics,
    List<String>? filteredTestPreparations,
  }) {
    return UpdateUserInformationState(
      user: user ?? this.user,
      usernameError: usernameError ?? this.usernameError,
      status: status ?? this.status,
      learnTopics: learnTopics ?? this.learnTopics,
      testPreparations: testPreparations ?? this.testPreparations,
      filteredLearnTopics: filteredLearnTopics ?? this.filteredLearnTopics,
      filteredTestPreparations: filteredTestPreparations ?? this.filteredTestPreparations,
    );
  }

  @override
  List<Object?> get props => [user, usernameError, status, learnTopics, testPreparations, filteredLearnTopics, filteredTestPreparations];
}

enum UpdateUserInformationStatus {
  initial,
  loading,
  loadFirstSuccess,
  loadSuccess,
  loadFailure,
  informationInvalid,
  informationValid,
}
