import 'package:equatable/equatable.dart';

class ForgotPasswordState extends Equatable {
  final String error;
  final ForgotPasswordStatus status;

  const ForgotPasswordState({
    this.error = '',
    this.status = ForgotPasswordStatus.initial,
  });

  ForgotPasswordState copyWith({
    String? error,
    ForgotPasswordStatus? status,
  }) {
    return ForgotPasswordState(
      error: error ?? this.error,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [error, status];
}

enum ForgotPasswordStatus {
  initial,
  loading,
  loadSuccess,
  loadFailure,
  emailInvalid,
  emailValid,
}
