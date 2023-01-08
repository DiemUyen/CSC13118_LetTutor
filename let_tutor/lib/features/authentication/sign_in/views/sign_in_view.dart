import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:let_tutor/common/app_themes.dart';

import '../../../../generated/l10n.dart';
import '../../../../router/app_router.dart';
import '../bloc/sign_in_bloc.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state.status == SignInStatus.loading) {
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
        } else if (state.status == SignInStatus.loadSuccess) {
          Navigator.pushReplacementNamed(context, AppRouter.homePage);
        } else if (state.status == SignInStatus.loadFailed) {
          Navigator.pop(context);
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              icon: const Icon(
                Icons.error_outline_rounded,
                color: Colors.redAccent,
              ),
              title: Text(S.current.sign_in_failed),
            ),
          );
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: LayoutBuilder(builder: (context, constraints) {
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
                    const SizedBox(
                      height: 32,
                    ),
                    const _ThirdPartySignInButton(),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Expanded(
                            child: Divider(
                          thickness: 0.5,
                        )),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(S.current.or),
                        const SizedBox(
                          width: 8,
                        ),
                        const Expanded(
                            child: Divider(
                          thickness: 0.5,
                        ))
                      ],
                    ),
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
                    const _SignInButton(),
                    const SizedBox(
                      height: 8,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, AppRouter.forgotPasswordPage);
                      },
                      style: TextButton.styleFrom(
                        minimumSize: const Size.fromHeight(48),
                      ),
                      child: Text('${S.current.forgot_password}?'),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(S.current.not_have_account),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, AppRouter.signUpPage);
                          },
                          child: Text(S.current.sign_up),
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
          }),
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

class _ThirdPartySignInButton extends StatelessWidget {
  const _ThirdPartySignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: SizedBox(
            width: 0,
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
            child: ElevatedButton.icon(
              onPressed: () {
                context.read<SignInBloc>().add(SignInFacebookButtonPressed());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppThemes.primaryColor,
                foregroundColor: Colors.white,
                elevation: 0,
              ),
              icon: const Icon(
                FontAwesomeIcons.facebookF,
                size: 16,
              ),
              label: const Text('Facebook'),
            ),
          ),
        ),
        const Expanded(
          child: SizedBox(
            width: 0,
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
            child: ElevatedButton.icon(
              onPressed: () {
                context.read<SignInBloc>().add(SignInGoogleButtonPressed());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppThemes.primaryColor,
                foregroundColor: Colors.white,
                elevation: 0,
              ),
              icon: const Icon(
                FontAwesomeIcons.google,
                size: 16,
              ),
              label: const Text('Google'),
            ),
          ),
        ),
        const Expanded(
          child: SizedBox(
            width: 0,
          ),
        ),
      ],
    );
  }
}

class _EmailInputTextField extends StatelessWidget {
  const _EmailInputTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return TextField(
          onChanged: (value) {
            context.read<SignInBloc>().add(SignInEmailChanged(email: value));
          },
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: "Email",
            errorText: state.emailErrorStatus == SignInStatus.emailInvalid
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
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return TextField(
          obscureText: true,
          onChanged: (value) {
            context
                .read<SignInBloc>()
                .add(SignInPasswordChanged(password: value));
          },
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: S.current.password,
            errorText: state.passwordErrorStatus == SignInStatus.passwordInvalid
                ? state.passwordError
                : null,
          ),
        );
      },
    );
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state.status == SignInStatus.informationValid
              ? () {
                  context.read<SignInBloc>().add(SignInSignInButtonPressed());
                }
              : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppThemes.primaryColor,
            foregroundColor: Colors.white,
            minimumSize: const Size.fromHeight(48),
          ),
          child: Text(S.current.sign_in),
        );
      },
    );
  }
}
