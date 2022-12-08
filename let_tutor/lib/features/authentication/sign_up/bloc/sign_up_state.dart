part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  const SignUpState({
    this.emailError = '',
    this.passwordError = '',
    this.emailErrorStatus = SignUpStatus.emailValid,
    this.passwordErrorStatus = SignUpStatus.passwordValid,
    this.status = SignUpStatus.initial,
  });

  final String emailError;
  final String passwordError;
  final SignUpStatus emailErrorStatus;
  final SignUpStatus passwordErrorStatus;
  final SignUpStatus status;

  SignUpState copyWith({
    String? emailError,
    String? passwordError,
    SignUpStatus? emailErrorStatus,
    SignUpStatus? passwordErrorStatus,
    SignUpStatus? status,
  }) {
    return SignUpState(
      emailError: emailError ?? this.emailError,
      passwordError: passwordError ?? this.passwordError,
      emailErrorStatus: emailErrorStatus ?? this.emailErrorStatus,
      passwordErrorStatus: passwordErrorStatus ?? this.passwordErrorStatus,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
        emailError,
        passwordError,
        emailErrorStatus,
        passwordErrorStatus,
        status
      ];
}

enum SignUpStatus {
  initial,
  loading,
  loadSuccess,
  loadFailed,
  emailInvalid,
  emailValid,
  passwordInvalid,
  passwordValid,
  informationValid,
  informationInvalid,
}
