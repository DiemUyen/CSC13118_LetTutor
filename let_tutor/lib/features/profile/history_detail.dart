import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:let_tutor/data/models/schedule/next_schedule.dart';
import 'package:let_tutor/widgets/star_rating.dart';
import 'package:let_tutor/widgets/video_player.dart';

class HistoryDetail extends StatefulWidget {
  const HistoryDetail({Key? key, required this.historyInfo}) : super(key: key);

  final NextSchedule historyInfo;

  @override
  State<HistoryDetail> createState() => _HistoryDetailState();
}

class _HistoryDetailState extends State<HistoryDetail> {
  Widget inforTutor(String tutorName, IconData flag, String nationality) {
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
                  label: const Text('Direct Message'),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget header(BuildContext context, String header) {
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

  Widget description(String content) {
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

  Widget reportButton() {
    return OutlinedButton.icon(
      icon: const Icon(
        Icons.report_gmailerrorred_outlined,
        color: Colors.redAccent,
      ),
      label: const Text(
        'Report',
        style: TextStyle(color: Colors.redAccent),
      ),
      onPressed: () {},
    );
  }

  Widget ratingButton() {
    return OutlinedButton.icon(
      icon: const Icon(Icons.star_outline),
      label: const Text('Rating'),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
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
              inforTutor(
                  widget.historyInfo.scheduleDetailInfo?.scheduleInfo?.tutorInfo
                          ?.name ??
                      '',
                  Icons.flag_outlined,
                  widget.historyInfo.scheduleDetailInfo?.scheduleInfo?.tutorInfo
                          ?.country ??
                      ''),
              const SizedBox(
                height: 24,
              ),

              // Time
              header(context, 'Lesson Time'),
              description(DateFormat('EEE, dd MM yyyy').format(startTime)),
              description(
                  '${DateFormat('HH:mm').format(startTime)} - ${DateFormat('HH:mm').format(endTime)}'),
              const SizedBox(
                height: 16,
              ),

              // Request for lesson
              header(context, 'Request for Lesson'),
              description(widget.historyInfo.studentRequest ?? ''),
              const SizedBox(
                height: 16,
              ),

              // Review from tutor
              header(context, 'Review from Tutor'),
              description(widget.historyInfo.tutorReview ?? 'No review'),
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
                children: [
                  // Report
                  reportButton(),
                  const SizedBox(
                    width: 40,
                  ),
                  // Rating
                  ratingButton(),
                ],
              ),
              const SizedBox(
                height: 16,
              ),

              // Record if have
              widget.historyInfo.showRecordUrl ?? false
                  ? Column(
                      children: [
                        header(context, 'Record session'),
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
