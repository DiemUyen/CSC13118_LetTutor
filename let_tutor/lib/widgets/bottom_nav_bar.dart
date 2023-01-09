import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar(
      {Key? key, required this.selectedIndex, required this.onClicked})
      : super(key: key);

  final int selectedIndex;
  final ValueChanged<int> onClicked;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(48), topLeft: Radius.circular(48)),
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 16)
          ]),
      child: Material(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        elevation: 0,
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.co_present_outlined), label: S.current.tutor),
            BottomNavigationBarItem(
                icon: const Icon(Icons.book_outlined), label: S.current.course),
            BottomNavigationBarItem(
                icon: const Icon(Icons.person_outline), label: S.current.profile),
          ],
          currentIndex: selectedIndex,
          onTap: onClicked,
        ),
      ),
    );
  }
}
