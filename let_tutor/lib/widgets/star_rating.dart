import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StarRating extends StatelessWidget {
  const StarRating({Key? key, required this.initialRating, required this.ignoreGestures, required this.ratingUpgrade}) : super(key: key);

  final double initialRating;
  final bool ignoreGestures;
  final void Function(double) ratingUpgrade;

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      initialRating: initialRating,
      allowHalfRating: true,
      ratingWidget: RatingWidget (
          full: const Icon(Icons.star, color: Colors.amber,),
          half: const Icon(Icons.star_half, color: Colors.amber,),
          empty: const Icon(Icons.star, color: Colors.grey,)
      ),
      itemSize: 16,
      onRatingUpdate: ratingUpgrade,
      ignoreGestures: ignoreGestures,
    );
  }
}
