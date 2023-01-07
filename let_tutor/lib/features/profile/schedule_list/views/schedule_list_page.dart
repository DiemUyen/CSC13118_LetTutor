import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injector/injector.dart';
import '../bloc/schedule_list_bloc.dart';
import 'schedule_list_view.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<ScheduleListBloc>()..add(const ScheduleListLoaded()),
      child: const ScheduleListView(),
    );
  }
}
