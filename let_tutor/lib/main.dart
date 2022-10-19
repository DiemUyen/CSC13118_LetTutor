import 'package:flutter/material.dart';
import 'package:let_tutor/routes/authentication/forgot_password.dart';
import 'package:let_tutor/routes/authentication/sign_in_form.dart';
import 'package:let_tutor/routes/authentication/sign_up_form.dart';
import 'package:let_tutor/routes/course/courses_page.dart';
import 'package:let_tutor/routes/tutor/tutor_detail.dart';
import 'package:let_tutor/routes/tutor/tutor_home_page.dart';
import 'package:let_tutor/routes/tutor/tutor_reviews.dart';
import 'package:let_tutor/theme/custom_theme.dart';
import 'package:let_tutor/widgets/bottom_nav_bar.dart';
import 'package:let_tutor/widgets/transparent_app_bar.dart';
import 'package:let_tutor/widgets/tutor_home_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.lightTheme,
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: const BottomNavBar(),
          body: Material(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  TransparentAppBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: CousesPage(),
                  )
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}

