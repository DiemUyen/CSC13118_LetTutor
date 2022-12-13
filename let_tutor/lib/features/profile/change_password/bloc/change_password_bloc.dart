import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/repositories/user_repository.dart';
import '../../../../generated/l10n.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc({required UserRepository userRepository})
      : super(const ChangePasswordState()) {
    _userRepository = userRepository;
    on<ChangePasswordOldPasswordChanged>(_onOldPasswordChanged);
    on<ChangePasswordNewPasswordChanged>(_onNewPasswordChanged);
    on<ChangePasswordConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<ChangePasswordChangeButtonPressed>(_onChangeButtonPressed);
  }

  late String oldPassword;
  late String newPassword;
  late String confirmPassword;
  late final UserRepository _userRepository;

  FutureOr<void> _onOldPasswordChanged(ChangePasswordOldPasswordChanged event,
      Emitter<ChangePasswordState> emit) {
    oldPassword = event.oldPassword;
    if (oldPassword.isEmpty) {
      emit(
        state.copyWith(
          oldPasswordError: S.current.password_empty,
          status: ChangePasswordStatus.informationInvalid,
        ),
      );
    } else if (newPassword.isNotEmpty &&
        confirmPassword.isNotEmpty &&
        newPassword == confirmPassword) {
      emit(
        state.copyWith(
          status: ChangePasswordStatus.informationValid,
        ),
      );
    } else {
      emit(
        state.copyWith(oldPasswordError: ''),
      );
    }
  }

  FutureOr<void> _onNewPasswordChanged(ChangePasswordNewPasswordChanged event,
      Emitter<ChangePasswordState> emit) {
    newPassword = event.newPassword;
    if (newPassword.isEmpty) {
      emit(
        state.copyWith(
            newPasswordError: S.current.password_empty,
            status: ChangePasswordStatus.informationInvalid),
      );
    } else if (oldPassword.isNotEmpty &&
        confirmPassword.isNotEmpty &&
        confirmPassword == newPassword) {
      emit(
        state.copyWith(
          status: ChangePasswordStatus.informationValid,
        ),
      );
    } else {
      emit(
        state.copyWith(newPasswordError: ''),
      );
    }
  }

  FutureOr<void> _onConfirmPasswordChanged(
      ChangePasswordConfirmPasswordChanged event,
      Emitter<ChangePasswordState> emit) {
    confirmPassword = event.confirmPassword;

    if (confirmPassword.isEmpty) {
      emit(
        state.copyWith(
          confirmPasswordError: S.current.password_empty,
          status: ChangePasswordStatus.informationInvalid,
        ),
      );
    } else if (confirmPassword != newPassword) {
      emit(
        state.copyWith(
          confirmPasswordError: S.current.confirm_password_error,
          status: ChangePasswordStatus.informationInvalid,
        ),
      );
    } else if (oldPassword.isNotEmpty && newPassword.isNotEmpty) {
      emit(
        state.copyWith(
          status: ChangePasswordStatus.informationValid,
        ),
      );
    }
  }

  FutureOr<void> _onChangeButtonPressed(ChangePasswordChangeButtonPressed event,
      Emitter<ChangePasswordState> emit) async {
    emit(
      state.copyWith(
        status: ChangePasswordStatus.loading,
      ),
    );

    bool changedSuccess =
        await _userRepository.changePassword(oldPassword, newPassword);

    if (changedSuccess) {
      emit(
        state.copyWith(
          status: ChangePasswordStatus.loadSuccess,
        ),
      );
    } else {
      emit(
        state.copyWith(
          status: ChangePasswordStatus.loadFailure,
        ),
      );
    }
  }
}
