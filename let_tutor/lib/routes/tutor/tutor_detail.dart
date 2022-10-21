import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:let_tutor/routes.dart';
import 'package:let_tutor/widgets/specialities.dart';
import 'package:let_tutor/widgets/tutor_info.dart';

var counter = 0;

class TutorDetail extends StatefulWidget {
  const TutorDetail({Key? key}) : super(key: key);

  @override
  State<TutorDetail> createState() => _TutorDetailState();
}

class _TutorDetailState extends State<TutorDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tutor information
          const TutorInfo(),

          const SizedBox(height: 8,),

          // Paragraph about tutor
          const Text('lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo'),

          // Favorite, Report and Review
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () { },
                  child: Column(
                    children: const [
                      Icon(Icons.favorite_outline),
                      Text('Favorite')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () { },
                  child: Column(
                    children: const [
                      Icon(Icons.question_mark_outlined),
                      Text('Report')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RouteGenerator.tutorReviewsPage);
                  },
                  child: Column(
                    children: const [
                      Icon(Icons.star_outline),
                      Text('Reviews')
                    ],
                  ),
                )
              ],
            ),
          ),

          // Video Introduction
          const Placeholder(fallbackHeight: 200, fallbackWidth: 200,),

          // Languages
          Text('Languages', style: Theme.of(context).textTheme.headline6,),
          const SizedBox(height: 8,),
          const Chip(label: Text('English'),),
          const SizedBox(height: 16,),

          // Specialities
          Text('Specialities', style: Theme.of(context).textTheme.headline6,),
          const SizedBox(height: 8,),
          const Specialities(),
          const SizedBox(height: 16,),

          // Suggested courses
          Text('Suggested Courses', style: Theme.of(context).textTheme.headline6,),
          const SizedBox(height: 8,),
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 7,
            itemBuilder: (context, index) {
              return Text('$index');
            },
          ),
          const SizedBox(height: 16,),

          // Interests
          Text('Interests', style: Theme.of(context).textTheme.headline6,),
          const SizedBox(height: 8,),
          const Text('lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ...'),
          const SizedBox(height: 16,),

          // Teaching experience
          Text('Teaching experience', style: Theme.of(context).textTheme.headline6,),
          const SizedBox(height: 8,),
          const Text('lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ...'),
          const SizedBox(height: 16,),

          // Schedule table
          Row(
            children: [
              OutlinedButton(
                onPressed: () { },
                child: const Text('Today'),
              ),
              IconButton(
                onPressed: () { setState(() {
                  if (counter >= 7) {
                    counter -= 7;
                  }
                }); },
                icon: const Icon(Icons.arrow_back_ios_outlined),
              ),
              IconButton(
                onPressed: () { setState(() {
                  counter += 7;
                }); },
                icon: const Icon(Icons.arrow_forward_ios_outlined),
              ),
              const Text('')
            ],
          ),
          // TODO: Create full table
          Table(
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                children: [
                  const Text(''),
                  Text(DateFormat('dd/MM').format(DateTime.now().add(Duration(days: counter + 1)))),
                  Text(DateFormat('dd/MM').format(DateTime.now().add(Duration(days: counter + 2)))),
                  Text(DateFormat('dd/MM').format(DateTime.now().add(Duration(days: counter + 3)))),
                  Text(DateFormat('dd/MM').format(DateTime.now().add(Duration(days: counter + 4)))),
                  Text(DateFormat('dd/MM').format(DateTime.now().add(Duration(days: counter + 5)))),
                  Text(DateFormat('dd/MM').format(DateTime.now().add(Duration(days: counter + 6)))),
                  Text(DateFormat('dd/MM').format(DateTime.now().add(Duration(days: counter + 7))))
                ]
              ),
              TableRow(
                children: [
                  const Text('00:00 - 00: 25'),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                ]
              ),
              TableRow(
                  children: [
                    const Text('00:30 - 00: 55'),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                  ]
              ),
              TableRow(
                  children: [
                    const Text('01:00 - 01: 25'),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                  ]
              ),
              TableRow(
                  children: [
                    const Text('01:30 - 01: 55'),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                  ]
              ),
            ],
          )
        ],
      ),
    );
  }
}
