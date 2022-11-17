import 'package:flutter/material.dart';

class MeetingPage extends StatefulWidget {
  const MeetingPage({Key? key}) : super(key: key);

  @override
  State<MeetingPage> createState() => _MeetingPageState();
}

class _MeetingPageState extends State<MeetingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Text('Meeting', style: Theme.of(context).textTheme.headline6,),
              const SizedBox(height: 8,),
              const Placeholder()
            ],
          ),
        ),
      ),
    );
  }
}
