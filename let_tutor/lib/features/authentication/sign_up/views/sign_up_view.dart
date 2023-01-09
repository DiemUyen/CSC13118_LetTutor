import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/app_themes.dart';
import '../../../../generated/l10n.dart';
import '../../../../router/app_router.dart';
import '../bloc/sign_up_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state.status == SignUpStatus.loading) {
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
        } else if (state.status == SignUpStatus.loadSuccess) {
          Navigator.pop(context);
          Navigator.pushReplacementNamed(context, AppRouter.homePage);
        } else if (state.status == SignUpStatus.loadFailed) {
          Navigator.pop(context);
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              icon: const Icon(
                Icons.error_outline_rounded,
                color: Colors.redAccent,
              ),
              title: Text(S.current.sign_up_failed),
            ),
          );
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const _LogoApp(),
                      const SizedBox(height: 32),

                      const SizedBox(
                        height: 16,
                      ),

                      const _EmailInputTextField(),
                      const SizedBox(
                        height: 8,
                      ),
                      const _PasswordInputTextField(),
                      const SizedBox(
                        height: 8,
                      ),
                      const _ConfirmPasswordInputTextField(),
                      const SizedBox(
                        height: 8,
                      ),

                      // Button 'Sign up'
                      const _SignUpButton(),

                      const SizedBox(
                        height: 80,
                      ),

                      // Button 'Sign in'
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(S.current.have_an_account),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(S.current.sign_in),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _LogoApp extends StatelessWidget {
  const _LogoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 150,
      width: 150,
      child: Image(
        image: AssetImage(
          'assets/images/logo.png',
        ),
        width: 150,
        height: 150,
      ),
    );
  }
}

class _EmailInputTextField extends StatelessWidget {
  const _EmailInputTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return TextField(
          onChanged: (value) {
            context.read<SignUpBloc>().add(SignUpEmailChanged(email: value));
          },
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: "Email",
            errorText: state.emailErrorStatus == SignUpStatus.emailInvalid
                ? state.emailError
                : null,
          ),
          keyboardType: TextInputType.emailAddress,
        );
      },
    );
  }
}

class _PasswordInputTextField extends StatelessWidget {
  const _PasswordInputTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return TextField(
          obscureText: true,
          onChanged: (value) {
            context
                .read<SignUpBloc>()
                .add(SignUpPasswordChanged(password: value));
          },
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: S.current.password,
            errorText: state.passwordErrorStatus == SignUpStatus.passwordInvalid
                ? state.passwordError
                : null,
          ),
        );
      },
    );
  }
}

class _ConfirmPasswordInputTextField extends StatelessWidget {
  const _ConfirmPasswordInputTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return TextField(
          obscureText: true,
          onChanged: (value) {
            context
                .read<SignUpBloc>()
                .add(SignUpConfirmPasswordChanged(confirmPassword: value));
          },
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: S.current.confirm_password,
            errorText: state.confirmPasswordErrorStatus == SignUpStatus.confirmPasswordInvalid
                ? state.confirmPasswordError
                : null,
          ),
        );
      },
    );
  }
}

class _SignUpButton extends StatelessWidget {
  const _SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state.status == SignUpStatus.informationInvalid ||
              state.status == SignUpStatus.initial
              ? null
              : () {
            context.read<SignUpBloc>().add(SignUpSignUpButtonPressed());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppThemes.primaryColor,
            foregroundColor: Colors.white,
            minimumSize: const Size.fromHeight(48),
          ),
          child: Text(S.current.sign_up),
        );
      },
    );
  }
}
