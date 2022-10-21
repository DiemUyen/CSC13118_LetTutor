import 'package:flutter/material.dart';

class MeetingPage extends StatefulWidget {
  const MeetingPage({Key? key}) : super(key: key);

  @override
  State<MeetingPage> createState() => _MeetingPageState();
}

class _MeetingPageState extends State<MeetingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Meeting', style: Theme.of(context).textTheme.headline6,),
          const SizedBox(height: 8,),
          const Placeholder()
        ],
      ),
    );
  }
}
