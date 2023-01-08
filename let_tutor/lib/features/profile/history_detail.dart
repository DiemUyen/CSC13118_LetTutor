import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../data/models/schedule/next_schedule.dart';
import '../../generated/l10n.dart';
import '../../injector/injector.dart';
import '../../services/shared_preferences_service.dart';
import '../../widgets/widgets.dart';

class HistoryDetail extends StatefulWidget {
  const HistoryDetail({Key? key, required this.historyInfo}) : super(key: key);

  final NextSchedule historyInfo;

  @override
  State<HistoryDetail> createState() => _HistoryDetailState();
}

class _HistoryDetailState extends State<HistoryDetail> {
  @override
  Widget build(BuildContext context) {
    final service = Injector.instance<SharedPreferencesService>();
    final String locale = service.locale;
    var startTime = DateTime.fromMillisecondsSinceEpoch(
        widget.historyInfo.scheduleDetailInfo?.startPeriodTimestamp ?? 0);
    var endTime = DateTime.fromMillisecondsSinceEpoch(
        widget.historyInfo.scheduleDetailInfo?.endPeriodTimestamp ?? 0);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tutor taught this lesson
              _InformationTutor(
                  widget: widget,
                  tutorName: widget.historyInfo.scheduleDetailInfo?.scheduleInfo
                          ?.tutorInfo?.name ??
                      '',
                  flag: Icons.flag_outlined,
                  nationality: widget.historyInfo.scheduleDetailInfo
                          ?.scheduleInfo?.tutorInfo?.country ??
                      ''),
              const SizedBox(
                height: 24,
              ),

              // Time
              _Header(header: S.current.lesson_time),
              _Description(
                  content:
                      DateFormat('EEE, dd MM yyyy', locale).format(startTime)),
              _Description(
                  content:
                      '${DateFormat('HH:mm', locale).format(startTime)} - ${DateFormat('HH:mm', locale).format(endTime)}'),
              const SizedBox(
                height: 16,
              ),

              // Request for lesson
              _Header(header: S.current.request_for_lesson),
              _Description(content: widget.historyInfo.studentRequest ?? ''),
              const SizedBox(
                height: 16,
              ),

              // Review from tutor
              _Header(header: S.current.review_from_tutor),
              _Description(
                  content:
                      widget.historyInfo.tutorReview ?? S.current.no_review),
              Padding(
                padding: const EdgeInsets.only(left: 48, top: 8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: StarRating(
                      initialRating:
                          widget.historyInfo.scoreByTutor?.toDouble() ?? 0,
                      ignoreGestures: true,
                      ratingUpgrade: (value) {},
                      itemSize: 24),
                ),
              ),

              // Interact
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // Report
                  _ReportButton(),
                  SizedBox(
                    width: 40,
                  ),
                  // Rating
                  _RatingButton(),
                ],
              ),
              const SizedBox(
                height: 16,
              ),

              // Record if have
              widget.historyInfo.showRecordUrl ?? false
                  ? Column(
                      children: [
                        _Header(header: S.current.record_session),
                        const SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: VideoPlayer(
                              videoUrl: widget.historyInfo.recordUrl ?? ''),
                        ),
                      ],
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

class _RatingButton extends StatelessWidget {
  const _RatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: const Icon(Icons.star_outline),
      label: Text(S.current.rating),
      onPressed: () {},
    );
  }
}

class _ReportButton extends StatelessWidget {
  const _ReportButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: const Icon(
        Icons.report_gmailerrorred_outlined,
        color: Colors.redAccent,
      ),
      label: Text(
        S.current.report,
        style: const TextStyle(color: Colors.redAccent),
      ),
      onPressed: () {},
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    Key? key,
    required this.content,
  }) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 48, top: 8),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            content,
            textAlign: TextAlign.left,
          )),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
    required this.header,
  }) : super(key: key);

  final String header;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const SizedBox(
            width: 24,
            child: Divider(),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            header,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            width: 8,
          ),
          const Expanded(child: Divider())
        ],
      ),
    );
  }
}

class _InformationTutor extends StatelessWidget {
  const _InformationTutor({
    Key? key,
    required this.widget,
    required this.tutorName,
    required this.flag,
    required this.nationality,
  }) : super(key: key);

  final HistoryDetail widget;
  final String tutorName;
  final IconData flag;
  final String nationality;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(widget.historyInfo
                      .scheduleDetailInfo?.scheduleInfo?.tutorInfo?.avatar ??
                  ''),
              radius: 36),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tutorName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Icon(flag),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(nationality)
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                TextButton.icon(
                  icon: const Icon(
                    Icons.chat_bubble_outline,
                    size: 20,
                  ),
                  label: Text(S.current.direct_message),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
