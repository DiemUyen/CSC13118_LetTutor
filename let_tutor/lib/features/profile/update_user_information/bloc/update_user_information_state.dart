part of 'update_user_information_bloc.dart';

class UpdateUserInformationState extends Equatable {
  const UpdateUserInformationState({
    this.user = const Users(),
    this.usernameError = '',
    this.status = UpdateUserInformationStatus.initial,
  });

  final Users user;
  final String usernameError;
  final UpdateUserInformationStatus status;

  UpdateUserInformationState copyWith({
    Users? user,
    String? usernameError,
    UpdateUserInformationStatus? status,
  }) {
    return UpdateUserInformationState(
      user: user ?? this.user,
      usernameError: usernameError ?? this.usernameError,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [user, usernameError, status];
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
