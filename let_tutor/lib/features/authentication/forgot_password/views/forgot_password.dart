import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_tutor/features/authentication/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:let_tutor/features/authentication/forgot_password/views/forgot_password_view.dart';
import 'package:let_tutor/injector/injector.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<ForgotPasswordBloc>(),
      child: const ForgotPasswordView(),
    );
  }
}
