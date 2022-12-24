part of 'sign_in_bloc.dart';

class SignInEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SignInEmailChanged extends SignInEvent {
  SignInEmailChanged({required this.email});

  final String email;

  @override
  List<Object?> get props => [email];
}

class SignInPasswordChanged extends SignInEvent {
  SignInPasswordChanged({required this.password});

  final String password;

  @override
  List<Object?> get props => [password];
}

class SignInSignInButtonPressed extends SignInEvent {}

class SignInFacebookButtonPressed extends SignInEvent {}

class SignInGoogleButtonPressed extends SignInEvent {}