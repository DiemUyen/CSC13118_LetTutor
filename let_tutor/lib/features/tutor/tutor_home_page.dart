import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../../router/app_router.dart';
import '../../widgets/widgets.dart';

class TutorHomePage extends StatefulWidget {
  const TutorHomePage({Key? key}) : super(key: key);

  @override
  State<TutorHomePage> createState() => _TutorHomePageState();
}

class _TutorHomePageState extends State<TutorHomePage> {

  List<String> listNationalities = <String>['Vietnamese', 'America'];
  var datePicker = 'Select a day';
  var startTimePicker = 'Start time';
  var endTimePicker = 'End time';
  var visibilityFilter = false;
  List<String> specialities = <String>['English for Business', 'English for Conversation', 'English for Kids', 'TOEIC', 'IELTS', 'TOEFL'];

  Widget upcomingLesson(BuildContext context, BoxConstraints constraints) {
    return Card(
      child: SizedBox(
        width: constraints.maxWidth,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Upcoming lesson",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8,),
              Text("Fri, 11 Nov 22 18:30 - 18:55 (starts in ${DateTime(2022, 11, 11).difference(DateTime.now())})", textAlign: TextAlign.center,),
              const SizedBox(height: 8,),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, AppRouter.meetingPage);
                },
                label: const Text("Enter lesson room"),
                icon: const Icon(Icons.play_circle_fill_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget searchBar() {
    return Row(
      children: [
        // Search bar
        const Expanded(
            flex: 1,
            child: SearchBar(hintText: 'Enter tutor name')
        ),
        const SizedBox(width: 16,),
        // Filter
        IconButton(
          icon: const Icon(Icons.filter_list_outlined),
          onPressed: () {
            setState(() {
              visibilityFilter = !visibilityFilter;
            });
          },
        ),
      ],
    );
  }

  Widget nationalitiesFilter() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: DropdownButton<String>(
        isExpanded: true,
        value: listNationalities.first,
        items: listNationalities.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(value: value, child: Text(value));
        }).toList(),
        onChanged: (String? value) { }
      )
    );
  }

  Widget availableDateFilter() {
    return TextFormField(
      decoration: InputDecoration(
          icon: const Icon(Icons.calendar_today_outlined),
          border: const OutlineInputBorder(),
          hintText: datePicker,
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
          setState(() {
            datePicker = DateFormat('dd/MM/yyyy').format(picked);
          });
        }
      },
    );
  }

  Widget startTimeFilter() {
    return TextFormField(
      decoration: InputDecoration(
          icon: const Icon(Icons.access_time),
          border: const OutlineInputBorder(),
          hintText: startTimePicker,
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
          setState(() {
            startTimePicker = picked.format(context);
          });
        }
      },
    );
  }

  Widget endTimeFilter() {
    return TextFormField(
      decoration: InputDecoration(
          icon: const Icon(Icons.access_time),
          border: const OutlineInputBorder(),
          hintText: endTimePicker,
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
          setState(() {
            endTimePicker = picked.format(context);
          });
        }
      },
    );
  }

  Widget specialitiesChips() {
    return Wrap(
        spacing: 8,
        runSpacing: 8,
        children:
          specialities.map<Widget>((String speciality) {
            return FilterChip(label: Text(speciality), onSelected: (bool value) { });
          }).toList()
    );
  }

  Widget tutorList() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 7,
      itemBuilder: (context, index) {
        return const TutorHomeCard();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const TransparentAppBar(),
        body: LayoutBuilder(builder: (context, constraints) {

          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Upcoming lesson
                upcomingLesson(context, constraints),
                const SizedBox(height: 16,),

                // Search and filter
                Column(
                  children: [
                    searchBar(),
                    const SizedBox(height: 8,),

                    Visibility(
                      visible: visibilityFilter,
                      child: Column(
                        children: [
                          // Nationalities
                          nationalitiesFilter(),
                          const SizedBox(height: 8,),
                          // Day
                          availableDateFilter(),
                          const SizedBox(height: 8,),
                          // Start time
                          startTimeFilter(),
                          const SizedBox(height: 8,),
                          // End time
                          endTimeFilter()
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16,),

                // Specialities
                Text('Specialities', style: Theme.of(context).textTheme.titleMedium,),
                const SizedBox(height: 8,),
                specialitiesChips(),
                const SizedBox(height: 16,),

                // Tutor list
                Text('Tutor list', style: Theme.of(context).textTheme.titleMedium),
                tutorList()
              ],
            ),
          );
        }),
      ),
    );
  }
}



