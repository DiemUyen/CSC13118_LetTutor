import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/course/courses.dart';
import '../../../../data/models/responses/course_detail_response.dart';
import '../../../../generated/l10n.dart';
import '../../../../router/app_router.dart';
import '../../../../widgets/widgets.dart';
import '../bloc/course_detail_bloc.dart';

class CourseDetailView extends StatefulWidget {
  const CourseDetailView({Key? key, required this.courseId}) : super(key: key);

  final String courseId;

  @override
  State<CourseDetailView> createState() => _CourseDetailViewState();
}

class _CourseDetailViewState extends State<CourseDetailView> {
  static Map<String, String> levels = {
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
  void initState() {
    context
        .read<CourseDetailBloc>()
        .add(CourseDetailLoaded(courseId: widget.courseId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CourseDetailResponse response = const CourseDetailResponse();

    return BlocConsumer<CourseDetailBloc, CourseDetailState>(
      listener: (context, state) {
        if (state.status == CourseDetailStatus.loading) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: Colors.transparent,
              contentPadding: const EdgeInsets.symmetric(vertical: 24.0),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(),
                  ),
                ],
              ),
            ),
          );
        } else if (state.status == CourseDetailStatus.loadFailure) {
          Navigator.pop(context);
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              icon: Icon(
                Icons.error_outline_rounded,
                color: Theme.of(context).colorScheme.error,
              ),
              title: Text(S.current.load_failed),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state.status == CourseDetailStatus.loadSuccess) {
          Navigator.pop(context);
          response = state.detailResponse;
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(),
              body: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    CourseDetailItem(course: response.data ?? const Courses()),

                    // Overview
                    _Header(header: S.current.overview),
                    const SizedBox(
                      height: 8,
                    ),
                    _Description(
                        iconData: Icons.question_mark_outlined,
                        title: S.current.why_take_course,
                        content: response.data?.reason ?? ''),
                    const SizedBox(
                      height: 8,
                    ),
                    _Description(
                        iconData: Icons.question_mark_outlined,
                        title: S.current.what_able_to_do,
                        content: response.data?.purpose ?? ''),
                    const SizedBox(
                      height: 16,
                    ),

                    // Experience level
                    _Header(header: S.current.experience_level),
                    const SizedBox(
                      height: 8,
                    ),
                    _Description(
                        iconData: Icons.person_add_alt_1_outlined,
                        title: levels[response.data?.level] ?? '',
                        content: ''),

                    // Course length
                    _Header(header: S.current.course_length),
                    const SizedBox(
                      height: 8,
                    ),
                    _Description(
                        iconData: Icons.my_library_books_outlined,
                        title: '${response.data?.topics?.length.toString() ?? '0'} ${S.current.topics}',
                        content: ''),

                    // List topics
                    _Header(header: S.current.list_topics),
                    const _TopicsList(),
                    const SizedBox(
                      height: 16,
                    ),

                    // Suggested tutors
                    _Header(header: S.current.suggested_tutors),
                    const SizedBox(
                      height: 8,
                    ),
                    const _SuggestedTutors(),
                  ],
                ),
              ),
            ),
          );
        }
        return SafeArea(
          child: Scaffold(
            body: Container(),
          ),
        );
      },
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key, required this.header}) : super(key: key);

  final String header;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 24,
          child: Divider(),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          header,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          width: 8,
        ),
        const Expanded(child: Divider())
      ],
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    Key? key,
    required this.iconData,
    required this.title,
    required this.content,
  }) : super(key: key);

  final IconData iconData;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(iconData),
            const SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Text(
            content,
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}

class _TopicsList extends StatelessWidget {
  const _TopicsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseDetailBloc, CourseDetailState>(
      builder: (context, state) {
        if (state.status == CourseDetailStatus.loadSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.detailResponse.data?.topics?.length ?? 0,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRouter.topicsPage);
                },
                child: Card(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${index + 1}.'),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(state.detailResponse.data?.topics?[index].name ??
                            ''),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }
        return Container();
      },
    );
  }
}

class _SuggestedTutors extends StatelessWidget {
  const _SuggestedTutors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseDetailBloc, CourseDetailState>(
      builder: (context, state) {
        if (state.status == CourseDetailStatus.loadSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.detailResponse.data?.users?.length ?? 0,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(state.detailResponse.data?.users?[index].name ?? ''),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRouter.tutorDetailPage);
                    },
                    child: Text(S.current.more_info),
                  ),
                ],
              );
            },
          );
        }
        return Container();
      },
    );
  }
}
