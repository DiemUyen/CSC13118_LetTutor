import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:let_tutor/services/shared_preferences_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repositories/repositories.dart';
import '../../../generated/l10n.dart';

part 'application_event.dart';
part 'application_state.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  ApplicationBloc({
    required SharedPreferencesService sharedPreferencesService,
    required AuthRepository authRepository,
  }) : super(const ApplicationState()) {
    _sharedPreferencesService = sharedPreferencesService;
    _authRepository = authRepository;
    on<ApplicationLoaded>(_onLoaded);
    on<ApplicationLocaleChanged>(_onLocaleChanged);
    on<ApplicationDarkModeChanged>(_onDarkModeChanged);
  }

  late final SharedPreferencesService _sharedPreferencesService;
  late final AuthRepository _authRepository;

  FutureOr<void> _onLoaded(event, Emitter<ApplicationState> emit) async {
    emit(state.copyWith(
      status: UIStatus.loading,
    ));

    final String locale = _sharedPreferencesService.locale;
    final bool isDarkMode = _sharedPreferencesService.isDarkMode;
    final String token = _sharedPreferencesService.token ?? '';
    final String refreshToken =
        _sharedPreferencesService.getValue(key: 'refreshToken') ?? '';

    try {
      final bool verifyResponse = await _authRepository.verifyAccount(token);
      emit(state.copyWith(
          status: UIStatus.loadSuccess,
          locale: locale,
          isDarkMode: isDarkMode,
          authStatus: AuthStatus.authenticated));
    } catch (exception) {
      try {
        final refreshTokenResponse = await _authRepository.refreshToken(refreshToken);
        _sharedPreferencesService
            .setToken(refreshTokenResponse.tokens!.access!.token!);
        _sharedPreferencesService.setValue(
            key: 'refreshToken',
            value: refreshTokenResponse.tokens!.refresh!.token!);
        emit(state.copyWith(
            status: UIStatus.loadSuccess,
            locale: locale,
            isDarkMode: isDarkMode,
            authStatus: AuthStatus.authenticated));
      } catch (e) {
        emit(state.copyWith(
            status: UIStatus.loadSuccess,
            locale: locale,
            isDarkMode: isDarkMode,
            authStatus: AuthStatus.unauthenticated));
      }
    }
  }

  FutureOr<void> _onLocaleChanged(
    ApplicationLocaleChanged event,
    Emitter<ApplicationState> emit,
  ) async {
    if (state.locale != event.locale) {
      emit(state.copyWith(
        status: UIStatus.loading,
      ));
      await S.load(Locale(event.locale));

      await _sharedPreferencesService.setLocale(event.locale);

      emit(state.copyWith(
        status: UIStatus.loadSuccess,
        locale: event.locale,
      ));
    }
  }

  FutureOr<void> _onDarkModeChanged(
    ApplicationDarkModeChanged event,
    Emitter<ApplicationState> emit,
  ) async {
    if (state.isDarkMode != event.enable) {
      emit(state.copyWith(
        status: UIStatus.loading,
      ));

      await _sharedPreferencesService.setIsDarkMode(event.enable);

      emit(state.copyWith(
        status: UIStatus.loadSuccess,
        isDarkMode: event.enable,
      ));
    }
  }
}
