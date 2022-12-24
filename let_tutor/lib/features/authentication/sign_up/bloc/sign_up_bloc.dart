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
  }

  late final AuthRepository _authRepository;
  late final SharedPreferencesService _preferencesService;
  String email = '';
  String password = '';
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
          status: password.isNotEmpty
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
          status: email.isNotEmpty && regExp.hasMatch(email)
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
      _preferencesService.setValue(key: 'userId', value: authResponse.user!.id!);
      _preferencesService.setValue(key: 'userName', value: authResponse.user!.name!);
      emit(state.copyWith(status: SignUpStatus.loadSuccess));
    } catch (exception) {
      emit(state.copyWith(status: SignUpStatus.loadFailed));
    }
  }
}
