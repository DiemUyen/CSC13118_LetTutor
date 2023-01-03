import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injector/injector.dart';
import '../bloc/meeting_bloc.dart';
import 'meeting_view.dart';

class MeetingPage extends StatefulWidget {
  const MeetingPage({Key? key, required this.meetingLink}) : super(key: key);

  final String meetingLink;

  @override
  State<MeetingPage> createState() => _MeetingPageState();
}

class _MeetingPageState extends State<MeetingPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<MeetingBloc>()
        ..add(
          MeetingInit(
            url: widget.meetingLink,
          ),
        ),
      child: const MeetingView(),
    );
  }
}
