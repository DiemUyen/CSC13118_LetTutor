import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../data/models/schedule/next_schedule.dart';
import '../injector/injector.dart';
import '../services/shared_preferences_service.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({Key? key, required this.historyInfo}) : super(key: key);

  final NextSchedule historyInfo;

  @override
  Widget build(BuildContext context) {
    final service = Injector.instance<SharedPreferencesService>();
    final String locale = service.locale;
    var startTime = DateTime.fromMillisecondsSinceEpoch(historyInfo
        .scheduleDetailInfo?.startPeriodTimestamp ?? 0);
    var endTime = DateTime.fromMillisecondsSinceEpoch(historyInfo
        .scheduleDetailInfo?.endPeriodTimestamp ?? 0);
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(historyInfo
                      .scheduleDetailInfo?.scheduleInfo?.tutorInfo?.avatar ??
                  ''),
              radius: 24,
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    historyInfo.scheduleDetailInfo?.scheduleInfo?.tutorInfo?.name ?? '',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    DateFormat('EEE, dd MM yyyy', locale).format(startTime),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text('${DateFormat('HH:mm').format(startTime)} - ${DateFormat('HH:mm').format(endTime)}'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
