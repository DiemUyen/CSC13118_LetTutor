import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.co_present_outlined),
          label: 'Tutor'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book_outlined),
          label: 'Courses'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile'
        )
      ],
    );
  }
}
