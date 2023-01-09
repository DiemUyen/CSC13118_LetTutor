import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../data/models/schedule/next_schedule.dart';
import '../../../../generated/l10n.dart';
import '../../../../injector/injector.dart';
import '../../../../router/app_router.dart';
import '../../../../services/shared_preferences_service.dart';
import '../bloc/schedule_list_bloc.dart';

class ScheduleListView extends StatelessWidget {
  const ScheduleListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var crossAxisCount = 2;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.current.schedule),
          centerTitle: true,
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 1600) {
            crossAxisCount = 8;
          } else if (constraints.maxWidth > 800) {
            crossAxisCount = 4;
          } else {
            crossAxisCount = 2;
          }

          return BlocBuilder<ScheduleListBloc, ScheduleListState>(
            builder: (context, state) {
              if (state is ScheduleListLoadDone) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      state.studentSchedule.isEmpty
                          ? Center(
                              child: Text(S.current.no_data),
                            )
                          : Expanded(
                              child: SingleChildScrollView(
                                child: GridView.builder(
                                  physics: const ScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisSpacing: 4,
                                    crossAxisSpacing: 8,
                                    crossAxisCount: crossAxisCount,
                                  ),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: state.studentSchedule.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () async {
                                        await Navigator.pushNamed(
                                          context,
                                          AppRouter.scheduleDetailPage,
                                          arguments:
                                              state.studentSchedule[index],
                                        );
                                        context
                                            .read<ScheduleListBloc>()
                                            .add(const ScheduleListLoaded());
                                      },
                                      child: _ScheduleCard(
                                        scheduleInfo:
                                            state.studentSchedule[index],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.chevron_left,
                              size: 32,
                            ),
                          ),
                          SizedBox(
                            width: 250,
                            height: 48,
                            child: Center(
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: state.count % 20 == 0
                                    ? state.count ~/ 20
                                    : (state.count) ~/ 20 + 1,
                                itemBuilder: (context, index) => TextButton(
                                  onPressed: () {
                                    context.read<ScheduleListBloc>().add(
                                        ScheduleListPageChanged(index + 1));
                                  },
                                  child: Text('${index + 1}'),
                                ),
                              ),
                            ),
                          ),
                          const IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.chevron_right,
                              size: 32,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              } else if (state is ScheduleListLoadFailure) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S.current.load_schedule_fail,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(S.current.try_again),
                      ],
                    ),
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          );
        }),
      ),
    );
  }
}

class _ScheduleCard extends StatelessWidget {
  const _ScheduleCard({Key? key, required this.scheduleInfo}) : super(key: key);

  final List<NextSchedule> scheduleInfo;

  @override
  Widget build(BuildContext context) {
    final service = Injector.instance<SharedPreferencesService>();
    final String locale = service.locale;
    var startTime = DateTime.fromMillisecondsSinceEpoch(
        scheduleInfo.first.scheduleDetailInfo?.startPeriodTimestamp ?? 0);
    var endTime = DateTime.fromMillisecondsSinceEpoch(
        scheduleInfo.last.scheduleDetailInfo?.endPeriodTimestamp ?? 0);

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(scheduleInfo.first
                      .scheduleDetailInfo?.scheduleInfo?.tutorInfo?.avatar ??
                  ''),
              radius: 40,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    scheduleInfo.first.scheduleDetailInfo?.scheduleInfo
                            ?.tutorInfo?.name ??
                        '',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    DateFormat('EEE, dd MM yyyy', locale).format(startTime),
                  ),
                  Text(
                    '${DateFormat('HH:mm', locale).format(startTime)} - ${DateFormat('HH:mm', locale).format(endTime)}',
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
