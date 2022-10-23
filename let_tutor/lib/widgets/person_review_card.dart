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
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar_student.jpg'),
                  radius: 40,
                ),
                const SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Lavendaire', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
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
