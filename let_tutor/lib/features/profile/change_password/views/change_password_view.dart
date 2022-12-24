import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../bloc/change_password_bloc.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangePasswordBloc, ChangePasswordState>(
      listener: (context, state) {
        if (state.status == ChangePasswordStatus.loadSuccess) {
          Navigator.pop(context);
          Navigator.pop(context);
        } else if (state.status == ChangePasswordStatus.loading) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: Colors.transparent,
              contentPadding: const EdgeInsets.symmetric(vertical: 24.0),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(),
                  ),
                ],
              ),
            ),
          );
        } else if (state.status == ChangePasswordStatus.loadFailure) {
          Navigator.pop(context);
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              icon: Icon(
                Icons.error_outline_rounded,
                color: Theme.of(context).colorScheme.error,
              ),
              title: Text(S.current.change_password_error),
            ),
          );
        }
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(S.current.change_password),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: const [
                SizedBox(
                  height: 16,
                ),

                // Old password
                _OldPasswordField(),
                SizedBox(
                  height: 16,
                ),

                // New password
                _NewPasswordField(),
                SizedBox(
                  height: 16,
                ),

                // Confirm new password
                _ConfirmNewPasswordField(),
                SizedBox(
                  height: 16,
                ),

                // Button 'Save password'
                _ChangePasswordButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _OldPasswordField extends StatelessWidget {
  const _OldPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
      builder: (context, state) {
        return TextField(
          obscureText: true,
          onChanged: (value) => context.read<ChangePasswordBloc>().add(
                ChangePasswordOldPasswordChanged(value),
              ),
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            labelText: S.current.old_password,
            errorText: state.oldPasswordError.isNotEmpty &&
                    state.status == ChangePasswordStatus.informationInvalid
                ? state.oldPasswordError
                : null,
          ),
        );
      },
    );
  }
}

class _NewPasswordField extends StatelessWidget {
  const _NewPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
      builder: (context, state) {
        return TextField(
          obscureText: true,
          onChanged: (value) => context.read<ChangePasswordBloc>().add(
                ChangePasswordNewPasswordChanged(value),
              ),
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            labelText: S.current.new_password,
            errorText: state.newPasswordError.isNotEmpty &&
                    state.status == ChangePasswordStatus.informationInvalid
                ? state.newPasswordError
                : null,
          ),
        );
      },
    );
  }
}

class _ConfirmNewPasswordField extends StatelessWidget {
  const _ConfirmNewPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
      builder: (context, state) {
        return TextField(
          obscureText: true,
          onChanged: (value) => context.read<ChangePasswordBloc>().add(
                ChangePasswordConfirmPasswordChanged(value),
              ),
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            labelText: S.current.confirm_password,
            errorText: state.confirmPasswordError.isNotEmpty &&
                    state.status == ChangePasswordStatus.informationInvalid
                ? state.confirmPasswordError
                : null,
          ),
        );
      },
    );
  }
}

class _ChangePasswordButton extends StatelessWidget {
  const _ChangePasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state.status == ChangePasswordStatus.informationValid
              ? () {
                  context
                      .read<ChangePasswordBloc>()
                      .add(ChangePasswordChangeButtonPressed());
                }
              : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            minimumSize: const Size.fromHeight(48),
          ),
          child: Text(S.current.change_password),
        );
      },
    );
  }
}
