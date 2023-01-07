import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../data/models/tutor/tutor.dart';
import '../data/models/user/learn_topics.dart';
import '../data/models/user/test_preparation.dart';
import '../features/tutor/tutor_list/bloc/tutor_list_bloc.dart';
import '../router/app_router.dart';
import 'widgets.dart';

class TutorHomeCard extends StatelessWidget {
  const TutorHomeCard({Key? key, required this.tutor, required this.topics, required this.testPreparations}) : super(key: key);

  final Tutor tutor;
  final List<LearnTopics> topics;
  final List<TestPreparation> testPreparations;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          // Information of tutor
          GestureDetector(
            onTap: () async {
              var check = await Navigator.pushNamed(
                  context, AppRouter.tutorDetailPage,
                  arguments: tutor.userId);
              context.read<TutorListBloc>().add(TutorListLoaded());
            },
            child: _TutorInformation(tutor: tutor, topics: topics, testPreparations: testPreparations,),
          ),

          // Icon button 'Favorite'
          _FavoriteButton(
            tutor: tutor,
          ),

          // Button 'Book'
          _BookButton(
            tutorId: (tutor.userId ?? ''),
          ),
        ],
      ),
    );
  }
}

class _TutorInformation extends StatelessWidget {
  const _TutorInformation({
    Key? key,
    required this.tutor, required this.topics, required this.testPreparations,
  }) : super(key: key);

  final Tutor tutor;
  final List<LearnTopics> topics;
  final List<TestPreparation> testPreparations;

  String getTutorAvatarName(String name) {
    final splitTutorName = name.split(' ');
    var result = '';
    for (var part in splitTutorName) {
      result += part[0];
    }
    return result;
  }

  String getSpecialtyName(String key) {
    for (var topic in topics) {
      if (topic.key == key) {
        return topic.name!;
      }
    }
    for (var testPreparation in testPreparations) {
      if (testPreparation.key == key) {
        return testPreparation.name!;
      }
    }
    return key;
  }

  @override
  Widget build(BuildContext context) {
    final List<String> specialities = tutor.specialties!.split(',');

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Information tutor
          Row(
            children: [
              // Avatar
              CachedNetworkImage(
                width: 48,
                height: 48,
                imageUrl: tutor.avatar ?? '',
                fit: BoxFit.fill,
                imageBuilder: (context, imageProvider) => CircleAvatar(
                  foregroundImage: imageProvider,
                ),
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(
                  value: downloadProgress.progress,
                ),
                errorWidget: (context, url, error) => CircleAvatar(
                    child: Text(getTutorAvatarName(tutor.name ?? ''))),
              ),
              const SizedBox(
                width: 8,
              ),
              // Infor
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name
                  Text(tutor.name!,
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
                      Text(tutor.country ?? ''),
                    ],
                  ),
                  // Rating star
                  StarRating(
                    initialRating: tutor.rating ?? 0,
                    ignoreGestures: true,
                    ratingUpgrade: (double rating) {},
                    itemSize: 16,
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          // Specialities
          Align(
            alignment: Alignment.centerLeft,
            child: Wrap(
              spacing: 8,
              children: specialities
                  .map(
                    (element) => Chip(
                      label: Text(getSpecialtyName(element)),
                    ),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          // Introduction
          Align(
            alignment: Alignment.centerLeft,
            child: Text(tutor.bio ?? ''),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

class _BookButton extends StatelessWidget {
  const _BookButton({
    Key? key,
    required this.tutorId,
  }) : super(key: key);

  final String tutorId;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      right: 8,
      bottom: 8,
      child: Align(
        alignment: Alignment.bottomRight,
        child: OutlinedButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, AppRouter.bookingPage,
                arguments: tutorId);
          },
          icon: const Icon(Icons.edit_calendar_outlined),
          label: const Text("Book"),
        ),
      ),
    );
  }
}

class _FavoriteButton extends StatelessWidget {
  const _FavoriteButton({
    Key? key,
    required this.tutor,
  }) : super(key: key);

  final Tutor tutor;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TutorListBloc, TutorListState>(
      builder: (context, state) {
        if (state.status == TutorListStatus.loadSuccess) {
          return Positioned.fill(
            top: 8,
            right: 8,
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  context.read<TutorListBloc>().add(
                      TutorListFavoriteButtonPressed(tutorId: tutor.userId!));
                },
                icon: tutor.isfavoritetutor == '1'
                    ? const Icon(
                        Icons.favorite_rounded,
                        color: Colors.red,
                      )
                    : const Icon(Icons.favorite_border_outlined),
              ),
            ),
          );
        }
        return Container();
      },
    );
  }
}
