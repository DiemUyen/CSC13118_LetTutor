import 'package:flutter/material.dart';
import 'package:let_tutor/widgets/course_card.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail({Key? key}) : super(key: key);
  
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

  Widget suggestedTutor(BuildContext context, String tutorName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(tutorName),
        TextButton(onPressed: () { }, child: const Text('More info')),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CourseCard(bottomWidget: Center(child: ElevatedButton(onPressed: () { }, child: const Text('Discover'),),)),
        // Overview
        header(context, 'Overview'),
        const SizedBox(height: 8,),
        description(context, Icons.question_mark_outlined, 'Why take this course', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ut euismod nulla, ac placerat nisi. Ut at venenatis eros, sed.'),
        const SizedBox(height: 8,),
        description(context, Icons.question_mark_outlined, 'What will you be able to do', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ut euismod nulla, ac placerat nisi. Ut at venenatis eros, sed.'),
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
        ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${index + 1}.'),
                    const SizedBox(height: 8,),
                    const Text('Your job'),
                  ],
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 16,),

        // Suggested tutors
        header(context, 'Suggested Tutors'),
        const SizedBox(height: 8,),
        ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (context, index) {
            return suggestedTutor(context, '${index + 1}. April');
          },
        )
      ],
    );
  }
}