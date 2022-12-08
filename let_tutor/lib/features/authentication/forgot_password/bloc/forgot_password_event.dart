part of 'forgot_password_bloc.dart';

class ForgotPasswordEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ForgotPasswordSendLinkButtonPressed extends ForgotPasswordEvent {}

class ForgotPasswordEmailChanged extends ForgotPasswordEvent {
  ForgotPasswordEmailChanged({required this.email});

  final String email;

  @override
  List<Object?> get props => [email];
}