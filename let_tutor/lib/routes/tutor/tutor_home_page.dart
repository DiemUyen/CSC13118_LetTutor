import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:let_tutor/routes.dart';
import 'package:let_tutor/widgets/search_bar.dart';
import 'package:let_tutor/widgets/tutor_home_card.dart';
import 'package:intl/intl.dart';

var crossAxisCount = 2;
late double width;
late double height;
List<String> listNationalities = <String>['Vietnamese', 'America'];
var datePicker = 'Select a day';
var startTimePicker = 'Start time';
var endTimePicker = 'End time';
var visibilityFilter = false;

class TutorHomePage extends StatefulWidget {
  const TutorHomePage({Key? key}) : super(key: key);

  @override
  State<TutorHomePage> createState() => _TutorHomePageState();
}

class _TutorHomePageState extends State<TutorHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          crossAxisCount = 4;
        } else {
          crossAxisCount = 2;
        }
        
        width = constraints.maxWidth;
        height = constraints.minHeight;

        return SingleChildScrollView(
          padding: const EdgeInsets.only(left: 16, top: 0, right: 16, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Upcoming lesson
              Card(
                child: SizedBox(
                  width: constraints.maxWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          "Upcoming lesson",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        const Text(""),
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pushNamed(context, RouteGenerator.meetingPage);
                          },
                          label: const Text("Enter lesson room"),
                          icon: const Icon(Icons.play_circle_fill_outlined),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Column(
                children: [
                  Row(
                    children: [
                      // Search bar
                      const Expanded(
                        flex: 1,
                        child: SearchBar(hintText: 'Enter tutor name')
                      ),
                      const SizedBox(width: 16,),
                      // Filter
                      IconButton(icon: const Icon(Icons.filter_list_outlined), onPressed: () { setState(() {
                        visibilityFilter = !visibilityFilter;
                      }); },),
                    ],
                  ),
                  const SizedBox(height: 8,),
                  Visibility(
                    visible: visibilityFilter,
                    child: Column(
                      children: [
                        // Nationalities
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            underline: Container(
                              height: 0,
                            ),
                            value: listNationalities.first,
                            items: listNationalities.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(value: value, child: Text(value));
                            }).toList(),
                            onChanged: (String? value) { }
                          ),
                        ),
                        const SizedBox(height: 8,),
                        // Day
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: TextFormField(
                            decoration: InputDecoration(
                              icon: const Icon(Icons.calendar_today_outlined, size: 20,),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: datePicker,
                              hintStyle: const TextStyle(color: Colors.black)
                            ),
                            readOnly: true,
                            onTap: () async {
                              DateTime? picked = await showRoundedDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(DateTime.now().year + 1),
                                borderRadius: 24
                              );
                              if (picked != null) {
                                setState(() {
                                  datePicker = DateFormat('dd/MM/yyyy').format(picked);
                                });
                              }
                            },
                          ),
                        ),
                        const SizedBox(height: 8,),
                        // Start time
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                icon: const Icon(Icons.access_time),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                hintText: startTimePicker,
                                hintStyle: const TextStyle(color: Colors.black)
                            ),
                            readOnly: true,
                            onTap: () async {
                              TimeOfDay? picked = await showRoundedTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              );
                              if (picked != null) {
                                setState(() {
                                  startTimePicker = picked.format(context);
                                });
                              }
                            },
                          ),
                        ),
                        const SizedBox(height: 8,),
                        // End time
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                icon: const Icon(Icons.access_time),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                hintText: endTimePicker,
                                hintStyle: const TextStyle(color: Colors.black)
                            ),
                            readOnly: true,
                            onTap: () async {
                              TimeOfDay? picked = await showRoundedTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              );
                              if (picked != null) {
                                setState(() {
                                  endTimePicker = picked.format(context);
                                });
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16,),
              // Specialities
              Text('Specialities', style: Theme.of(context).textTheme.subtitle2,),
              const SizedBox(height: 8,),
              Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    FilterChip(label: const Text('English for Business'), onSelected: (bool value) {  },),
                    FilterChip(label: const Text('TOEIC'), onSelected: (bool value) {  },),
                    FilterChip(label: const Text('English for Conversation'), onSelected: (bool value) {  },),
                    FilterChip(label: const Text('SMARTER'), onSelected: (bool value) {  },),
                    FilterChip(label: const Text('English for Business'), onSelected: (bool value) {  },),
                  ]
              ),
              const SizedBox(height: 16,),
              // Tutor list
              Text('Tutor list', style: Theme.of(context).textTheme.subtitle2),
              // GridView.builder(
              //   shrinkWrap: true,
              //   scrollDirection: Axis.vertical,
              //   itemCount: 7,
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2,
              //     //mainAxisSpacing: 8,
              //     crossAxisSpacing: 16
              //   ),
              //   itemBuilder: (context, index) {
              //     return TutorHomeCard();
              //     //return Text('$width - $height');
              //   },
              // )

              ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RouteGenerator.tutorDetailPage);
                    },
                    child: const TutorHomeCard()
                  );
                },
              )
            ],
          ),
        );
      }),
    );
  }
}



