import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({Key? key, required this.bottomWidget}) : super(key: key);

  final Widget bottomWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 350,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Image of course
              Expanded(child: Image.asset('assets/life_in_Internet.jpg')),
              const SizedBox(height: 8,),
              // Name
              Text('Life in the Internet Age', style: Theme.of(context).textTheme.headline6,),
              const SizedBox(height: 8,),
              // Description
              const Text("Let's discuss how technology is changing the way we live"),
              const SizedBox(height: 48,),
              bottomWidget
            ],
          ),
        ),
      ),
    );
  }
}
