import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injector/injector.dart';
import '../bloc/tutor_list_bloc.dart';
import 'tutor_list_view.dart';

class TutorHomePage extends StatefulWidget {
  const TutorHomePage({Key? key}) : super(key: key);

  @override
  State<TutorHomePage> createState() => _TutorHomePageState();
}

class _TutorHomePageState extends State<TutorHomePage> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<TutorListBloc>(),
      child: const TutorListView(),
    );
  }
}



