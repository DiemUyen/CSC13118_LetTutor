import 'package:flutter/material.dart';

class HistoryDetail extends StatefulWidget {
  const HistoryDetail({Key? key}) : super(key: key);

  @override
  State<HistoryDetail> createState() => _HistoryDetailState();
}

class _HistoryDetailState extends State<HistoryDetail> {

  Widget inforTutor(String tutorName, IconData flag, String nationality) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/avartar_tutor.jpg'),
            radius: 36
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tutorName, style: Theme
                    .of(context)
                    .textTheme
                    .headlineSmall,),
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
      ),
    );
  }

  Widget header(BuildContext context, String header) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const SizedBox(width: 24, child: Divider(),),
          const SizedBox(width: 8,),
          Text(header, style: Theme.of(context).textTheme.titleMedium,),
          const SizedBox(width: 8,),
          const Expanded(child: Divider())
        ],
      ),
    );
  }
  
  Widget description(String content) {
      return Padding(
        padding: const EdgeInsets.only(left: 48, top: 8),
        child: Align(
            alignment: Alignment.topLeft,
            child: Text(content, textAlign: TextAlign.left,)
        ),
      );
  }

  Widget reportButton() {
    return OutlinedButton.icon(
      icon: const Icon(Icons.report_gmailerrorred_outlined, color: Colors.redAccent,),
      label: const Text('Report', style: TextStyle(color: Colors.redAccent),),
      onPressed: () { },
    );
  }

  Widget ratingButton() {
    return OutlinedButton.icon(
      icon: const Icon(Icons.star_outline),
      label: const Text('Rating'),
      onPressed: () { },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tutor taught this lesson
              inforTutor('April Azure', Icons.flag_outlined, 'France'),
              const SizedBox(height: 24,),

              // Time
              header(context, 'Lesson Time'),
              description('Fri, 14 Oct 22'),
              description('10:30 - 10:55'),
              const SizedBox(height: 16,),

              // Request for lesson
              header(context, 'Request for Lesson'),
              description('No request for lesson'),
              const SizedBox(height: 16,),

              // Review from tutor
              header(context, 'Review from Tutor'),
              description(
                'Session 1: 00:00 - 00:25\nLesson status: On progress\nBook: test book - Unit: test unit - Lesson: test lesson - Page: test page\nLesson progress: test progreess\nBehavior (⭐⭐⭐⭐):\nListening (⭐⭐⭐):\nSpeaking (⭐⭐):\nVocabulary (⭐⭐⭐):\nOverall comment: cần cải thiện'
              ),

              // Interact
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Report
                  reportButton(),
                  const SizedBox(width: 40,),
                  // Rating
                  ratingButton(),
                ],
              ),
              const SizedBox(height: 16,),

              // Record if have
              header(context, 'Record session'),
              const SizedBox(height: 16,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Placeholder(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
