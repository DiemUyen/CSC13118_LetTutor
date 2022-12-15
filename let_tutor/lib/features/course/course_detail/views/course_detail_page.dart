import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_tutor/injector/injector.dart';

import '../bloc/course_detail_bloc.dart';
import 'course_detail_view.dart';

class CourseDetailPage extends StatelessWidget {
  const CourseDetailPage({Key? key, required this.courseId}) : super(key: key);

  final String courseId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<CourseDetailBloc>(),
      child: CourseDetailView(courseId: courseId,),
    );
  }
}
