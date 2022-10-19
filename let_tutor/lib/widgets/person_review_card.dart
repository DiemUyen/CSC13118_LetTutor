import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:let_tutor/widgets/star_rating.dart';

class PersonReviewCard extends StatelessWidget {
  const PersonReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.brown.shade800,
                  child: const Text('AH'),
                ),
                const SizedBox(width: 8,),
                Column(
                  children: [
                    Text('Lavendaire'),
                    Text(DateFormat('dd/MM/yyyy').format(DateTime.now())),
                    StarRating(
                      initialRating: 4,
                      ignoreGestures: false,
                      ratingUpgrade: (double value) { },
                      itemSize: 16,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 8,),
            Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',),
          ],
        ),
      ),
    );
  }
}
