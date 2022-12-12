import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../router/app_router.dart';
import '../../../../widgets/widgets.dart';
import '../bloc/tutor_list_bloc.dart';

class TutorListView extends StatelessWidget {
  const TutorListView({Key? key}) : super(key: key);

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
              const _SearchBar(),
              const SizedBox(height: 16,),
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
                      itemCount: state.tutors.tutors?.rows?.length ?? 0,
                      itemBuilder: (context, index) =>
                          TutorHomeCard(
                            tutor: state.tutors.tutors!.rows![index],
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

class _UpcomingLesson extends StatelessWidget {
  const _UpcomingLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Upcoming lesson",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Fri, 11 Nov 22 18:30 - 18:55 (starts in ${DateTime(2022, 11, 11).difference(DateTime.now())})",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, AppRouter.meetingPage);
              },
              label: const Text("Enter lesson room"),
              icon: const Icon(Icons.play_circle_fill_outlined),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Search bar
        const Expanded(flex: 1, child: SearchBar(hintText: 'Enter tutor name')),
        const SizedBox(
          width: 16,
        ),
        // Filter
        IconButton(
          icon: const Icon(Icons.filter_list_outlined),
          onPressed: () {
            // todo add event filter button pressed
          },
        ),
      ],
    );
  }
}

class _NationalitiesFilter extends StatelessWidget {
  const _NationalitiesFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        /*padding: const EdgeInsets.symmetric(horizontal: 8),
        child: DropdownButton<String>(
            isExpanded: true,
            value: listNationalities.first,
            items: listNationalities.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
            onChanged: (String? value) { }
        ),*/
    );
  }
}

class _AvailableDateFilter extends StatelessWidget {
  const _AvailableDateFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          icon: const Icon(Icons.calendar_today_outlined),
          border: const OutlineInputBorder(),
          //hintText: datePicker,
          hintStyle: const TextStyle(color: Colors.black)
      ),
      readOnly: true,
      onTap: () async {
        DateTime? picked = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(DateTime.now().year + 1),
            helpText: 'Select available tutoring day'
        );
        if (picked != null) {

        }
      },
    );
  }
}

class _StartTimeFilter extends StatelessWidget {
  const _StartTimeFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          icon: const Icon(Icons.access_time),
          border: const OutlineInputBorder(),
          //hintText: startTimePicker,
          hintStyle: const TextStyle(color: Colors.black)
      ),
      readOnly: true,
      onTap: () async {
        TimeOfDay? picked = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
            helpText: 'Select start time'
        );
        if (picked != null) {

        }
      },
    );
  }
}

class _EndTimeFilter extends StatelessWidget {
  const _EndTimeFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          icon: const Icon(Icons.access_time),
          border: const OutlineInputBorder(),
          //hintText: endTimePicker,
          hintStyle: const TextStyle(color: Colors.black)
      ),
      readOnly: true,
      onTap: () async {
        TimeOfDay? picked = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
            helpText: 'Select end time'
        );
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
  const _SpecialitiesChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
    /*return Wrap(
        spacing: 8,
        runSpacing: 8,
        children:
        specialities.map<Widget>((String speciality) {
          return FilterChip(label: Text(speciality), onSelected: (bool value) { });
        }).toList()
    );*/
  }
}
