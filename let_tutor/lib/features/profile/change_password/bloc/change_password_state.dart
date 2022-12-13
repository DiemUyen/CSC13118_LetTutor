part of 'change_password_bloc.dart';

class ChangePasswordState extends Equatable {
  const ChangePasswordState({
    this.oldPasswordError = '',
    this.newPasswordError = '',
    this.confirmPasswordError = '',
    this.status = ChangePasswordStatus.initial,
  });

  final String oldPasswordError;
  final String newPasswordError;
  final String confirmPasswordError;
  final ChangePasswordStatus status;

  ChangePasswordState copyWith({
    String? oldPasswordError,
    String? newPasswordError,
    String? confirmPasswordError,
    ChangePasswordStatus? status,
  }) {
    return ChangePasswordState(
      oldPasswordError: oldPasswordError ?? this.oldPasswordError,
      newPasswordError: newPasswordError ?? this.newPasswordError,
      confirmPasswordError: confirmPasswordError ?? this.confirmPasswordError,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props =>
      [oldPasswordError, newPasswordError, confirmPasswordError, status];
}

enum ChangePasswordStatus {
  initial,
  loading,
  loadSuccess,
  loadFailure,
  informationValid,
  informationInvalid,
}
