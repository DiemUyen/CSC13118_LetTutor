import 'package:flutter/material.dart';
import 'package:let_tutor/routes.dart';
import 'package:let_tutor/widgets/course_card.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail({Key? key}) : super(key: key);

  static const topics = ['The Internet', 'Artificial Intelligence', 'Social Media', 'Internet Privacy', 'Live Streaming'];
  
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

  Widget description(BuildContext context, IconData icon, String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon),
            const SizedBox(width: 8,),
            Text(title, style: Theme.of(context).textTheme.subtitle2,),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Text(content, textAlign: TextAlign.left,),
        ),
      ],
    );
  }

  Widget topicList() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: topics.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RouteGenerator.topicsPage);
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${index + 1}.'),
                  const SizedBox(height: 8,),
                  Text(topics[index]),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget suggestedTutor(BuildContext context, String tutorName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(tutorName),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, RouteGenerator.tutorDetailPage);
          },
          child: const Text('More info')
        ),
      ],
    );
  }

  Widget suggestedTutorList() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return suggestedTutor(context, '${index + 1}. April');
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
            children: [
              CourseCard(
                bottomWidget: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteGenerator.topicsPage);
                    },
                    child: const Text('Discover'),
                  ),
                )
              ),

              // Overview
              header(context, 'Overview'),
              const SizedBox(height: 8,),
              description(context, Icons.question_mark_outlined, 'Why take this course', "Our world is rapidly changing thanks to new technology, and the vocabulary needed to discuss modern life is evolving almost daily. In this course you will learn the most up-to-date terminology from expertly crafted lessons as well from your native-speaking tutor."),
              const SizedBox(height: 8,),
              description(context, Icons.question_mark_outlined, 'What will you be able to do', "You will learn vocabulary related to timely topics like remote work, artificial intelligence, online privacy, and more. In addition to discussion questions, you will practice intermediate level speaking tasks such as using data to describe trends."),
              const SizedBox(height: 16,),

              // Experience level
              header(context, 'Experience Level'),
              const SizedBox(height: 8,),
              description(context, Icons.person_add_alt_1_outlined, 'Beginner', ''),

              // Course length
              header(context, 'Course Length'),
              const SizedBox(height: 8,),
              description(context, Icons.my_library_books_outlined, '5 topics', ''),

              // List topic
              header(context, 'List Topic'),
              topicList(),
              const SizedBox(height: 16,),

              // Suggested tutors
              header(context, 'Suggested Tutors'),
              const SizedBox(height: 8,),
              suggestedTutorList()
            ],
          ),
        ),
      ),
    );
  }
}
