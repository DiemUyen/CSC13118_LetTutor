import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_tutor/features/authentication/forgot_password/bloc/forgot_password_event.dart';

import '../../../../router/app_router.dart';
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
                    Text("Reset Password",
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(
                      height: 8,
                    ),

                    // Title Enter your email address
                    const Text(
                      "Please enter your email address to search for your account.",
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
            errorText: state.status == ForgotPasswordStatus.emailInvalid ? state.error : null,
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
          Navigator.pushNamed(context, AppRouter.signInPage);
        } else if (state.status == ForgotPasswordStatus.loadFailure) {
          showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  title: Text('Error reset password'),
                  content: Text('Something was wrong when reset password'),
                );
              });
        }
      },
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: state.status != ForgotPasswordStatus.emailValid
                    ? null
                    : () {
                        context
                            .read<ForgotPasswordBloc>()
                            .add(ForgotPasswordSendLinkButtonPressed());
                      },
                onLongPress: state.status != ForgotPasswordStatus.emailValid
                    ? null
                    : () {},
                child: const Text("Send Link"),
              ),
            ),
          ],
        );
      },
    );
  }
}
