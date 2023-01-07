import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../data/models/course/courses.dart';
import '../generated/l10n.dart';
import '../router/app_router.dart';

class CourseDetailItem extends StatelessWidget {
  const CourseDetailItem({
    Key? key,
    required this.course,
  }) : super(key: key);

  final Courses course;

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
            ],
          ),
        ),
      ),
    );
  }
}
