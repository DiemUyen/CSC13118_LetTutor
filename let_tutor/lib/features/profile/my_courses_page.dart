import 'package:flutter/material.dart';


class MyCoursesPage extends StatelessWidget {
  const MyCoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Text("No data"),
          ),
        ),
      ),
    );
  }
}
