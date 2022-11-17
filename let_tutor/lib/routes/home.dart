import 'package:flutter/material.dart';
import 'package:let_tutor/routes/course/courses_page.dart';
import 'package:let_tutor/routes/profile/profile_home_page.dart';
import 'package:let_tutor/routes/tutor/tutor_home_page.dart';
import 'package:let_tutor/widgets/bottom_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var selectedIndex = 0;
  var screens = [const TutorHomePage(), const CoursesPage(), const ProfileHomePage()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavBar(
          selectedIndex: selectedIndex,
          onClicked: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
        body: screens[selectedIndex],
      ),
    );
  }
}
