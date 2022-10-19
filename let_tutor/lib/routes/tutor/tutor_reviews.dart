import 'package:flutter/material.dart';
import 'package:let_tutor/widgets/person_review_card.dart';
import 'package:let_tutor/widgets/star_rating.dart';

class TutorReviewPage extends StatefulWidget {
  const TutorReviewPage({Key? key}) : super(key: key);

  @override
  State<TutorReviewPage> createState() => _TutorReviewPageState();
}

class _TutorReviewPageState extends State<TutorReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: StarRating(
            initialRating: 0,
            ignoreGestures: false,
            ratingUpgrade: (double value) { setState(() {
              value = value;
            });},
            itemSize: 48,
          ),
        ),
        const SizedBox(height: 8,),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12)
          ),
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: TextField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter your reviews'
            ),
          ),
        ),
        const SizedBox(height: 8,),
        Center(child: ElevatedButton(onPressed: () { }, child: Text('Save'))),
        const SizedBox(height: 16,),
        Text('Reviews', style: Theme.of(context).textTheme.headline6,),
        const SizedBox(height: 8,),
        ListView.builder(
         shrinkWrap: true,
         scrollDirection: Axis.vertical,
         itemCount: 10,
         itemBuilder: (context, index) {
           return PersonReviewCard();
         },
        )
      ],
    );
  }
}

