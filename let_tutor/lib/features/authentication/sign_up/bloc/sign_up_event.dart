part of 'sign_up_bloc.dart';

abstract class SignUpEvent extends Equatable {
  const SignUpEvent();
}

class SignUpEmailChanged extends SignUpEvent {
  const SignUpEmailChanged({required this.email});

  final String email;

  @override
  List<Object?> get props => [email];
}

class SignUpPasswordChanged extends SignUpEvent {
  const SignUpPasswordChanged({required this.password});

  final String password;

  @override
  List<Object?> get props => [password];
}

class SignUpSignUpButtonPressed extends SignUpEvent {
  @override
  List<Object?> get props => [];
}

class SignUpConfirmPasswordChanged extends SignUpEvent {
  const SignUpConfirmPasswordChanged({required this.confirmPassword});

  final String confirmPassword;

  @override
  List<Object?> get props => [confirmPassword];
}