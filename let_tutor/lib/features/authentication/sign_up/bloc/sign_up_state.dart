part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  const SignUpState({
    this.emailError = '',
    this.passwordError = '',
    this.confirmPasswordError = '',
    this.emailErrorStatus = SignUpStatus.emailValid,
    this.passwordErrorStatus = SignUpStatus.passwordValid,
    this.confirmPasswordErrorStatus = SignUpStatus.confirmPasswordValid,
    this.status = SignUpStatus.initial,
  });

  final String emailError;
  final String passwordError;
  final String confirmPasswordError;
  final SignUpStatus emailErrorStatus;
  final SignUpStatus passwordErrorStatus;
  final SignUpStatus confirmPasswordErrorStatus;
  final SignUpStatus status;

  SignUpState copyWith({
    String? emailError,
    String? passwordError,
    String? confirmPasswordError,
    SignUpStatus? emailErrorStatus,
    SignUpStatus? passwordErrorStatus,
    SignUpStatus? confirmPasswordErrorStatus,
    SignUpStatus? status,
  }) {
    return SignUpState(
      emailError: emailError ?? this.emailError,
      passwordError: passwordError ?? this.passwordError,
      confirmPasswordError: confirmPasswordError ?? this.confirmPasswordError,
      confirmPasswordErrorStatus:
          confirmPasswordErrorStatus ?? this.confirmPasswordErrorStatus,
      emailErrorStatus: emailErrorStatus ?? this.emailErrorStatus,
      passwordErrorStatus: passwordErrorStatus ?? this.passwordErrorStatus,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
        emailError,
        passwordError,
        confirmPasswordError,
        emailErrorStatus,
        passwordErrorStatus,
        confirmPasswordErrorStatus,
        status,
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
  confirmPasswordInvalid,
  confirmPasswordValid,
  informationValid,
  informationInvalid,
}
