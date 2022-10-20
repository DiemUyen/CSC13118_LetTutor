import 'package:flutter/material.dart';

class ScheduleCard extends StatefulWidget {
  const ScheduleCard({Key? key}) : super(key: key);

  @override
  State<ScheduleCard> createState() => _ScheduleCardState();
}

class _ScheduleCardState extends State<ScheduleCard> {

  var canEdit = false;

  Widget inforTutor(BuildContext context, String tutorName, IconData flag, String nationality) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: Colors.brown,
          radius: 40,
          child: Text('AH'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tutorName, style: Theme.of(context).textTheme.subtitle2,),
              const SizedBox(height: 4,),
              Row(
                children: [
                  Icon(flag),
                  const SizedBox(width: 4,),
                  Text(nationality)
                ],
              ),
              const SizedBox(height: 4,),
              OutlinedButton.icon(
                icon: const Icon(Icons.chat_bubble_outline, size: 20,),
                label: const Text('Direct Message'),
                onPressed: () { },
              )
            ],
          ),
        )
      ],
    );
  }

  Widget notes(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Start time : End time', style: Theme.of(context).textTheme.subtitle2,),
                  const SizedBox(height: 16,),
                  Text('Request for lesson', style: Theme.of(context).textTheme.subtitle2,),
                  const Text('There are requests for lesson'),
                  // TODO: UI for edit request
                  //'Currently there are no requests for this class'
                ],
              )
            ],
          ),

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Stack(
          children: [
            Positioned.fill(
              top: 8,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton.icon(
                      icon: const Icon(Icons.cancel_outlined, color: Colors.redAccent,),
                      label: const Text('Cancel', style: TextStyle(color: Colors.redAccent),),
                      onPressed: () { },
                    ),
                    OutlinedButton(
                      child: const Text('Go to meeting'),
                      onPressed: () { },
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                // Date and time schedule
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('${DateTime.now()}', style: Theme.of(context).textTheme.headline6,),
                ),
                const SizedBox(height: 4,),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('1 lesson'),
                ),
                const SizedBox(height: 4,),
                const Divider(),
                const SizedBox(height: 4,),

                // Information of tutor
                inforTutor(context, 'April', Icons.flag_outlined, 'France'),
                const SizedBox(height: 4,),
                const Divider(),
                const SizedBox(height: 4,),

                // Notes
                notes(context),

                const SizedBox(height: 48,)
              ],
            ),
          ]
        ),
      ),
    );
  }
}
