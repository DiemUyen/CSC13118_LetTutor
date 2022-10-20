import 'package:flutter/material.dart';

class MyCoursesPage extends StatelessWidget {
  const MyCoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("No data"),
        const SizedBox(height: 8,),
        ElevatedButton(
          onPressed: () { },
          child: const Text('Back Home'),
        )
      ],
    );
  }
}
