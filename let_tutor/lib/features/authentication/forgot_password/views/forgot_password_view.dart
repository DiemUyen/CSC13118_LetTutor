import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_tutor/common/app_themes.dart';
import 'package:let_tutor/features/authentication/forgot_password/bloc/forgot_password_event.dart';

import '../../../../generated/l10n.dart';
import '../bloc/forgot_password_bloc.dart';
import '../bloc/forgot_password_state.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Title Reset password
                    Text(S.current.forgot_password,
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(
                      height: 8,
                    ),

                    // Title Enter your email address
                    Text(
                      S.current.email_reset_password,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 24,
                    ),

                    // Text field to enter email address
                    const _EmailInputTextField(),
                    const SizedBox(
                      height: 8,
                    ),

                    // Button 'Send link'
                    const _SendLinkButton(),
                    const SizedBox(
                      height: 8,
                    ),

                    OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(const Size.fromHeight(48)),
                      ),
                      child: Text(S.current.return_sign_in),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _EmailInputTextField extends StatelessWidget {
  const _EmailInputTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
        return TextField(
          onChanged: (value) {
            context
                .read<ForgotPasswordBloc>()
                .add(ForgotPasswordEmailChanged(email: value));
          },
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: "Email",
            errorText: state.status == ForgotPasswordStatus.emailInvalid
                ? state.error
                : null,
          ),
          keyboardType: TextInputType.emailAddress,
        );
      },
    );
  }
}

class _SendLinkButton extends StatelessWidget {
  const _SendLinkButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        if (state.status == ForgotPasswordStatus.loadSuccess) {
          //Navigator.pushNamed(context, AppRouter.signInPage);
          Navigator.pop(context);
        } else if (state.status == ForgotPasswordStatus.loadFailure) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  icon: const Icon(
                    Icons.error_outline_rounded,
                    color: Colors.redAccent,
                  ),
                  title: const Text('Error reset password'),
                  content: Text(S.current.email_not_found),
                );
              });
        }
      },
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state.status != ForgotPasswordStatus.emailValid
              ? null
              : () {
                  context
                      .read<ForgotPasswordBloc>()
                      .add(ForgotPasswordSendLinkButtonPressed());
                },
          onLongPress:
              state.status != ForgotPasswordStatus.emailValid ? null : () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppThemes.primaryColor,
            foregroundColor: Colors.white,
            minimumSize: const Size.fromHeight(48),
          ),
          child: Text(S.current.send_link_reset_password),
        );
      },
    );
  }
}
