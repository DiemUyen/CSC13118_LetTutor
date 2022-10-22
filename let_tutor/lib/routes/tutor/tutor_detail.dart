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

  Widget favoriteButton() {
    return GestureDetector(
      onTap: () { },
      child: Column(
        children: const [
          Icon(Icons.favorite_outline),
          Text('Favorite')
        ],
      ),
    );
  }

  Widget reportButton() {
    return GestureDetector(
      onTap: () { },
      child: Column(
        children: const [
          Icon(Icons.report_outlined),
          Text('Report')
        ],
      ),
    );
  }

  Widget reviewsButton() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RouteGenerator.tutorReviewsPage);
      },
      child: Column(
        children: const [
          Icon(Icons.star_outline),
          Text('Reviews')
        ],
      ),
    );
  }

  Widget header(BuildContext context, String header) {
    return Row(
      children: [
        const SizedBox(width: 24, child: Divider(),),
        const SizedBox(width: 8,),
        Text(header, style: Theme.of(context).textTheme.headline6,),
        const SizedBox(width: 8,),
        const Expanded(child: Divider())
      ],
    );
  }

  Widget suggestedCourses() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Row(
          children: [
            const Text(
              'Basic Conversation Topics',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(width: 8,),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteGenerator.courseDetailPage);
              },
              child: const Text('More Detail'),
            )
          ],
        );
      },
    );
  }

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
                    favoriteButton(),
                    reportButton(),
                    reviewsButton()
                  ],
                ),
              ),

              // Video Introduction
              const Placeholder(fallbackHeight: 200, fallbackWidth: 200,),
              const SizedBox(height: 16,),

              // Languages
              header(context, 'Languages'),
              const SizedBox(height: 8,),
              const Chip(label: Text('English'),),
              const SizedBox(height: 16,),

              // Specialities
              header(context, 'Specialities'),
              const SizedBox(height: 8,),
              const Specialities(),
              const SizedBox(height: 16,),

              // Suggested courses
              header(context, 'Suggested Courses'),
              const SizedBox(height: 8,),
              suggestedCourses(),
              const SizedBox(height: 16,),

              // Interests
              header(context, 'Interests'),
              const SizedBox(height: 8,),
              const Text('lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ...'),
              const SizedBox(height: 16,),

              // Teaching experience
              header(context, 'Teaching Experience'),
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
        ),
      ),
    );
  }
}
