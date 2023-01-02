import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:let_tutor/data/models/user/learn_topics.dart';

import '../../../../data/models/user/test_preparation.dart';
import '../../../../generated/l10n.dart';
import '../../../../router/app_router.dart';
import '../../../../widgets/widgets.dart';
import '../bloc/tutor_list_bloc.dart';

class TutorListView extends StatefulWidget {
  const TutorListView({Key? key}) : super(key: key);

  @override
  State<TutorListView> createState() => _TutorListViewState();
}

class _TutorListViewState extends State<TutorListView> {
  @override
  void initState() {
    context.read<TutorListBloc>().add(TutorListLoaded());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _UpcomingLesson(),
              const SizedBox(
                height: 16,
              ),
              _SearchBar(),
              const SizedBox(
                height: 8,
              ),
              BlocBuilder<TutorListBloc, TutorListState>(
                  builder: (context, state) {
                return Visibility(
                  visible: state.isSearching,
                  child: Column(
                    children: const [
                      _NationalitiesFilter(),
                      SizedBox(
                        height: 8,
                      ),
                      _AvailableDateFilter(),
                      SizedBox(
                        height: 8,
                      ),
                      _StartTimeFilter(),
                      SizedBox(
                        height: 8,
                      ),
                      _EndTimeFilter(),
                    ],
                  ),
                );
              }),
              const SizedBox(
                height: 16,
              ),
              _SpecialitiesChip(),
              const SizedBox(
                height: 16,
              ),
              BlocBuilder<TutorListBloc, TutorListState>(
                builder: (context, state) {
                  if (state.status == TutorListStatus.loading) {
                    return const CircularProgressIndicator();
                  }
                  if (state.status == TutorListStatus.loadSuccess) {
                    return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.filteredTutors.length,
                      itemBuilder: (context, index) => TutorHomeCard(
                        tutor: state.filteredTutors[index],
                      ),
                    );
                  }
                  return Container();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _UpcomingLesson extends StatefulWidget {
  const _UpcomingLesson({Key? key}) : super(key: key);

  @override
  State<_UpcomingLesson> createState() => _UpcomingLessonState();
}

class _UpcomingLessonState extends State<_UpcomingLesson> {
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(microseconds: 1), (timer) {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                S.current.upcoming_lesson,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            BlocBuilder<TutorListBloc, TutorListState>(
              builder: (context, state) {
                var startTime = DateTime.fromMillisecondsSinceEpoch(state
                        .upcomingClass
                        .scheduleDetailInfo
                        ?.startPeriodTimestamp ??
                    0);
                var endTime = DateTime.fromMillisecondsSinceEpoch(state
                        .upcomingClass.scheduleDetailInfo?.endPeriodTimestamp ??
                    0);
                return Column(
                  children: [
                    Text(
                      '${DateFormat('EEE, dd MMM yy').format(startTime)} ${DateFormat('HH:mm').format(startTime)} - ${DateFormat('HH:mm').format(endTime)}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'starts in ${startTime.difference(DateTime.now()).toString().split('.').first.padLeft(8, '0')}',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                        'Total lesson time is ${state.totalMinutes ~/ 60} hours ${state.totalMinutes % 60} minutes'),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRouter.meetingPage, arguments: state.upcomingClass.studentMeetingLink);
                      },
                      label: Text(S.current.enter_lesson_room),
                      icon: const Icon(Icons.play_circle_fill_outlined),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  _SearchBar({Key? key}) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<TutorListBloc, TutorListState>(
      listener: (context, state) {
        if (state.isReset) {
          controller.text = '';
        }
      },
      child: Row(
        children: [
          // Search bar
          Expanded(
            flex: 1,
            child: TextField(
              controller: controller,
              onChanged: (value) {
                context
                    .read<TutorListBloc>()
                    .add(TutorListNameSearched(tutorName: value));
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search_outlined),
                border: const OutlineInputBorder(),
                hintText: S.current.search_tutor_name,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          // Filter
          IconButton(
            icon: const Icon(Icons.filter_list_outlined),
            onPressed: () {
              context.read<TutorListBloc>().add(TutorListFilterButtonPressed());
            },
          ),
        ],
      ),
    );
  }
}

class _NationalitiesFilter extends StatefulWidget {
  const _NationalitiesFilter({Key? key}) : super(key: key);

  @override
  State<_NationalitiesFilter> createState() => _NationalitiesFilterState();
}

class _NationalitiesFilterState extends State<_NationalitiesFilter> {
  static Map<String, Map<String, bool>> nationalities = {
    S.current.vietnamese_tutor: {'isVietnamese': true},
    S.current.native_english_tutor: {'isNative': true},
    S.current.foreign_tutor: {'isVietnamese': false, 'isNative': false},
  };
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: DropdownButton<String>(
        isExpanded: true,
        hint: Text(S.current.select_tutor_nationality),
        items: nationalities.keys.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(value: value, child: Text(value));
        }).toList(),
        value: selectedValue,
        onChanged: (String? value) {
          context.read<TutorListBloc>().add(
              TutorListNationalityChanged(nationality: nationalities[value]!));
          setState(() {
            selectedValue = value;
          });
        },
      ),
    );
  }
}

class _AvailableDateFilter extends StatelessWidget {
  const _AvailableDateFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
          suffixIcon: Icon(Icons.calendar_today_outlined),
          border: OutlineInputBorder(),
          //hintText: datePicker,
          hintStyle: TextStyle(color: Colors.black)),
      readOnly: true,
      onTap: () async {
        DateTime? picked = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(DateTime.now().year + 1),
            helpText: 'Select available tutoring day');
        if (picked != null) {}
      },
    );
  }
}

class _StartTimeFilter extends StatelessWidget {
  const _StartTimeFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
          suffixIcon: Icon(Icons.access_time),
          border: OutlineInputBorder(),
          //hintText: startTimePicker,
          hintStyle: TextStyle(color: Colors.black)),
      readOnly: true,
      onTap: () async {
        TimeOfDay? picked = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
            helpText: 'Select start time');
        if (picked != null) {}
      },
    );
  }
}

class _EndTimeFilter extends StatelessWidget {
  const _EndTimeFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
          suffixIcon: Icon(Icons.access_time),
          border: OutlineInputBorder(),
          //hintText: endTimePicker,
          hintStyle: TextStyle(color: Colors.black)),
      readOnly: true,
      onTap: () async {
        TimeOfDay? picked = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
            helpText: 'Select end time');
        if (picked != null) {
          /*setState(() {
            endTimePicker = picked.format(context);
          });*/
        }
      },
    );
  }
}

class _SpecialitiesChip extends StatelessWidget {
  _SpecialitiesChip({Key? key}) : super(key: key);

  List<LearnTopics> learnTopics = [];
  List<TestPreparation> testPreparations = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TutorListBloc, TutorListState>(
      builder: (context, state) {
        if (state.status == TutorListStatus.loadSuccess) {
          learnTopics = state.learnTopics;
          testPreparations = state.testPreparations;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: learnTopics.map<Widget>((LearnTopics speciality) {
                  return FilterChip(
                      label: Text(speciality.name ?? ''),
                      selected: (state.filters['specialties'] as List<String>)
                          .contains(speciality.key ?? '0'),
                      onSelected: (bool value) {
                        context.read<TutorListBloc>().add(
                            TutorListSpecialityChosen(
                                speciality: speciality.key ?? ''));
                      });
                }).toList(),
              ),
              const SizedBox(
                height: 8,
              ),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children:
                    testPreparations.map<Widget>((TestPreparation speciality) {
                  return FilterChip(
                      label: Text(speciality.name ?? ''),
                      selected: (state.filters['specialties'] as List<String>)
                          .contains(speciality.key ?? '0'),
                      onSelected: (bool value) {
                        context.read<TutorListBloc>().add(
                            TutorListSpecialityChosen(
                                speciality: speciality.key ?? ''));
                      });
                }).toList(),
              ),
              const SizedBox(
                height: 8,
              ),
              OutlinedButton(
                onPressed: () {
                  context
                      .read<TutorListBloc>()
                      .add(TutorListResetFilterButtonPressed());
                },
                child: Text(S.current.reset_filters),
              ),
            ],
          );
        }
        return Container();
      },
    );
  }
}
