import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_tutor/features/authentication/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:let_tutor/features/authentication/forgot_password/views/forgot_password_view.dart';
import 'package:let_tutor/injector/injector.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<ForgotPasswordBloc>(),
      child: const ForgotPasswordView(),
    );
  }
}
