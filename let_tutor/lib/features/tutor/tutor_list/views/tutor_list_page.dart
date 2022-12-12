import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:intl/intl.dart';

import '../../../../injector/injector.dart';
import '../../../../widgets/widgets.dart';
import '../bloc/tutor_list_bloc.dart';
import 'tutor_list_view.dart';

class TutorHomePage extends StatefulWidget {
  const TutorHomePage({Key? key}) : super(key: key);

  @override
  State<TutorHomePage> createState() => _TutorHomePageState();
}

class _TutorHomePageState extends State<TutorHomePage> {

  List<String> listNationalities = <String>['Vietnamese', 'America'];
  var datePicker = 'Select a day';
  var startTimePicker = 'Start time';
  var endTimePicker = 'End time';
  var visibilityFilter = false;
  List<String> specialities = <String>['English for Business', 'English for Conversation', 'English for Kids', 'TOEIC', 'IELTS', 'TOEFL'];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<TutorListBloc>(),
      child: const TutorListView(),
    );
  }
}



