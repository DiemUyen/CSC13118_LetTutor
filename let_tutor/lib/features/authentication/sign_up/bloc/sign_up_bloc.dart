import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/responses/auth_response.dart';
import '../../../../data/repositories/auth_repository.dart';
import '../../../../generated/l10n.dart';
import '../../../../services/shared_preferences_service.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({
    required AuthRepository authRepository,
    required SharedPreferencesService sharedPreferencesService,
  }) : super(const SignUpState()) {
    _authRepository = authRepository;
    _preferencesService = sharedPreferencesService;
    on<SignUpEmailChanged>(_onEmailChanged);
    on<SignUpPasswordChanged>(_onPasswordChanged);
    on<SignUpSignUpButtonPressed>(_onSignUpButtonPressed);
    on<SignUpConfirmPasswordChanged>(_onConfirmPasswordChanged);
  }

  late final AuthRepository _authRepository;
  late final SharedPreferencesService _preferencesService;
  String email = '';
  String password = '';
  String confirmPassword = '';
  final RegExp regExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  FutureOr<void> _onEmailChanged(
      SignUpEmailChanged event, Emitter<SignUpState> emit) {
    email = event.email;

    if (email.isEmpty) {
      emit(state.copyWith(
          emailError: S.current.email_empty,
          emailErrorStatus: SignUpStatus.emailInvalid,
          status: SignUpStatus.informationInvalid));
    } else if (!regExp.hasMatch(email)) {
      emit(state.copyWith(
          emailError: S.current.email_wrong_format,
          emailErrorStatus: SignUpStatus.emailInvalid,
          status: SignUpStatus.informationInvalid));
    } else {
      emit(state.copyWith(
          emailError: '',
          emailErrorStatus: SignUpStatus.emailValid,
          status: password.isNotEmpty &&
                  confirmPassword.isNotEmpty &&
                  password == confirmPassword
              ? SignUpStatus.informationValid
              : SignUpStatus.informationInvalid));
    }
  }

  FutureOr<void> _onPasswordChanged(
      SignUpPasswordChanged event, Emitter<SignUpState> emit) {
    password = event.password;

    if (password.isEmpty) {
      emit(state.copyWith(
          passwordError: S.current.password_empty,
          passwordErrorStatus: SignUpStatus.passwordInvalid,
          status: SignUpStatus.informationInvalid));
    } else {
      emit(state.copyWith(
          passwordError: '',
          passwordErrorStatus: SignUpStatus.passwordValid,
          status: email.isNotEmpty &&
                  regExp.hasMatch(email) &&
                  confirmPassword.isNotEmpty &&
                  password == confirmPassword
              ? SignUpStatus.informationValid
              : SignUpStatus.informationInvalid));
    }
  }

  FutureOr<void> _onSignUpButtonPressed(
      SignUpSignUpButtonPressed event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(status: SignUpStatus.loading));

    try {
      AuthResponse authResponse =
          await _authRepository.register(email, password);
      _preferencesService.setToken(authResponse.tokens!.access!.token!);
      _preferencesService.setValue(
          key: 'refreshToken', value: authResponse.tokens!.refresh!.token!);
      _preferencesService.setValue(
          key: 'userId', value: authResponse.user!.id!);
      emit(state.copyWith(status: SignUpStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(status: SignUpStatus.loadFailed));
    }
  }

  FutureOr<void> _onConfirmPasswordChanged(
      SignUpConfirmPasswordChanged event, Emitter<SignUpState> emit) {
    confirmPassword = event.confirmPassword;

    if (confirmPassword.isEmpty) {
      emit(state.copyWith(
          confirmPasswordError: password.isNotEmpty
              ? S.current.confirm_password_error
              : S.current.confirm_password_empty,
          confirmPasswordErrorStatus: SignUpStatus.confirmPasswordInvalid,
          status: SignUpStatus.informationInvalid));
    } else if (confirmPassword != password) {
      emit(state.copyWith(
          confirmPasswordError: S.current.confirm_password_error,
          confirmPasswordErrorStatus: SignUpStatus.confirmPasswordInvalid,
          status: SignUpStatus.informationInvalid));
    } else {
      emit(state.copyWith(
          confirmPasswordError: '',
          confirmPasswordErrorStatus: SignUpStatus.confirmPasswordValid,
          status: email.isNotEmpty &&
                  regExp.hasMatch(email) &&
                  password.isNotEmpty &&
                  password == confirmPassword
              ? SignUpStatus.informationValid
              : SignUpStatus.informationInvalid));
    }
  }
}
