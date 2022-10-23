import 'package:flutter/material.dart';

class Specialities extends StatelessWidget {
  const Specialities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 8,
        runSpacing: 8,
        children: const [
          Chip(label: Text('English for Business')),
          Chip(label: Text('TOEIC')),
          Chip(label: Text('English for Conversation'))
        ]
    );
  }
}
