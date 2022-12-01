import 'dart:async';

import 'package:flutter/material.dart';
import 'package:let_tutor/services/shared_preferences_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';

part 'application_event.dart';
part 'application_state.dart';
part 'application_bloc.freezed.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  ApplicationBloc({
    required SharedPreferencesService sharedPreferencesService,
  }) : super(const ApplicationState()) {
    _sharedPreferencesService = sharedPreferencesService;
    on<ApplicationLoaded>(_onLoaded);
    on<ApplicationLocaleChanged>(_onLocaleChanged);
    on<ApplicationDarkModeChanged>(_onDarkModeChanged);
  }

  late SharedPreferencesService _sharedPreferencesService;

  FutureOr<void> _onLoaded(event, Emitter<ApplicationState> emit) {
    emit(state.copyWith(
      status: UIStatus.loading,
    ));

    final String locale = _sharedPreferencesService.locale;
    final bool isDarkMode = _sharedPreferencesService.isDarkMode;

    emit(state.copyWith(
      status: UIStatus.loadSuccess,
      locale: locale,
      isDarkMode: isDarkMode,
    ));
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

      _sharedPreferencesService.setLocale(event.locale);

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

      _sharedPreferencesService.setIsDarkMode(event.enable);

      emit(state.copyWith(
        status: UIStatus.loadSuccess,
        isDarkMode: event.enable,
      ));
    }
  }
}
