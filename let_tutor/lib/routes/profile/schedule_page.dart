import 'package:flutter/material.dart';
import 'package:let_tutor/widgets/schedule_card.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Introduction
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    SizedBox(
                      width: 4,
                      height: 48,
                      child: Container(color: Colors.grey,),
                    ),
                    const SizedBox(width: 4,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Here is a list of the sessions you have booked'),
                          Text(
                            'You can track when the meeting starts, join the meeting with one click or can cancel the meeting before 2 hours',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),

              // List schedule sessions
              ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ScheduleCard();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
