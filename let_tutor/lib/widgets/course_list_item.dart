import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../data/models/course/courses.dart';

class CourseListItem extends StatelessWidget {
  const CourseListItem({
    Key? key,
    required this.course,
  }) : super(key: key);

  final Courses course;
  static const Map<String, String> levels = {
    '0': 'Any Level',
    '1': 'Beginner',
    '2': 'Upper-Beginner',
    '3': 'Pre-Intermediate',
    '4': 'Intermediate',
    '5': 'Upper-Intermediate',
    '6': 'Pre-Advanced',
    '7': 'Advanced',
    '8': 'Very Advanced'
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: 350,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Image of course
              Expanded(
                child: CachedNetworkImage(
                  imageUrl: course.imageUrl ?? '',
                  progressIndicatorBuilder: (context, url, progress) =>
                      CircularProgressIndicator(
                    value: progress.progress,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              // Name
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  course.name ?? '',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              // Description
              Text(course.description ?? ''),
              const SizedBox(
                height: 24,
              ),
              // Information level
              Row(
                children: [
                  // Level
                  Text(
                    levels[course.level] ?? '',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  // The number of lessons
                  Text('${course.topics?.length.toString() ?? '0'} Lessons'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
