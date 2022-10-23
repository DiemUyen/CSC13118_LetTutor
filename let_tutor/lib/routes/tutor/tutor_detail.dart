import 'package:flutter/material.dart';
import 'package:let_tutor/routes.dart';
import 'package:let_tutor/widgets/specialities.dart';
import 'package:let_tutor/widgets/tutor_info.dart';


class TutorDetail extends StatefulWidget {
  const TutorDetail({Key? key}) : super(key: key);

  @override
  State<TutorDetail> createState() => _TutorDetailState();
}

class _TutorDetailState extends State<TutorDetail> {

  var reasonReports = <String>[ 'This tutor is annoying me', 'This profile is pretending be someone or is fake',
    'Inappropriate profile photo'];
  var isChecked = <bool>[ false, false, false];

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

  Widget contentReportDialog() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: const [
              Icon(Icons.report),
              SizedBox(width: 8,),
              Flexible(
                child: Text('Help us understand what\'s happening?', overflow: TextOverflow.fade,),
              )
            ],
          ),
          const SizedBox(height: 8,),

          SizedBox(
            height: 200,
            width: 300,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const ClampingScrollPhysics(),
              itemCount: reasonReports.length,
              itemBuilder: (context, index) {
                return CheckboxListTile(
                  title: Text(reasonReports[index]),
                  value: isChecked[index],
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked[index] = value!;
                    });
                  },
                );
              },
            ),
          ),

          const TextField(
            maxLines: 10,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Please let us know details about your problem',
            ),
          ),
        ],
      ),
    );
  }

  Widget reportButton() {
    return GestureDetector(
      onTap: () async {
        return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Report April'),
              content: contentReportDialog(),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, 'Cancel');
                  },
                  child: const Text('Cancel'),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, 'Submit');
                  },
                  child: const Text('Submit'),
                )
              ],
            );
          }
        );
      },
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
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 1,
      itemBuilder: (context, index) {
        return Row(
          children: [
            const Text(
              'Life in the Internet Age',
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

  Widget bookButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteGenerator.bookingPage);
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)
                      )
                  ),
                  minimumSize: MaterialStateProperty.all(const Size(100, 48))
              ),
              child: const Text('Book Now'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Tutor information
                      const TutorInfo(),

                      const SizedBox(height: 8,),

                      // Paragraph about tutor
                      const Text('Hello! My name is April Baldo, you can just call me Teacher April. I am an English teacher and currently teaching in senior high school. I have been teaching grammar and literature for almost 10 years. I am fond of reading and teaching literature as one way of knowing one’s beliefs and culture. I am friendly and full of positivity. I love teaching because I know each student has something to bring on. Molding them to become an individual is a great success.'),

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
                      const Text('Dancing, Sewing'),
                      const SizedBox(height: 16,),

                      // Teaching experience
                      header(context, 'Teaching Experience'),
                      const SizedBox(height: 8,),
                      const Text('10 years of English tutor'),
                      const SizedBox(height: 16,),
                    ],
                  ),
                ),
              ),

              // Button 'Book'
              bookButton()
            ],
          ),
        ),
      ),
    );
  }
}
