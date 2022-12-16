import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:let_tutor/services/shared_preferences_service.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../data/models/tutor/feedbacks.dart';
import '../injector/injector.dart';
import 'widgets.dart';

class PersonReviewCard extends StatelessWidget {
  const PersonReviewCard({Key? key, required this.feedback}) : super(key: key);

  final Feedbacks feedback;

  @override
  Widget build(BuildContext context) {
    SharedPreferencesService service =
        Injector.instance<SharedPreferencesService>();
    timeago.setLocaleMessages(service.locale,
        service.locale == 'vi' ? timeago.ViMessages() : timeago.EnMessages());

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                    feedback.firstInfo?.avatar ?? '',
                  ),
                  radius: 24,
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(feedback.firstInfo?.name ?? '',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text(timeago.format(DateTime.parse(feedback.updatedAt ?? ''))),
                    StarRating(
                      initialRating: (feedback.rating ?? 0).toDouble(),
                      ignoreGestures: false,
                      ratingUpgrade: (double value) {},
                      itemSize: 16,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                feedback.content ?? ''
              ),
            ),
          ],
        ),
      ),
    );
  }
}
