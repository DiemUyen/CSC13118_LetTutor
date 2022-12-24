import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_tutor/injector/injector.dart';

import '../bloc/feedback_bloc.dart';
import 'tutor_reviews_view.dart';


class TutorReviewPage extends StatefulWidget {
  const TutorReviewPage({Key? key, required this.tutorId}) : super(key: key);

  final String tutorId;

  @override
  State<TutorReviewPage> createState() => _TutorReviewPageState();
}

class _TutorReviewPageState extends State<TutorReviewPage> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<FeedbackBloc>(),
      child: TutorReviewsView(tutorId: widget.tutorId,),
    );
  }
}

