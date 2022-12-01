import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'widgets.dart';

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
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avartar_student.jpg'),
                  radius: 32,
                ),
                const SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Lavendaire', style: Theme.of(context).textTheme.titleMedium),
                    Text(DateFormat('dd/MM/yyyy').format(DateTime.now())),
                    StarRating(
                      initialRating: 4.5,
                      ignoreGestures: false,
                      ratingUpgrade: (double value) { },
                      itemSize: 16,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 8,),
            const Text('This is a very good teacher. I love teaching with her.',),
          ],
        ),
      ),
    );
  }
}
