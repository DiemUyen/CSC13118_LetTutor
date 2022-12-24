import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../router/app_router.dart';
import '../../../../widgets/widgets.dart';
import '../bloc/feedback_bloc.dart';

class TutorReviewsView extends StatefulWidget {
  const TutorReviewsView({Key? key, required this.tutorId}) : super(key: key);

  final String tutorId;

  @override
  State<TutorReviewsView> createState() => _TutorReviewsViewState();
}

class _TutorReviewsViewState extends State<TutorReviewsView> {
  @override
  void initState() {
    context
        .read<FeedbackBloc>()
        .add(FeedbackLoaded(tutorId: widget.tutorId, page: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedbackBloc, FeedbackState>(
      builder: (context, state) {
        if (state.status == FeedbackStatus.loadSuccess) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRouter.writingReviewPage);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.pen,
                      size: 16,
                    ),
                  )
                ],
                title: const Text('Reviews'),
                centerTitle: true,
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.feedbacks.length,
                          itemBuilder: (context, index) {
                            return PersonReviewCard(
                              feedback: state.feedbacks[index],
                            );
                          },
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.chevron_left,
                            size: 32,
                          ),
                        ),
                        SizedBox(
                          width: 250,
                          height: 48,
                          child: Center(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: state.total ~/ 12 + 1,
                              itemBuilder: (context, index) => TextButton(
                                onPressed: () {
                                  context.read<FeedbackBloc>().add(FeedbackLoaded(
                                      page: index + 1, tutorId: widget.tutorId));
                                },
                                child: Text('${index + 1}'),
                              ),
                            ),
                          ),
                        ),
                        const IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.chevron_right,
                            size: 32,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}
