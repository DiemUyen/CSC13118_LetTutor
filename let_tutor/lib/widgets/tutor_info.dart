import 'package:flutter/material.dart';
import 'package:let_tutor/widgets/star_rating.dart';

class TutorInfo extends StatelessWidget {
  const TutorInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Avatar
        const CircleAvatar(
          backgroundImage: AssetImage('assets/avatar_tutor.jpg'),
          radius: 32,
        ),
        const SizedBox(width: 8,),
        // Infor
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Name
            Text("April", style: Theme.of(context).textTheme.headlineSmall),
            Row(
              children: const [
                // Icon flag

                // Nationality
                Text("France"),
              ],
            ),
            // Rating star
            StarRating(
              initialRating: 3.5,
              ignoreGestures: true,
              ratingUpgrade: (double rating) {},
              itemSize: 16,
            )
          ],
        )
      ],
    );
  }
}
