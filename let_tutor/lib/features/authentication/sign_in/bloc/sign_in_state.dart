import 'package:equatable/equatable.dart';

class SignInState extends Equatable {
  final String emailError;
  final String passwordError;
  final SignInStatus emailErrorStatus;
  final SignInStatus passwordErrorStatus;
  final SignInStatus status;

  const SignInState({
    this.emailError = '',
    this.passwordError = '',
    this.emailErrorStatus = SignInStatus.emailValid,
    this.passwordErrorStatus = SignInStatus.passwordValid,
    this.status = SignInStatus.initial,
  });

  SignInState copyWith({
    String? emailError,
    String? passwordError,
    SignInStatus? emailErrorStatus,
    SignInStatus? passwordErrorStatus,
    SignInStatus? status,
  }) {
    return SignInState(
      emailError: emailError ?? this.emailError,
      passwordError: passwordError ?? this.passwordError,
      emailErrorStatus: emailErrorStatus ?? this.emailErrorStatus,
      passwordErrorStatus: passwordErrorStatus ?? this.passwordErrorStatus,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [emailError, passwordError, emailErrorStatus, passwordErrorStatus, status];
}

enum SignInStatus {
  initial,
  loading,
  loadSuccess,
  loadFailed,
  emailValid,
  emailInvalid,
  passwordValid,
  passwordInvalid,
  informationValid,
  informationInvalid,
}
