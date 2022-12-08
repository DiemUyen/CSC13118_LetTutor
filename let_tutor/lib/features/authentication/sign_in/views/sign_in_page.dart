import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_tutor/injector/injector.dart';

import '../bloc/sign_in_bloc.dart';
import 'sign_in_view.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<SignInBloc>(),
      child: const SignInView(),
    );
  }
}