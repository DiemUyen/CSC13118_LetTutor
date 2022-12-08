import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_tutor/features/authentication/sign_up/views/sign_up_view.dart';
import 'package:let_tutor/injector/injector.dart';

import '../bloc/sign_up_bloc.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<SignUpBloc>(),
      child: const SignUpView(),
    );
  }
}
