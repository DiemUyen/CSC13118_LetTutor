import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/models/schedule/next_schedule.dart';
import '../../../../injector/injector.dart';
import '../bloc/schedule_detail_bloc.dart';
import 'schedule_detail_view.dart';

class ScheduleDetailPage extends StatelessWidget {
  const ScheduleDetailPage({Key? key, required this.schedules})
      : super(key: key);

  final List<NextSchedule> schedules;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<ScheduleDetailBloc>()
        ..add(ScheduleDetailLoaded(schedules)),
      child: const ScheduleDetailView(),
    );
  }
}
