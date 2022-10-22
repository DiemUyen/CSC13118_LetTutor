import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:let_tutor/routes.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteGenerator.writingReviewPage);
              },
              icon: const Icon(FontAwesomeIcons.pen, size: 16,),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // List reviews from others
                Text('Reviews', style: Theme.of(context).textTheme.headline6,),
                const SizedBox(height: 8,),
                ListView.builder(
                 shrinkWrap: true,
                 scrollDirection: Axis.vertical,
                 itemCount: 10,
                 itemBuilder: (context, index) {
                   return const PersonReviewCard();
                 },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

