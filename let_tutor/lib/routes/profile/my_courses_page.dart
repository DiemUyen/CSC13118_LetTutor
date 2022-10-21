import 'package:flutter/material.dart';
import 'package:let_tutor/routes.dart';

class MyCoursesPage extends StatelessWidget {
  const MyCoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("No data"),
          const SizedBox(height: 8,),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteGenerator.profileHomePage);
            },
            child: const Text('Back Home'),
          )
        ],
      ),
    );
  }
}
