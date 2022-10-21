import 'package:flutter/material.dart';

class HistoryDetail extends StatefulWidget {
  const HistoryDetail({Key? key}) : super(key: key);

  @override
  State<HistoryDetail> createState() => _HistoryDetailState();
}

class _HistoryDetailState extends State<HistoryDetail> {

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
              Text(tutorName, style: Theme
                  .of(context)
                  .textTheme
                  .subtitle2,),
              const SizedBox(height: 4,),
              Row(
                children: [
                  Icon(flag),
                  const SizedBox(width: 4,),
                  Text(nationality)
                ],
              ),
              const SizedBox(height: 4,),
              TextButton.icon(
                icon: const Icon(Icons.chat_bubble_outline, size: 20,),
                label: const Text('Direct Message'),
                onPressed: () {},
              )
            ],
          ),
        )
      ],
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
  
  Widget description(BuildContext context, String content) {
      return Padding(
        padding: const EdgeInsets.only(left: 32, top: 8),
        child: Align(
            alignment: Alignment.topLeft,
            child: Text(content, textAlign: TextAlign.left,)
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: [
            // Tutor taught this lesson
            inforTutor(context, 'April Hazure', Icons.flag_outlined, 'France'),
            const SizedBox(height: 24,),

            // Time
            header(context, 'Lesson Time'),
            description(context, 'Fri, 14 Oct 22'),
            description(context, '10:30 - 10:55'),
            const SizedBox(height: 16,),

            // Request for lesson
            header(context, 'Request for Lesson'),
            description(context, 'No request for lesson'),
            const SizedBox(height: 16,),

            // Review from tutor
            header(context, 'Review from Tutor'),
            description(
                context,
                '''Session 1: 00:00 - 00:25
Lesson status: On progress
Book: test book - Unit: test unit - Lesson: test lesson - Page: test page
Lesson progress: test progreess
Behavior (⭐⭐⭐⭐):
Listening (⭐⭐⭐):
Speaking (⭐⭐):
Vocabulary (⭐⭐⭐):
Overall comment: cần cải thiện
                '''
            ),

            // Interact
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Report
                OutlinedButton.icon(
                  icon: const Icon(Icons.report_gmailerrorred_outlined, color: Colors.redAccent,),
                  label: const Text('Report', style: TextStyle(color: Colors.redAccent),),
                  onPressed: () { },
                ),

                const SizedBox(width: 40,),

                // Rating
                OutlinedButton.icon(
                  icon: const Icon(Icons.star_outline),
                  label: const Text('Rating'),
                  onPressed: () { },
                ),
              ],
            ),
            const SizedBox(height: 16,),

            // Record if have
            header(context, 'Record session'),
            const SizedBox(height: 16,),
            const Placeholder()
          ],
        ),
      ),
    );
  }
}
