import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:let_tutor/widgets/video_player.dart';

import '../../../../generated/l10n.dart';
import '../../../../router/app_router.dart';
import '../../../../widgets/widgets.dart';
import '../bloc/tutor_detail_bloc.dart';

class TutorDetailView extends StatefulWidget {
  const TutorDetailView({Key? key, required this.tutorId}) : super(key: key);

  final String tutorId;

  @override
  State<TutorDetailView> createState() => _TutorDetailViewState();
}

class _TutorDetailViewState extends State<TutorDetailView> {
  @override
  void initState() {
    context
        .read<TutorDetailBloc>()
        .add(TutorDetailLoaded(tutorId: widget.tutorId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TutorDetailBloc, TutorDetailState>(
      listener: (context, state) {
        if (state.status == TutorDetailStatus.loading) {
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
        } else if (state.status == TutorDetailStatus.loadFirstSuccess) {
          Navigator.pop(context);
        } else if (state.status == TutorDetailStatus.loadFailure) {
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
        if (state.status == TutorDetailStatus.loadSuccess ||
            state.status == TutorDetailStatus.loadFirstSuccess) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const _TutorInformation(),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(state.tutor.bio ?? ''),

                            // Favorite, Report and Review
                            Container(
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const _FavoriteButton(),
                                  _ReportButton(),
                                  const _ReviewButton(),
                                ],
                              ),
                            ),

                            // Video Introduction
                            VideoPlayer(
                              videoUrl: state.tutor.video ?? '',
                            ),
                            const SizedBox(
                              height: 16,
                            ),

                            // Languages
                            _Header(header: S.current.language),
                            const SizedBox(
                              height: 8,
                            ),
                            const _Languages(),
                            const SizedBox(
                              height: 16,
                            ),

                            // Specialities
                            _Header(header: S.current.specialties),
                            const SizedBox(
                              height: 8,
                            ),
                            const _Specialties(),
                            const SizedBox(
                              height: 16,
                            ),

                            // Suggested courses
                            _Header(header: S.current.suggested_courses),
                            const SizedBox(
                              height: 8,
                            ),
                            const _SuggestedCourses(),
                            const SizedBox(
                              height: 16,
                            ),

                            // Interests
                            _Header(header: S.current.interests),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(state.tutor.interests ?? ''),
                            const SizedBox(
                              height: 16,
                            ),

                            // Teaching experience
                            _Header(header: S.current.teaching_experience),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(state.tutor.experience ?? ''),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const _BookButton(),
                  ],
                ),
              ),
            ),
          );
        }
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(),
            body: Container(),
          ),
        );
      },
    );
  }
}

class _TutorInformation extends StatelessWidget {
  const _TutorInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TutorDetailBloc, TutorDetailState>(
      builder: (context, state) {
        if (state.status == TutorDetailStatus.loadSuccess ||
            state.status == TutorDetailStatus.loadFirstSuccess) {
          return Row(
            children: [
              // Avatar
              CachedNetworkImage(
                width: 48,
                height: 48,
                imageUrl: state.tutor.User?.avatar ?? '',
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(
                  value: downloadProgress.progress,
                ),
                errorWidget: (context, url, error) => Image.asset(
                  'assets/images/default_avatar.png',
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              // Infor
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name
                  Text(state.tutor.User?.name ?? '',
                      style: Theme.of(context).textTheme.headlineSmall),
                  Row(
                    children: [
                      const SizedBox(
                        width: 2,
                      ),
                      // Icon flag
                      const Icon(
                        FontAwesomeIcons.flag,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      // Nationality
                      Text(state.tutor.User?.country ?? ''),
                    ],
                  ),
                  // Rating star
                  Row(
                    children: [
                      StarRating(
                        initialRating: state.tutor.rating ?? 0,
                        ignoreGestures: true,
                        ratingUpgrade: (double rating) {},
                        itemSize: 16,
                      ),
                      Text(
                        '(${state.tutor.totalFeedback ?? 0})',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          );
        }
        return Container();
      },
    );
  }
}

class _FavoriteButton extends StatelessWidget {
  const _FavoriteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TutorDetailBloc, TutorDetailState>(
      builder: (context, state) {
        if (state.status == TutorDetailStatus.loadSuccess ||
            state.status == TutorDetailStatus.loadFirstSuccess) {
          return GestureDetector(
            onTap: () {
              context
                  .read<TutorDetailBloc>()
                  .add(TutorDetailFavoriteButtonPressed());
            },
            child: Column(
              children: [
                state.tutor.isFavorite ?? false
                    ? const Icon(
                        Icons.favorite_rounded,
                        color: Colors.red,
                      )
                    : const Icon(Icons.favorite_border_rounded),
                const Text('Favorite'),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}

class _ContentReportDialog extends StatefulWidget {
  _ContentReportDialog(
      {Key? key, required this.contentReport, required this.pContext})
      : super(key: key);

  String contentReport;
  final BuildContext pContext;

  @override
  State<_ContentReportDialog> createState() => _ContentReportDialogState();
}

class _ContentReportDialogState extends State<_ContentReportDialog> {
  var reasonReports = <String>[
    'This tutor is annoying me',
    'This profile is pretending be someone or is fake',
    'Inappropriate profile photo'
  ];
  var isChecked = <bool>[false, false, false];
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: const [
              Icon(Icons.report),
              SizedBox(
                width: 8,
              ),
              Flexible(
                child: Text(
                  'Help us understand what\'s happening?',
                  overflow: TextOverflow.fade,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 200,
            width: 300,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const ClampingScrollPhysics(),
              itemCount: reasonReports.length,
              itemBuilder: (context, index) {
                widget.contentReport = '';
                return CheckboxListTile(
                  title: Text(reasonReports[index]),
                  value: isChecked[index],
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked[index] = value!;
                    });
                    for (int i = 0; i < reasonReports.length; i++) {
                      isChecked[i]
                          ? widget.contentReport += '${reasonReports[i]} \n'
                          : null;
                    }
                    _controller.text = widget.contentReport;
                    widget.pContext.read<TutorDetailBloc>().add(
                        TutorDetailReportContentChanged(
                            content: widget.contentReport));
                  },
                );
              },
            ),
          ),
          TextField(
            controller: _controller,
            maxLines: 10,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Please let us know details about your problem',
            ),
          ),
        ],
      ),
    );
  }
}

class _ReportButton extends StatelessWidget {
  _ReportButton({
    Key? key,
  }) : super(key: key);

  String contentReport = '';

  @override
  Widget build(BuildContext context) {
    final pContext = context;
    return GestureDetector(
      onTap: () async {
        return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Report'),
              content: _ContentReportDialog(
                contentReport: contentReport,
                pContext: pContext,
              ),
              actions: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context, 'Cancel');
                  },
                  child: const Text('Cancel'),
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, 'Submit');
                    pContext.read<TutorDetailBloc>().add(
                        TutorDetailReportButtonPressed(content: contentReport));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: const Text('Submit'),
                )
              ],
            );
          },
        );
      },
      child: Column(
        children: const [Icon(Icons.report_outlined), Text('Report')],
      ),
    );
  }
}

class _ReviewButton extends StatelessWidget {
  const _ReviewButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRouter.tutorReviewsPage);
      },
      child: Column(
        children: const [Icon(Icons.star_outline), Text('Reviews')],
      ),
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

class _Languages extends StatelessWidget {
  const _Languages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TutorDetailBloc, TutorDetailState>(
      builder: (context, state) {
        if (state.status == TutorDetailStatus.loadSuccess ||
            state.status == TutorDetailStatus.loadFirstSuccess) {
          List<String> languages =
              state.tutor.languages?.split(',').toList() ?? [];
          return Wrap(
            spacing: 8,
            runSpacing: 8,
            children: languages.map((e) {
              int pos =
                  state.categories.indexWhere((element) => element.key == e);
              return Chip(
                label: Text(
                    pos == -1 ? '' : state.categories[pos].description ?? ''),
              );
            }).toList(),
          );
        }
        return Container();
      },
    );
  }
}

class _Specialties extends StatelessWidget {
  const _Specialties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TutorDetailBloc, TutorDetailState>(
      builder: (context, state) {
        if (state.status == TutorDetailStatus.loadSuccess ||
            state.status == TutorDetailStatus.loadFirstSuccess) {
          List<String> specialties =
              state.tutor.specialties!.split(',').toList();
          return Wrap(
            spacing: 8,
            runSpacing: 8,
            children: specialties.map((e) {
              int posInLearnTopics =
                  state.learnTopics.indexWhere((element) => element.key == e);
              int posInTestPreparation = state.testPreparations
                  .indexWhere((element) => element.key == e);
              return Chip(
                label: Text(posInLearnTopics == -1
                    ? (posInTestPreparation == -1
                        ? e
                        : state.testPreparations[posInTestPreparation].name ??
                            '')
                    : state.learnTopics[posInLearnTopics].name ?? ''),
              );
            }).toList(),
          );
        }
        return Container();
      },
    );
  }
}

class _SuggestedCourses extends StatelessWidget {
  const _SuggestedCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TutorDetailBloc, TutorDetailState>(
      builder: (context, state) {
        if (state.status == TutorDetailStatus.loadSuccess ||
            state.status == TutorDetailStatus.loadFirstSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.tutor.User?.courses?.length ?? 0,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Text(
                    state.tutor.User?.courses?[index].name ?? '',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRouter.courseDetailPage,
                          arguments: state.tutor.User?.courses?[index].id);
                    },
                    child: Text(S.current.more_info),
                  )
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

class _BookButton extends StatelessWidget {
  const _BookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRouter.bookingPage);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          minimumSize: const Size.fromHeight(48),
        ),
        child: Text(S.current.book_now),
      ),
    );
  }
}
