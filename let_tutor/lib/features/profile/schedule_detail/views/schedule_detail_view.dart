import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:let_tutor/features/profile/schedule_detail/bloc/schedule_detail_bloc.dart';

import '../../../../data/models/schedule/next_schedule.dart';
import '../../../../router/app_router.dart';

class ScheduleDetailView extends StatelessWidget {
  const ScheduleDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: BlocConsumer<ScheduleDetailBloc, ScheduleDetailState>(
          listener: (context, state) {
            if (state is ScheduleDetailLoadFailure) {
              if (state.isSaveRequest) {
                showDialog(
                    context: context,
                    builder: (content) {
                      return AlertDialog(
                        icon: Icon(
                          Icons.warning_amber_outlined,
                          color: Theme.of(context).colorScheme.error,
                        ),
                        content:
                            Text('Save Request Failed!'),
                      );
                    });
              } else if (state.isCancelSchedule) {
                showDialog(
                    context: context,
                    builder: (content) {
                      return AlertDialog(
                        icon: Icon(
                          Icons.warning_amber_outlined,
                          color: Theme.of(context).colorScheme.error,
                        ),
                        content: Text('Cancel Schedule Failed!'),
                      );
                    });
              } else if (state is ScheduleDetailLoadSuccess) {
                if (state.isCancelSchedule) {
                  Navigator.pop(context);
                } else if (state.isSaveRequest) {
                  showDialog(
                      context: context,
                      builder: (content) {
                        return AlertDialog(
                          icon: Icon(
                            Icons.check,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          content: Text('Successfully Save Request'),
                        );
                      });
                }
              }
            }
          },
          builder: (context, state) {
            if (state is ScheduleDetailLoadSuccess) {
              return Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Tutor taught this lesson
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                  backgroundImage: CachedNetworkImageProvider(
                                      state
                                              .schedules
                                              .first
                                              .scheduleDetailInfo
                                              ?.scheduleInfo
                                              ?.tutorInfo
                                              ?.avatar ??
                                          ''),
                                  radius: 36),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.schedules.first.scheduleDetailInfo
                                              ?.scheduleInfo?.tutorInfo?.name ??
                                          '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall,
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.flag_outlined),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(state
                                                .schedules
                                                .first
                                                .scheduleDetailInfo
                                                ?.scheduleInfo
                                                ?.tutorInfo
                                                ?.country ??
                                            '')
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
                          const SizedBox(
                            height: 8,
                          ),

                          // Time
                          const _Header(header: 'Lesson Time'),
                          Container(
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: state.schedules.length,
                              itemBuilder: (context, index) {
                                final startTime =
                                    DateTime.fromMillisecondsSinceEpoch(state
                                            .schedules[index]
                                            .scheduleDetailInfo
                                            ?.startPeriodTimestamp ??
                                        0);
                                final endTime =
                                    DateTime.fromMillisecondsSinceEpoch(state
                                            .schedules[index]
                                            .scheduleDetailInfo
                                            ?.endPeriodTimestamp ??
                                        0);
                                return _Description(
                                    content:
                                        '${DateFormat('EEE, dd MMM yyyy').format(startTime)}, ${DateFormat('hh:mm').format(startTime)} - ${DateFormat('hh:mm').format(endTime)}');
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),

                          // Request for lesson
                          const _Header(header: 'Request for Lesson'),
                          const SizedBox(
                            height: 8,
                          ),
                          _StudentRequest(
                            request: state.request,
                            schedules: state.schedules,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: Row(
                      children: [
                        OutlinedButton.icon(
                          onPressed: () async {
                            return showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text('Confirm cancel booking'),
                                    content: const Text(
                                        'Cancel booking lesson with April?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context, 'No');
                                        },
                                        child: const Text('No'),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context, 'Confirm');
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Confirm'),
                                      )
                                    ],
                                  );
                                });
                          },
                          icon: const Icon(Icons.clear),
                          label: const Text('Cancel'),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRouter.meetingPage,
                                  arguments:
                                      state.schedules.first.studentMeetingLink);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              foregroundColor:
                                  Theme.of(context).colorScheme.onPrimary,
                            ),
                            child: const Text('Go to meeting'),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key, required this.header}) : super(key: key);

  final String header;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({Key? key, required this.content}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, top: 8),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            content,
            textAlign: TextAlign.left,
          )),
    );
  }
}

class _StudentRequest extends StatefulWidget {
  const _StudentRequest(
      {Key? key, required this.request, required this.schedules})
      : super(key: key);

  final String request;
  final List<NextSchedule> schedules;

  @override
  State<_StudentRequest> createState() => _StudentRequestState();
}

class _StudentRequestState extends State<_StudentRequest> {
  final _requestController = TextEditingController();

  @override
  void initState() {
    _requestController.text = widget.request;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _requestController,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            hintText: 'No request for lesson.',
            errorText:
                (widget.request.isNotEmpty && _requestController.text.isEmpty)
                    ? 'Student request is not empty'
                    : null,
          ),
          maxLines: 5,
          onChanged: (_) {
            setState(() {});
          },
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  context.read<ScheduleDetailBloc>().add(
                        ScheduleDetailSaveButtonPressed(widget.schedules,
                            studentRequest: _requestController.text,
                            scheduleId: widget.schedules.first.id ?? ''),
                      );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                ),
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
