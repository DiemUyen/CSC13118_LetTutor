part of 'change_password_bloc.dart';

abstract class ChangePasswordEvent extends Equatable {
  const ChangePasswordEvent();
}

class ChangePasswordOldPasswordChanged extends ChangePasswordEvent {
  final String oldPassword;

  const ChangePasswordOldPasswordChanged(this.oldPassword);

  @override
  List<Object?> get props => [oldPassword];
}

class ChangePasswordNewPasswordChanged extends ChangePasswordEvent {
  final String newPassword;

  const ChangePasswordNewPasswordChanged(this.newPassword);

  @override
  List<Object?> get props => [newPassword];
}

class ChangePasswordConfirmPasswordChanged extends ChangePasswordEvent {
  final String confirmPassword;

  const ChangePasswordConfirmPasswordChanged(this.confirmPassword);

  @override
  List<Object?> get props => [confirmPassword];
}

class ChangePasswordChangeButtonPressed extends ChangePasswordEvent {
  @override
  List<Object?> get props => [];
}