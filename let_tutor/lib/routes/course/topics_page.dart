import 'package:flutter/material.dart';

import '../../widgets/course_card.dart';

class TopicsPage extends StatefulWidget {
  const TopicsPage({Key? key}) : super(key: key);

  @override
  State<TopicsPage> createState() => _TopicsPageState();
}

class _TopicsPageState extends State<TopicsPage> {

  List<String> topicsName = <String>['Foods You Love', 'Your Job', 'Playing and Watching Sports', 'The Best Pet', 'Hobbies'];

  Widget topicsDropdownList() {
    return DropdownButton<String>(
      isExpanded: true,
      underline: Container(
        height: 0,
      ),
      value: topicsName.first,
      items: topicsName.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(value: value, child: Text(
            '${topicsName.indexOf(value) + 1}.     $value'
        ),);
      }).toList(),
      onChanged: (String? value) { },
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
              const CourseCard(bottomWidget: SizedBox(height: 0)),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Divider(),
              ),

              // List topics
              topicsDropdownList(),
              const SizedBox(height: 16,),

              // PDF Viewer
              const Text('PDF viewer'),
              const SizedBox(height: 8,),
              const Placeholder(),
            ],
          ),
        ),
      ),
    );
  }
}
