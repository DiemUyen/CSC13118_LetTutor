import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_tutor/data/repositories/auth_repository.dart';

import 'forgot_password_event.dart';
import 'forgot_password_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc({
    required AuthRepository authRepository,
  }) : super(const ForgotPasswordState()) {
    _authRepository = authRepository;
    on<ForgotPasswordEmailChanged>(_onEmailChanged);
    on<ForgotPasswordSendLinkButtonPressed>(_onSendLinkButtonPressed);
  }

  String email = '';
  late final AuthRepository _authRepository;

  FutureOr<void> _onEmailChanged(
      ForgotPasswordEmailChanged event, Emitter<ForgotPasswordState> emit) {
    email = event.email;

    final RegExp regExp = RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
    );

    if (email.isEmpty) {
      emit(state.copyWith(
          error: 'Email address is not empty',
          status: ForgotPasswordStatus.emailInvalid));
    } else if (!regExp.hasMatch(email)) {
      emit(state.copyWith(
          error: 'Email address is not right format',
          status: ForgotPasswordStatus.emailInvalid));
    } else {
      emit(state.copyWith(error: '', status: ForgotPasswordStatus.emailValid));
    }
  }

  FutureOr<void> _onSendLinkButtonPressed(
      ForgotPasswordSendLinkButtonPressed event,
      Emitter<ForgotPasswordState> emit) async {
    emit(state.copyWith(status: ForgotPasswordStatus.loading));

    bool sendSuccess = await _authRepository.forgotPassword(email);

    sendSuccess
        ? emit(state.copyWith(status: ForgotPasswordStatus.loadSuccess))
        : emit(state.copyWith(status: ForgotPasswordStatus.loadFailure));
  }
}
