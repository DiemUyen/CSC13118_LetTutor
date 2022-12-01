import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../router/app_router.dart';
import '../../widgets/widgets.dart';


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
                Navigator.pushNamed(context, AppRouter.writingReviewPage);
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
                Text('Reviews', style: Theme.of(context).textTheme.headlineSmall,),
                const SizedBox(height: 8,),
                ListView.builder(
                 shrinkWrap: true,
                 scrollDirection: Axis.vertical,
                 physics: const NeverScrollableScrollPhysics(),
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

