import 'package:flutter/material.dart';

import '../../widgets/course_card.dart';

class TopicsPage extends StatefulWidget {
  const TopicsPage({Key? key}) : super(key: key);

  @override
  State<TopicsPage> createState() => _TopicsPageState();
}

class _TopicsPageState extends State<TopicsPage> {

  List<String> topicsName = <String>['Foods You Love', 'Your Job', 'Playing and Watching Sports', 'The Best Pet', 'Hobbies'];

  Widget listTopics(BuildContext context, List<String> topics) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (context, index) {
        return InkWell(
          focusNode: FocusNode(),
          onTap: () { },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1, color: Colors.black12)
            ),
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text(
              '${index + 1}.     ${topics[index]}'
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CourseCard(bottomWidget: SizedBox(height: 0)),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Divider(),
        ),
        // List topics
        listTopics(context, topicsName),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Divider(),
        ),
        // PDF Viewer
        const Placeholder(),
      ],
    );
  }
}
