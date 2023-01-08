import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_tutor/injector/injector.dart';

import '../bloc/tutor_detail_bloc.dart';
import 'tutor_detail_view.dart';

class TutorDetailPage extends StatefulWidget {
  const TutorDetailPage({Key? key, required this.tutorId}) : super(key: key);

  final String tutorId;

  @override
  State<TutorDetailPage> createState() => _TutorDetailPageState();
}

class _TutorDetailPageState extends State<TutorDetailPage> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<TutorDetailBloc>()..add(TutorDetailLoaded(tutorId: widget.tutorId)),
      child: const TutorDetailView(),
    );
  }
}
