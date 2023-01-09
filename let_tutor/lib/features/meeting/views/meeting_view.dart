import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/meeting_bloc.dart';

class MeetingView extends StatelessWidget {
  const MeetingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: BlocBuilder<MeetingBloc, MeetingState>(
            builder: (context, state) {
              if (state is MeetingLoadingState) {
                return const CircularProgressIndicator();
              } else if (state is MeetingLoadFailureState) {
                return Text(state.message);
              } else if (state is MeetingEndingState) {
                Navigator.pop(context);
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
