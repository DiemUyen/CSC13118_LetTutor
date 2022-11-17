import 'package:flutter/material.dart';
import 'package:let_tutor/routes.dart';
import 'package:let_tutor/routes/authentication/sign_up_form.dart';
import 'package:let_tutor/theme/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Let Tutor',
      theme: CustomTheme.lightTheme,

      // Generate routes
      onGenerateRoute: RouteGenerator.generateRoute,

      home: const SignUpForm()
    );
  }
}

